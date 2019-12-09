/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uncc.nbad;

import edu.uncc.nbad.User;
import edu.uncc.nbad.UserTable;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LeeS
 */
public class MembershipServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MembershipServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MembershipServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        String url;
        if (action.equals("login")) {

            url = "login.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        } else if (action.equals("signup")) {
            url = "Registration.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        } else {
            url = "Homepage.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        }
        //processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String url;

        PrintWriter out = response.getWriter();
        if (action.equals("login")) {
            url = "login.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        } else if (action.equals("signup")) {
            if (!isUserRegistrationValid(request, response)) {
                return;
            }
            
            String firstName = request.getParameter("firstname");
            String rank = request.getParameter("rank");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String userType = request.getParameter("userType");
            String userBio = request.getParameter("userBio");
            
            User user = new User();
            user.setFirstName(firstName);
            user.setRank(rank);
            user.setEmail(email);
            user.setPassword(password);
            user.setUserType(userType);
            user.setUserBio(userBio);

            UserTable.addRecord(user);
            session.setAttribute("user", user);
            url = "login.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        } else if (action.equals("loginVerification")) {
            String username = request.getParameter("email");
            String password = request.getParameter("password");
            User user = UserTable.getUser(username);
            if (user != null) {
                if (username.isEmpty() || !username.equals(user.getEmail())) {
                    //user does not exist or is empty
                    out.println("<p>Invalid username or password</p>");
                } else if (password == null || !password.equals(user.getPassword())) {
                    //Didn't provide a username, user does not exist or password is incorrect
                    out.println("<p>Invalid username or password</p>");
                } else {
                    session.setAttribute("user",user);

                    url = "membership?action=login";
                    getServletContext().getRequestDispatcher(url).forward(request, response);
                }
            } else {
                //user does not exist or is empty
                out.println("<p>Invalid username or password</p>");
            }
        } else {
            String userType = request.getParameter("userType");
            if(userType == "Student"){
            url = "studentHomepage.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
            }else
            url = "tutorHomepage.jsp";
            getServletContext().getRequestDispatcher(url).forward(request, response);
        }
       
    }
    
    private boolean isUserRegistrationValid(HttpServletRequest request, HttpServletResponse response) 
            throws IOException {
        boolean validName, validPassword, validEmail, validOverall;
        validName = validPassword = validEmail = validOverall = true;
        
        PrintWriter out = response.getWriter();
        
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("rank");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String password = request.getParameter("userType");
        String password = request.getParameter("userBio");
        
        Pattern pattern = Pattern.compile(".+@\\w+\\.\\w+");
        
        Matcher m = pattern.matcher(email);
        
        boolean sameEmail = emailExists(request, response);
        
        if (firstName.isEmpty() || lastName.isEmpty() ) {
            validName = false;
            out.println("<p>Invalid name</p>");
        }
        if (!m.find()) {
            validEmail = false;
            out.println("<p>Invalid email</p>");
        }
        if (sameEmail) {
            validEmail = false;
            out.println("<p>This email is already being used</p>");
        }
        if (password.length() < 8 ) {
            validPassword = false;
            out.println("<p>Password must be at least 8 characters long</p>");
        }
        if (!validName || !validEmail || !validPassword) {
            validOverall = false;
            out.println("<p><a href=\"membership?action=signup\" name=\"signup\">Return</a></p>");
        }
        return validOverall;
    }
    
    private boolean emailExists(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String path = getServletContext().getRealPath("/WEB-INF/users.txt");
        ArrayList<User>  users = UserTable.getUsers();
        boolean sameEmail = false;
        String email = request.getParameter("email");
        
        for (User user : users){
            if (email.equals(user.getEmail())) {
                sameEmail = true;
                break;
            }
        }
        
        return sameEmail;
    }
    
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
