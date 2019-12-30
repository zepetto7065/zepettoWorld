package kr.co.ca;

import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
@RequestMapping(value = "mail")
public class MailController {
 
  @Autowired
  private JavaMailSender mailSender;
  
  
  @RequestMapping(value = "contactMe", method = RequestMethod.GET)
	public String contectMe() {
		return "/contact_me";
	}

  	
 /**
 * @Date 2019.12.30
 * @author smyoo
 * 메일 전송 Gmail SMTP 이용한 mailSending
 */
@RequestMapping(value = "mailSending")
  public void mailSending(HttpServletRequest request) {
  
    String setfrom = "adioson@naver.com";         
    String fromMail  = request.getParameter("fromMail");    
    String title   = request.getParameter("title");     
    System.out.println("title 입니다. "+ title);
    String content = request.getParameter("content");    
    System.out.println("content 입니다. "+ content);

   
    try {
      MimeMessage message = mailSender.createMimeMessage();
      MimeMessageHelper messageHelper 
                        = new MimeMessageHelper(message, true, "UTF-8");
      messageHelper.setFrom(fromMail);  
      messageHelper.setTo(setfrom);    
      messageHelper.setSubject(title);
      messageHelper.setText(content + " :: from " + fromMail );
     
      mailSender.send(message);
    } catch(Exception e){
      System.out.println(e);
    }
  }

  
} 