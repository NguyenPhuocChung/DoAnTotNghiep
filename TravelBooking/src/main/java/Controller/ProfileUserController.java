/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ProfileUserDAO;
import Model.ProfileUserModel;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author nguye
 */
public class ProfileUserController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProfileUserController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProfileUserController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String path = request.getRequestURI();
        if (path.endsWith("/ProfileUserController/Profile")) {
            ProfileUserDAO aDao = new ProfileUserDAO();
            //truyen id nguoi dung vao day
            ProfileUserModel pro = aDao.getProfileUSer(6);
            HttpSession session = request.getSession();
            session.setAttribute("profile", pro);
            request.getRequestDispatcher("/Profile.jsp").forward(request, response);
        } else {
            if (path.endsWith("/ProfileUserController/ChangePasswordAdmin")) {
                request.getRequestDispatcher("/ChangePasswordAdmin.jsp").forward(request, response);
            } else if (path.endsWith("/ProfileUserController/OTP")) {
                request.getRequestDispatcher("/EnterCodeOTP.jsp").forward(request, response);
            } else if (path.endsWith("/ProfileUserController/ChangePassword")) {
                request.getRequestDispatcher("/ChangePasswordForget.jsp").forward(request, response);
            }
//            } else if (path.endsWith("/ProfileUserController/ManageContact")) {
//                request.getRequestDispatcher("/ManageContact.jsp").forward(request, response);
//            }
//            else if (path.endsWith("/ProfileUserController/ManageUser")) {
//                request.getRequestDispatcher("/ManageUser.jsp").forward(request, response);
//            }
//            else if (path.endsWith("/ProfileUserController/OrderList")) {
//                request.getRequestDispatcher("/OrderList.jsp").forward(request, response);
//            }
//            else if (path.endsWith("/ProfileUserController/DashBoard")) {
//                request.getRequestDispatcher("/DashBoard.jsp").forward(request, response);
//            }
//             else if (path.endsWith("/ProfileUserController/ShowOrderCancle")) {
//                request.getRequestDispatcher("/ShowOrderCancle.jsp").forward(request, response);
//            }
        }
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
        if (request.getParameter("btn_save") != null) {
            String userName = request.getParameter("userName");
            String birthday = request.getParameter("birthday");
            String email = request.getParameter("email");
            String avatar = request.getParameter("avatar");
            String description = request.getParameter("description");

        } else if (request.getParameter("btn_verify") != null) {
                response.sendRedirect("/ProfileUserController/ChangePassword");
        }
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
