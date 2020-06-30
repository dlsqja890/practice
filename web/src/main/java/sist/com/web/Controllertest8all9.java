package sist.com.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sist.com.dao.alltestDao;
import sist.com.model.alltest;
import sist.com.model.pagetest;
import twitter4j.Paging;

@Controller
public class Controllertest8all9 {

	
	@Resource(name="alltestDao")
	private alltestDao alltestDao;
	
	
	@RequestMapping(value="8all9.do")
	public String write(){
		
		return "mytest/8all9write";
	}
	
	@RequestMapping(value="8all9board.do")
	public String board(alltest bean,String writer,Model model){
		pagetest pagetest=new pagetest();
		int alltestcount = alltestDao.alltestcount();
		int pagespan=(alltestcount/pagetest.getShowpage())+1;
		
		if(bean.getPassword().equals("-1")){
			bean.setPassword(null);
		}
		System.out.println(bean);
		alltestDao.alltestinsert(bean);
		List<alltest> list =alltestDao.alltestwhole();						
		model.addAttribute("boardlist", list);					
		model.addAttribute("pagenumber", pagespan);
		return "mytest/8all9board";
	}
	@RequestMapping(value="paging.do")
	public String spanclick(String currentcount,Model model){
			
			pagetest pagetest=new pagetest();
		//	ModelAndView mv = new ModelAndView();
			HashMap<String, Integer> map= new HashMap<String, Integer>();
			int beginvalue=Integer.valueOf(currentcount)+((pagetest.getShowpage()-1)*(Integer.valueOf(currentcount)-1));
			map.put("begin", beginvalue);
			map.put("end", Integer.valueOf(currentcount)*pagetest.getShowpage());
			pagetest.setCurrentpage(map);
			List<alltest> list=alltestDao.pagetest(map);
			model.addAttribute("boardlist", list);
			System.out.println(list);
			int alltestcount = alltestDao.alltestcount();
			int pagespan=(alltestcount/pagetest.getShowpage())+1;
			
			model.addAttribute("pagenumber", pagespan);
		
			
			//	mv.setViewName("mytest/8all9board");
		//	mv.addObject("boardlist", list);
		//	mv.addObject("pagenumber", pagespan);
			return "mytest/8all9board";
			
	}
	@RequestMapping(value="blockk.do")
	public ModelAndView blocktest(String sign){
		pagetest pagetest=new pagetest();
		System.out.println(sign);
		int alltestcount = alltestDao.alltestcount();
		int pagespan=(alltestcount/pagetest.getShowpage())+1;
		if(sign==null ||Integer.valueOf(sign)<=0){
			sign="1";
					};
		int realsign=Integer.valueOf(sign);
		int beforepage=(pagetest.getCurrentblock()*(realsign-1))+1;
		int afterpage=pagetest.getCurrentblock()*realsign;
		if(afterpage>=pagespan){
			afterpage=pagespan ;
		}
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("pagespan", pagespan);
			map.put("before", beforepage);
			map.put("after", afterpage);
			map.put("sign", realsign);
			map.put("blockcount", pagetest.getCurrentblock());
	return new ModelAndView("jsonView",map);
		
	}
	public void paging(Model model){
		int showpage=5 ;
		int alltestcount = alltestDao.alltestcount();
		int pagespan=(alltestcount/showpage)+1;
		//int currentpage= ii +(showpage*(ii-1));
		model.addAttribute("pagenumber", pagespan);
		
	}
	@RequestMapping(value="8all9header.do")
	public String headerpage(@RequestParam String id,Model model){
		pagetest pagetest=new pagetest();
		int alltestcount = alltestDao.alltestcount();
	//	int pagespan=(alltestcount/pagetest.getShowpage())+1;
		int pagespan=pagetest.getCurrentblock();
		
		
		System.out.println(id);
		List<alltest> list =alltestDao.alltestwhole();
		model.addAttribute("boardlist", list);
		model.addAttribute("pagenumber", pagespan);
		return "mytest/8all9"+id;
	}
	
	
	
	
	
	
}
