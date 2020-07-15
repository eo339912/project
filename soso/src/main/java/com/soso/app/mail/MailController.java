package com.soso.app.mail;

import java.io.File;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soso.app.mapper.MemberMapper;
import com.soso.app.member.MemberVO;

@Controller
public class MailController {
	@Autowired
	private MemberMapper memberMapper;
	@Autowired
	private JavaMailSender mailSender;

	// mailSending 코드
	@RequestMapping("mailSending.do")
	public String mailSending(HttpServletRequest request) {

		String setfrom = "";
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
	}

	@RequestMapping("sendMailAttach.do")
	public String sendMailAttach(final MailVO vo) {
		// 회원목록조회
		MemberVO memberVO = new MemberVO();
		List<MemberVO> list = memberMapper.getMemberList(memberVO);
		// 회원목록for문
		MimeMessagePreparator[] preparators = new MimeMessagePreparator[list.size()];
		int i = 0;
		for (MemberVO member : list) {
			member.getEmail();
			preparators[i++] = new MimeMessagePreparator() {
				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
					final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
					helper.setFrom("zszs6363@gmail.com");
					helper.setTo(vo.getTomail());
					helper.setSubject(vo.getTitle());
					helper.setText(vo.getContent(), true);
					FileSystemResource file = new FileSystemResource(new File("D:/test/test.jpg"));
					helper.addAttachment("test.jpg", file);
				}
			};

			mailSender.send(preparators);

		}
		return "home";
	}
}
