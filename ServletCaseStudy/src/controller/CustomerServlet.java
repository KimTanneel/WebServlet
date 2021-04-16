package controller;

import model.Customer;
import service.CustomerServiceImpl;
import service.CustomerSevice;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.http.HttpResponse;
@WebServlet(name = "CustomerServlet",urlPatterns = "/customer")
public class CustomerServlet extends javax.servlet.http.HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
            case "create":
               createNewCustomer(request,response);

                break;
            case "update":
                break;
            case "insert":
        }
    }

    private void createNewCustomer(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id =request.getParameter("id");
        String type = request.getParameter("type_id");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String id_card = request.getParameter("id_card");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String email= request.getParameter("email");
        CustomerSevice customerSevice = new CustomerServiceImpl();
        customerSevice.CreateNewCustomer(new Customer(id,type,name,birthday,gender,id_card,phone,address,email));
        response.sendRedirect("/customer");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String action =request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":
                viewCreateCustomerForm(request,response);
                break;
            case "view":
                viewCustomerList(request,response);
            default:
                viewCustomerList(request,response);
                break;
        }
    }

    private void viewCreateCustomerForm(HttpServletRequest request, HttpServletResponse response) throws IOException {
            response.sendRedirect("/customer/create.jsp");
    }

    public void viewCustomerList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CustomerSevice customerSevice = new CustomerServiceImpl();
        request.setAttribute("listCustomer",customerSevice.findAll());
        request.getRequestDispatcher("/customer/view.jsp").forward(request,response);
    }
}
