package com.mydomain.portfolio.contact;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

/**
 * EmailClient is a class that allows for, simple
 * mail transfer protocol, messaging to the page
 * owner's email account. The object is package
 * private.
 *
 * @author  Created by doche on 6/10/2017.
 * @version %I%, %G%
 */
class EmailClient
{
    /**
     * This method sets the system's properties that
     * are needed for email, does authentication, forms
     * a message body, and sends out across the net.
     *
     * @param formData data indicating the sender
     */
    void sendEmail(String[] formData)
    {
        final String MY_EMAIL = "docherty.cameron@gmail.com";
        final String PASS     = "";

        // Get system properties
        Properties props = new Properties();

        // Setup mail server
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        // Setup default session
        Session session = Session.getInstance(props,
                new Authenticator(){
                    protected PasswordAuthentication getPasswordAuthentication(){
                        return new PasswordAuthentication(MY_EMAIL, PASS);
                    }
                });

        try
        {
            final int NAME  = 0;
            final int EMAIL = 1;
            final int SUBJ  = 2;
            final int MSG   = 3;

            // Create new message
            MimeMessage message = new MimeMessage(session);

            // Set From and To fields
            message.setFrom(new InternetAddress(formData[EMAIL]));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(MY_EMAIL));
            message.setSubject(formData[SUBJ]);
            message.setText(formData[NAME] + "\n" + formData[MSG]);
            message.setSentDate(new Date());
            Transport.send(message);
        }
        catch (MessagingException e)
        {
            System.out.println(e);
        }
    }
}
