package sist.com.web;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import sist.com.dao.DeliveryDao;
import sist.com.model.DeliCategory;
import sist.com.model.MemberBean;
import sist.com.model.couponbox;
import sist.com.model.mycouponlistbean;
import twitter4j.HttpResponse;

@RestController
public class DeliveryRestController {
	
	  @Resource(name="DeliveryDao")
	  private DeliveryDao dao;
	
	  @RequestMapping(value="idCheck.do")
	  public String idCheck(@RequestParam(value="id",required=true)String id){
		  String dbId=dao.idCheck(id)!=null?dao.idCheck(id):"";
		  if(dbId.equals(id)){
			  System.out.println("true");
			  return "true";
		  }
		  return "false";
	  }
	  @RequestMapping(value="couponlist.do")    /////////////(수정&추가)
	  public  List<sist.com.model.couponlist> couponlist(Model model){
		  System.out.println("ㅎㅇ");
		 List<sist.com.model.couponlist>list2=dao.couponlist();
		 model.addAttribute("couponlist", list2);
			 System.out.println(list2);
		  return list2;	 
		  }
	  
	  @RequestMapping(value="couponcheck.do")  /////////////(수정&추가)
	  public String couponcheck( int couponno ,String couponname,int ownerno,HttpSession session){
		  MemberBean bean =new MemberBean();
		  bean.setUserid((String)session.getAttribute("id"));
		  ///////////////////////////////
		 List<Integer> list=dao.couponcheckno((String)session.getAttribute("id"));

		 int countcoupon=dao.couponcount(couponno);
		 int downcoupon=dao.downcount(couponno);
		 if(countcoupon==downcoupon){
			 return "fullcount";   //쿠폰 모두 다운됐을때
		 }
		 for (int i = 0; i < list.size(); i++) {
			if(couponno==list.get(i)){
				return "false";    //쿠폰함에 쿠폰이 있을때
			}
		}
		  int userno=dao.selectMemberId(bean);
		  couponbox couponbox =new couponbox();
		  couponbox.setCouponno(couponno);
		  couponbox.setUserno(userno);
		  couponbox.setOwnerno(ownerno);
		  System.out.println(couponbox);
		  dao.couponinsert(couponbox);
		  return "true";     //쿠폰 정상적으로 다운
	  }
		@RequestMapping(value="couponpage.do" )    /////////////(수정&추가)
		public ModelAndView couponpage(HttpSession session){
			System.out.println(session.getAttribute("id"));		
			ModelAndView mv=new ModelAndView();
			MemberBean bean=new MemberBean();
			bean.setUserid((String)session.getAttribute("id"));
			int userno=dao.selectMemberId(bean);
			System.out.println(userno);
			List<mycouponlistbean> list = dao.mycouponlist(userno);
			System.out.println(list);
	
			mv.addObject("mycouponlist", list);
			mv.setViewName("DeliveryProject/coupon");
			
			return  mv;
		}
		@RequestMapping(value="modify.do")   /////////////(수정&추가)
		public ModelAndView modifypage(HttpSession session){
			ModelAndView mv = new ModelAndView();
			String id=(String)session.getAttribute("id");
			List<MemberBean>list=dao.mydetailinfo(id);
			System.out.println("모디파이 환영");
			mv.addObject("mydetailinfo", list);
			mv.setViewName("DeliveryProject/modify");
			
			return mv;
		}  
		@RequestMapping(value="zzimpage.do")     /////////////(수정&추가)
		public ModelAndView zzimpage(HttpSession session){
			ModelAndView mv = new ModelAndView();
			List<DeliCategory> list=dao.listzzim(String.valueOf(session.getAttribute("id")));
			System.out.println(list);
			//session.setAttribute("list", list);
			System.out.println("찜페이지 환영");
			mv.addObject("list", list);
			mv.setViewName("DeliveryProject/zzim");
			
			return mv;
		}
		@RequestMapping(value="currentpw.do")     /////////////(수정&추가)
		public String currentpw(String current,HttpSession session){
			System.out.println(current);
			String pw=dao.loginProcess((String)session.getAttribute("id"));
			System.out.println(pw+" "+current);
			if(pw.equals(current)){
				
				return "true";
			}
			
			return "false";
		}
		@RequestMapping(value="memberdelete.do")    /////////////(수정&추가)
		  public String memberdelete(HttpSession session){
			//  bean.setUserbirth(userbirth);
			  dao.memberdelete((String)session.getAttribute("id"));
			//  System.out.println("delete 완료");
			// System.out.println((String)session.getAttribute("id"));
			  
			  return "delete";
		  }
			@RequestMapping(value="zzimdelete.do")    /////////////(수정&추가)
			public ModelAndView zzimdelete(int ownerno,HttpSession session){
				System.out.println("찜 삭제");
				session.getAttribute("userno");
				HashMap<String, Integer>map = new HashMap<String, Integer>();
				map.put("ownerno",(Integer)ownerno);
				map.put("userno",(Integer)session.getAttribute("userno"));
				System.out.println(map.get("ownerno"));
				System.out.println(map.get("userno"));
				dao.deletezzim(map);
				List<DeliCategory> list=dao.listzzim(String.valueOf(session.getAttribute("id")));
				ModelAndView mv=new ModelAndView();
				System.out.println(ownerno);
				mv.addObject("list", list);
				mv.setViewName("DeliveryProject/zzim");
				//mv.setViewName("DeliveryProject/myinfo");
				return mv;
			}
			@RequestMapping(value="zzimcompare.do")   /////////////(수정&추가)
			public String zzimcompare(int storeno,HttpSession session){
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("userid", (String)session.getAttribute("id"));
				map.put("ownerno", storeno);
				String count=String.valueOf(dao.zzimcompare(map));
				System.out.println("count ="+count);
				
				if(count.equals("1")){
					return "true";
				}
				
				return "false";
			}

}
