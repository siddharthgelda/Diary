package com.helper;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.util.ByteArrayDataSource;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Date;
import java.util.Properties;

import static com.Constants.MAIL_BODY;

@Service("emailService")
public class EmailHelper {
    @Autowired
    private JavaMailSender mailSender;
    public  void sendCaseListEmail(String mailData) {
        try {
            Properties props = new Properties();
            Session session = Session.getDefaultInstance(props, null);
            MimeMessage mimeMessage = new MimeMessage(session,new ByteArrayInputStream(mailData.getBytes()));

            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
            helper.addTo(new InternetAddress("sgelda7@gmail.com"));
            helper.setFrom("siddugelda@outlook.com");
            helper.setText(MAIL_BODY);
            // write a line
            Path tempFile = Files.createTempFile("caseList", "csv");
            System.out.println(tempFile);

            Files.write(tempFile, mailData.getBytes(StandardCharsets.UTF_8));
            File f=new File(tempFile.toUri());
            FileSystemResource file = new FileSystemResource(f);
            helper.addAttachment("caselist.csv", file);
            mailSender.send(mimeMessage);
        }
        catch (Exception ex) {
            // simply log it and go on...
            System.err.println(ex.getMessage());
        }
    }
}
