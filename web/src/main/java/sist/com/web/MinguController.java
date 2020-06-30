package sist.com.web;


import java.io.File;
import java.text.NumberFormat.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import sist.com.dao.MinguDao;
import sist.com.model.mingutest;
import twitter4j.RequestMethod;


@Controller
public class MinguController {

	@Resource(name="MinguDao")
	private MinguDao mingudao;
	
	
	@RequestMapping(value="mingming.do")
	public String dasd(Model model){
		model.addAttribute("test", "얍얍");
		System.out.println("여기까지 오냐 ??");
		System.out.println(mingudao.ddddd());
		List<mingutest> list= new ArrayList<mingutest>();
		list=mingudao.mingminglist();
		System.out.println(list);
		model.addAttribute("mingulist", list);
		return "seoul/megatest";
	}
	
	@RequestMapping(value="mingtest.do")
	public @ResponseBody List<mingutest> doc(){
		
		HashMap<Object, List<Object>> map = new HashMap<Object, List<Object>>();
		List<mingutest> list =new ArrayList<mingutest>();
		list=mingudao.mingminglist();
		List<Object> list3 =new ArrayList<Object>();
		//System.out.println(mingudao.mingminglist().get(0).getId());
		mingutest mingutest=new mingutest();
		/*for (int i = 0; i < list.size(); i++) {
			
			list3.add(mingudao.mingminglist().get(i).getId());
			list3.add(mingudao.mingminglist().get(i).getLife());
			list3.add(mingudao.mingminglist().get(i).getBirthlate());
			list3.add(mingudao.mingminglist().get(i).getArea());
			list3.add(mingudao.mingminglist().get(i).getPopulation());
		}*/
		
		/*for (int i = 0; i < list3.size(); i++) {
			System.out.println(list3.get(i));
		}*/
	/*	try {
			Object obj=mingutest;
			for(java.lang.reflect.Field field :obj.getClass().getDeclaredFields()){
				field.setAccessible(true);
				System.out.println(field.getName());
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}*/
		
		List<Object> list2 = new ArrayList<Object>(); 
		for (int i = 0; i < list.size(); i++) {
			list2.add(i, mingudao.mingminglist().get(i).getId());
		}
	System.out.println(list);
		map.put("id", list2);
		//map.put("id", list.get(i));
		return list;
	}
	
	

	
	
	@RestController
	public class mingutest2{
		
		@RequestMapping(value="arraydata.do")
		public List arraydata(){
		//	String[] data3={"ID","기대수명","출산율","지역"};
			List<mingutest> list2=new ArrayList<mingutest>();
			list2=mingudao.mingminglist();
			String data[][]={{"123"},{"456"},{"789"}};
			/*String data[]=list2.toArray(new String[list2.size()]);
			for (int i = 0; i < data.length; i++) {
				System.out.println(data[i]);
			}*/
			//System.out.println(list2.get(0).toString());
			//data[0][0]=list2.get(0).toString();
//			for (int k = 0; k < list2.size(); k++) {
//				
//				
//				for (int i = 0; i < data.length; i++) {
//					data[i][0]=list2.get(i).getArea();
//				}
//			}
		/*	String data[]=new String[list2.size()+1];
			for (int i = 0; i < data.length-1; i++) {
				data[i+1]=list2.get(i).toString();
			}
			for (int i = 0; i < data.length; i++) {
				System.out.println(data[i]);
			}*/
			System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
			return list2;
		}
		
	}
	
}
