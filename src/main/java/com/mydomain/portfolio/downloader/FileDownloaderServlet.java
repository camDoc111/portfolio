package com.mydomain.portfolio.downloader;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.io.*;


/**
 * FileDownloadServlet serves either a PDF or
 * a Docx file, and forces the browser to
 * download it.
 *
 * @author Created by doche on 6/14/2017.
 */
@WebServlet(name = "FileDownloaderServlet")
public class FileDownloaderServlet extends HttpServlet
{

    /**
     * This method is left unused because FileDownloaderServlet
     * only uses HTTP GET request when called upon.
     *
     * Because of the location of the files, Maven builds them
     * into the project class path, so reading in as type File
     * will not work.
     *
     * @param request  Takes in an HTTPServlet request
     * @param response Takes in an HTTPServlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }
    /**
     * This method receives a request to download one
     * Of a few files in project file system. The request parameters are analyzed
     * and sent to the EmailClient object.
     *
     * @param request  Takes in an HTTPServlet request
     * @param response Takes in an HTTPServlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        final String RESUME_NAME = "CameronDochertyResume";
        final String EX_CMS_NAME = "annotatedWordpressSite";
        String mimeType   = "";
        String fileName   = "";
        String fileAlias  = "";
        String fileServed = "";

        fileName = request.getParameter("fileDownloaded");

        try
        {
            // Check for empty request parameter
            if(fileName.equals(""))
            {
                throw new ServletException("File Name cannot be null or empty");
            }

            // Chooses appropriate file base on request param
            switch(fileName)
            {
                case "resumeDownloadDOCX":
                    fileAlias  = "vnd.openxmlformats-officedocument" +
                                 ".wordprocessingml.document";
                    mimeType   = ".docx";
                    fileServed = RESUME_NAME + mimeType;
                break;
                case "resumeDownloadPDF":
                    fileAlias = "pdf";
                    mimeType = ".pdf";
                    fileServed = RESUME_NAME + mimeType;
                    break;
                case "wordpressDownloadPDF":
                    fileAlias = "pdf";
                    mimeType = ".pdf";
                    fileServed = EX_CMS_NAME + mimeType;
                    break;
            }
                // Optionally get browser specifics
                // String browserType = request.getHeader("User-Agent");

                // ServletOutputStream  output = aResponse.getOutputStream();
                // InputStream input = getServletContext().getResourceAsStream("test.pdf");
                // byte[] buffer = new byte[2048];
                // int bytesRead;
                // while ((bytesRead = input.read(buffer)) != -1) {
                //    output.write(buffer, 0, bytesRead);
                // }

                // response.setHeader("Content-Length", String.valueOf(new File(path).length()));

                // Get context path and stream file
                ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
                InputStream is = classLoader.getResourceAsStream(fileServed);

                // Set new response type/headers
                response.setContentType("application/" + fileAlias);
                response.setHeader("Content-Disposition", "attachment; filename=\"" + fileServed + "\"");
                response.setContentLength(is.available());

                final int EOF = -1;
                int bytesRead;
                while( ( bytesRead = is.read() ) != EOF )
                {
                    response.getWriter().write(bytesRead);
                }
                // is.close();
        }
        catch(NullPointerException e)
        {
            System.err.println("File does not exist[" + fileName + "]" + e);
        }
        catch(ServletException e)
        {
            System.err.println("Error in download servlet: " + e);
        }
        catch(IOException e)
        {
            System.err.println("Error while trying to open file[" + fileName + "]" + e);
        }
        catch(Exception e)
        {
            System.err.println("Error while downloading file[" + fileName + "]" + e);
        }
    }
}
