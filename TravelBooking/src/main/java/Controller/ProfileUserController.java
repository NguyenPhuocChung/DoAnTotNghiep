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
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.sql.Date;

/**
 *
 * @author nguye
 */
@MultipartConfig
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
            ProfileUserModel pro = aDao.getProfileUSer(1);
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
            try {
                String userName = request.getParameter("userName");
                Date birthday = Date.valueOf(request.getParameter("birthday"));
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                int gender = Integer.parseInt(request.getParameter("gender"));
                String avatar = request.getParameter("avatar");
                Part filePart = request.getPart("avatar");
                if (filePart != null) {
                    String fileName = getFileName(filePart);
                    if (fileName != null && !fileName.isEmpty()) {
                        // Định nghĩa thư mục bạn muốn lưu ảnh được tải lên
                        String uploadDirectory = getServletContext().getRealPath("/img");
                        String uploadPath = uploadDirectory + File.separator + fileName;

                        // Lưu file vào thư mục đã chỉ định
                        filePart.write(uploadPath);

                        // Thiết lập tên ảnh (đường dẫn tương đối) trong cơ sở dữ liệu
                        avatar = fileName;
                    }
                }
                String description = request.getParameter("description");
                String address = request.getParameter("address");
                ProfileUserModel pro = new ProfileUserModel(userName, email, phone, avatar, birthday, gender, address, description);
                ProfileUserDAO pDao = new ProfileUserDAO();
                ProfileUserModel pm = pDao.updateProfile(pro, 1);

                if (pm == null) {
                    response.sendRedirect("/ProfileUserController/Profile");
                } else {
                    response.sendRedirect("/ProfileUserController/Profile");
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("/ProfileUserController/Profile");
            }

        } else if (request.getParameter("btn_verify") != null) {
            response.sendRedirect("/ProfileUserController/ChangePassword");
        }
    }

    private String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
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
