package sist.com.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.MailSender;
import org.apache.commons.digester.RegexMatcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sist.com.dao.DeliveryDao;
import sist.com.model.DeliCategory;
import sist.com.model.DeliMenu;
import sist.com.model.MemberBean;
import sist.com.model.couponbean;
import sist.com.model.couponbox;
import sist.com.model.zzimbean;

@Controller
public class DeliveryController {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Resource(name="DeliveryDao")
	private DeliveryDao dao;
	
	@RequestMapping(value="mody.do")
	public String modyinfo(){
		
		
		System.out.println("컨트롤러로 온거 환영 ");
		
		
		return "DeliveryProject/modify";
	}
	@RequestMapping(value="category.do")
	public Object listjsp(String category,HttpSession session,String seachvalue,String ownermenucate){
	
		ModelAndView modelAndView =new ModelAndView();
		List<DeliCategory> list=new ArrayList<DeliCategory>();
		list.addAll(dao.getcate(category));
		if(seachvalue.length()==0){
			session.setAttribute("seachvalue", "");
		}
		modelAndView.addObject("deli", list);
		modelAndView.addObject("seachss", 2);
		if(seachvalue.length()>0){	
			String temp=(String)session.getAttribute("seachvalue");
			session.setAttribute("ownermenucate", category);
			String temp2=(String)session.getAttribute("ownermenucate");
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("addr", temp); 
			map.put("ownermenucate", temp2);
			
			list=dao.seachaddrval(map);
			modelAndView.addObject("deli", list);
		}
System.out.println("ㅎㅇ");
		modelAndView.addObject("category", category);
		modelAndView.setViewName("DeliveryProject/list");
		 
		return modelAndView;
		
	}
	@RequestMapping(value="mypage.do" )          /////////////(수정)
	public String mypage(Model model, HttpSession session,RedirectAttributes redirectAttributes){
		System.out.println( session.getAttribute("id"));
		List<DeliCategory> list=dao.listzzim(String.valueOf(session.getAttribute("id")));
		MemberBean bean =new MemberBean();
		bean.setUserid((String)session.getAttribute("id"));
		int userno=dao.selectMemberId(bean);
		System.out.println(list);
		
		String couponcnt=String.valueOf(dao.mycouponcount(userno));
		
		System.out.println(couponcnt);
		session.setAttribute("countcoupon", couponcnt);
	//	session.setAttribute("countcoupon", couponcnt);
		session.setAttribute("list", list);
	
		return "redirect:/DeliveryProject/myinfo.jsp";
		
	}
/*	@RequestMapping(value="mypage2.do" )
	public String mypage2(RedirectAttributes attributes){
		System.out.println(attributes.getFlashAttributes());
	
		return "DeliveryProject/myinfo";
	}*/

	
	
	@RequestMapping(value="login.do")
	public String login(HttpSession session, String userid){
		session.setAttribute("id", userid);
		//System.out.println(userid);
		return "DeliveryProject/DelieveryMain";
		
	}
	
	
	@RequestMapping(value="zzim.do")   /////////////(수정)
	public void getzzim(zzimbean bean,int storeno,String userid){
		System.out.println(storeno);
	//	System.out.println(userid);
		System.out.println("찜인서트");
		System.out.println(bean);
		dao.zziminsert(bean);
		
		
	}
	@RequestMapping(value="seach.do")
	public String seach(String seachvalue,Model model,HttpSession session,String ownermenucate ){
		String seach=seachvalue.substring(0,2);
		session.setAttribute("seachvalue", seach);
		session.setAttribute("ownermenucate", ownermenucate);
		String temp=(String)session.getAttribute("seachvalue");
		String temp2=(String)session.getAttribute("ownermenucate");
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("addr", temp); 
		map.put("ownermenucate", temp2);
		
		List<DeliCategory>list=dao.seachaddrval(map);
		if(ownermenucate!=null){
			
			list=dao.seachval(temp);
		}
		
		model.addAttribute("seachss", 1);
		model.addAttribute("seachlist", list);
		return "DeliveryProject/list";
		
	}
	@RequestMapping(value="menulist.do")
	public String menulist(Model model,int ownerno, String category,HttpSession session,HttpSession session2) {
		System.out.println(ownerno);
		System.out.println(category);
		
		List<DeliMenu> menu=new ArrayList<DeliMenu>();
		List<DeliMenu> menuKind=new ArrayList<DeliMenu>();
		menu.addAll(dao.getmenu(ownerno, category));
		menuKind.addAll(dao.getMenukind(ownerno, category));
		
		System.out.println(menuKind);
		
		
		model.addAttribute("menu", menu);
		model.addAttribute("menuKind",menuKind);
		session.setAttribute("menu", menu);
		session2.setAttribute("menuKind",menuKind);
		model.addAttribute("cate", dao.storeInfo(ownerno));
		
		return "DeliveryProject/MenuList";
		
	}
	
	  @RequestMapping(value="register.do")
	  public String memberJoin(@ModelAttribute MemberBean bean,HttpSession session){
		  dao.insertMemberInfo(bean);
		  int no=dao.selectMemberId(bean);
		  bean.setUserno(no);
		  
		  String setfrom = "dlsqjatm@gmail.com";         
		  String tomail  = bean.getUserid();     // 
		  String title   = "Welcom RICHURO DELIEVERY!";      //
		  StringBuffer content = new StringBuffer();    // 
		   
		  content.append("<h1>Hello, It's RICHURO DELIVERY!</h1>").append("<p>Please click <a href='http://localhost:8085/web/confirm.do?no="+bean.getUserno()+"'> this URL</a></p>").append("<p>Thank you.<br><br> From RICHURO DELIVERY</p>");
		    
		  try {
			  MimeMessage message = mailSender.createMimeMessage();
		    MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		      
		      System.out.println("gd");
		    messageHelper.setFrom(setfrom);  
		    messageHelper.setTo(tomail);     
		    messageHelper.setSubject(title); 
		    messageHelper.setText(content.toString(),true); 
		     
		    mailSender.send(message);
		  } catch(Exception e){
		    System.out.println(e);
		  }
		   
		  return "redirect:/DeliveryProject/login.jsp";
	  }
	  @RequestMapping(value="confirm.do")
	  public String confirm(@RequestParam(value="no",required=false)int no){
		  dao.updateConfirm(no);
		  return "redirect:/DeliveryProject/confirm.jsp";
	  }
	  
	  @RequestMapping(value="deliveryLogin.do")
	  public String loginProcess(Model model,@RequestParam(value="id",required=true)String id,@RequestParam(value="pass",required=true)String pass,HttpSession session){
		  String dbPw=dao.loginProcess(id)!=null?dao.loginProcess(id):"";
		  String confirm=dao.confirmProcess(id)!=null?dao.confirmProcess(id):"";
		  MemberBean bean=new MemberBean();      /////////////(수정&추가)
		  bean.setUserid(id);						/////////////(수정&추가)
		  int userno=dao.selectMemberId(bean);			/////////////(수정&추가)
		  if(confirm.equals("true")){
			  if(pass.equals(dbPw)){
				  System.out.println("gg");
				  String name=dao.selectMemberName(id);
				  session.setAttribute("name", name);
				//  session.setMaxInactiveInterval(60*2);
				  session.setAttribute("id", id);
				  session.setAttribute("userno", userno);			/////////////(수정&추가)
				  return "redirect:DeliveryProject/DelieveryMain.jsp";
			  }else if(dbPw==""){
				  model.addAttribute("state", "none");
				  return "DeliveryProject/login";
			  }else if(!pass.equals(dbPw)){
				  model.addAttribute("state","fail");
				  return "DeliveryProject/login";
			  }
		  }else if(confirm.equals("false")){
			  model.addAttribute("state","notconfirm");
			  return "DeliveryProject/login";
		  }
		  
		  return "";
	  }
	  
	  @RequestMapping(value="deliveryLogin2.do")
	  public String loginProcess2(@RequestParam(value="name",required=true)String name,HttpSession session,String id){
		  session.setAttribute("name", name);
		  
		 // session.setMaxInactiveInterval(60*2);     /////////////(수정&추가) 주석처리해놈 ...name id ,유지
		  session.setAttribute("id", id);
		  return "redirect:DeliveryProject/DelieveryMain.jsp";
	  }
	 
	  @RequestMapping(value="logoutProcess.do")
	  public String logoutProcess(HttpSession session){
		  session.setMaxInactiveInterval(0);
		  session.invalidate();
	      return "redirect:DeliveryProject/DelieveryMain.jsp";
	  }
	  
	  @RequestMapping(value="test.do")
	  public String logoutProcess(){
		 
	      return "DeliveryProject/list";
	  }
	  //infoupdate
	  @RequestMapping(value="infoupdate.do")   /////////////(수정&추가)
	  public String infoupdate(MemberBean bean,String userbirth){
		  System.out.println(bean);

		//  bean.setUserbirth(userbirth);


		  System.out.println(bean);
		// System.out.println((String)session.getAttribute("id"));
		 dao.infoupdate(bean);
		  
		  return "redirect:DeliveryProject/DelieveryMain.jsp";
	  }
	
	 
	
	
	
	
	
	
	
}
