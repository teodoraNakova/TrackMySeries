package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.dao.UserDAO;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		try {
			// get parameters
			String userName = req.getParameter("username");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			String confirmPassword = req.getParameter("confirm password");
			String country = req.getParameter("country");
			int age = Integer.parseInt(req.getParameter("age"));
			HashMap<String, User> users = UserDAO.getInstance().getAllUsers();
			String error = "";
			if (!users.containsKey(userName)) {
				// validate parameters
				boolean validUserName = validateUserName(userName);
				boolean validEmail = validateEmail(email);
				if(!validEmail) {
					error = "Email is already registerd";
					redirect(req, resp, error);	
					return;
				}
				boolean validPassword = validatePassword(password);
				if(!validPassword){
					error="Incorrect password";
					redirect(req, resp, error);
					return;
				}
				if(!password.equals(confirmPassword)) {
					error = "Password not confirmed";
					redirect(req, resp, error);
					return;
				}
				boolean validAge = validateAge(Integer.valueOf(age));
				// if the data is not valid //if the data is valid
				if (validUserName && validEmail && validPassword && validAge
						&& password.equals(confirmPassword)) {
					User u = new User(userName, age, country, email, password);
					try {
						UserDAO.getInstance().addUser(u);
					} catch (SQLException e) {
						System.out.println("Error in adding user "
								+ e.getMessage());
					}
					resp.sendRedirect("login.jsp");
				} else {
					resp.sendRedirect("registerFail.jsp");
				}
			} else {
				error = "Username already exsist";
				redirect(req, resp, error);
			}
		} catch (SQLException e1) {
			System.out.println("Error in getting users -" + e1.getMessage());
		} catch (Exception e) {
			System.out.println(e.getMessage());
			RequestDispatcher rd = req.getRequestDispatcher("error500.html");
			rd.forward(req, resp);
		}
	}
	
	private void redirect(HttpServletRequest req, HttpServletResponse resp, String error) {
		req.getSession().setAttribute("error", error);
		try {
			resp.sendRedirect("registerFail.jsp");
		} catch (IOException e) {
			e.getStackTrace();
			RequestDispatcher rd = req.getRequestDispatcher("error500.html");
			try {
				rd.forward(req, resp);
			} catch (ServletException | IOException e1) {
				e1.printStackTrace();
			}
		}
	}

	private boolean validateUserName(String userName) {
		if (isNullOrEmpty(userName)) {
			return false;
		}
		return true;
	}

	private boolean validateEmail(String email) {
		Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile(
				"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
				Pattern.CASE_INSENSITIVE);
		Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(email);
		boolean isTaken = false;
		try {
			isTaken = UserDAO.getInstance().isEmailFree(email);
		} catch (SQLException e) {
			System.out.println("Problem validating email.");
		}
		return matcher.find() && isTaken;
	}

	private boolean validatePassword(String password) {
		Pattern VALID_PASSWORD_REGEX = Pattern
				.compile("(?=.*[0-9])(?=.*[A-Z])(?=\\S+$).{8,}");
		// at least one digit,at least one upper case letter, at least 8
		// characters, no whitespaces
		Matcher matcher = VALID_PASSWORD_REGEX.matcher(password);
		return matcher.find();
	}

	private boolean validateAge(int age) {
		if (age > 0 && age < 120) {
			return true;
		}
		return false;
	}

	private boolean isNullOrEmpty(String text) {
		return text.isEmpty() || text == null;
	}
}
