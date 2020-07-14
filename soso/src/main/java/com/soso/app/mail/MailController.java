package com.soso.app.mail;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MailController {

	@Autowired
	private JavaMailSender mailSender;

	// mailSending 코드
	@RequestMapping("mailSending.do")
	public String mailSending(HttpServletRequest request) {

		String setfrom = " ";
		String tomail = request.getParameter("tomail"); // 받는 사람 이메일
		String title = request.getParameter("title"); // 제목
		String content = request.getParameter("content"); // 내용

		try {    
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setFrom("zszs6363@gmail.com"); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용
			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

		return "emp/empList";
		
		
		
		
		/*
		 * 
		 * message.addRecipients(Message.RecipientType.TO, new
		 * InternetAddress("ktko@ktko.com"));
		 * 
		 * InternetAddress[] addArray = new InternetAddress[5]; addArray[0] = new
		 * InternetAddress("ktko0@ktko0.com"); addArray[1] = new
		 * InternetAddress("ktko1@ktko1.com"); addArray[2] = new
		 * InternetAddress("ktko2@ktko2.com"); addArray[3] = new
		 * InternetAddress("ktko3@ktko3.com"); addArray[4] = new
		 * InternetAddress("ktko4@ktko4.com");
		 * message.addRecipients(Message.RecipientType.TO, addArray);
		 */
		 
	}
}