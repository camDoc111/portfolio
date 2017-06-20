package com.mydomain.portfolio.contact;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * ContactFormServlet form request servlet
 *
 * This servlet receives a request to email the
 * page owner. The request parameters are analyzed
 * and sent to the EmailClient object.
 *
 * @author Created by doche on 6/10/2017.
 */
@WebServlet(name = "ContactFormServlet")
public class ContactFormServlet extends HttpServlet
{
    /**
     * This method receives a request to email the
     * page owner. The request parameters are analyzed
     * and sent to the EmailClient object.
     *
     * @param request  Takes in an HTTPServlet request
     * @param response Takes in an HTTPServlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        // Get form parameters, then compose an email

        // Form fields
        final int NUM_FIELDS = 4;
        final String[] FIELDS = {"name", "email", "subject", "message"};
        String[] fieldsData = new String[NUM_FIELDS];


        // To debug in GlassFish window (easy to find ect)
        System.out.println("==================================");

        for(int index = 0; index < NUM_FIELDS; index++)
        {
            fieldsData[index] = request.getParameter(FIELDS[index]);

            System.out.println("FieldData: " + fieldsData[index]);
        }

        EmailClient emailClient = new EmailClient();

        emailClient.sendEmail(fieldsData);
    }

    /**
     * This method is left unused because it only serves
     * POST to email accounts.
     *
     * @param request  Takes in an HTTPServlet request
     * @param response Takes in an HTTPServlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }
}
