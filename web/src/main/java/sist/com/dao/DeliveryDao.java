package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.model.DeliCategory;
import sist.com.model.DeliMenu;
import sist.com.model.MemberBean;
import sist.com.model.couponbean;
import sist.com.model.couponbox;
import sist.com.model.mycouponlistbean;
import sist.com.model.zzimbean;

@Repository(value="DeliveryDao")
public class DeliveryDao extends SqlSessionDaoSupport{

	 @Autowired
		public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			// TODO Auto-generated method stub
			super.setSqlSessionFactory(sqlSessionFactory);
		}
	
	 public List<DeliCategory> getcate(String menucate){
		 
		 
		 
		 return this.getSqlSession().selectList("menucate", menucate);
	 }
	 
	 public void zziminsert(zzimbean bean){
		 
		 this.getSqlSession().insert("zziminsert", bean);
		 System.out.println("success");
	 }
	 public List<DeliCategory> listzzim(String id){
		 System.out.println(id);
		 return  this.getSqlSession().selectList("listzzim", id);
	 }
	public List<DeliCategory> seachval(String seachvalue){
		
		return this.getSqlSession().selectList("seachval", seachvalue);
	}
public List<DeliCategory> seachaddrval(HashMap<String, String>map){
		
		return this.getSqlSession().selectList("seachaddrval", map);
	}
public List<DeliCategory> seachwholeval(){
	
	return this.getSqlSession().selectList("seachwholeval");
}


public List<DeliCategory> storeInfo(int ownerno){
	 return this.getSqlSession().selectList("storeInfo",ownerno);
}

public List<DeliMenu> getmenu(int ownerno,String category){
	 System.out.println("category="+category);
	 if(category.equals("치킨")) {
			return this.getSqlSession().selectList("chicken",ownerno);
		}else if (category.equals("치킨")) {
			return this.getSqlSession().selectList("pizza",ownerno);
		}else if(category.equals("피자")) {
			return this.getSqlSession().selectList("boonsik",ownerno);
		}else if(category.equals("중식")){
			return this.getSqlSession().selectList("China",ownerno);
		}else if(category.equals("한식")) {
			return this.getSqlSession().selectList("Korea",ownerno);
		}else if(category.equals("보쌈/족발")){
			return this.getSqlSession().selectList("Pig",ownerno);
		}else if(category.equals("일식")) {
			return this.getSqlSession().selectList("japan",ownerno);
		} 
	 return null;
}
public List<DeliMenu> getMenukind(int ownerno,String category){
	 if(category.equals("치킨")) {
			return this.getSqlSession().selectList("chickenKind",ownerno);
		}else if (category.equals("치킨")) {
			return this.getSqlSession().selectList("pizzaKind",ownerno);
		}else if(category.equals("피자")) {
			return this.getSqlSession().selectList("boonsikKind",ownerno);
		}else if(category.equals("분식")){
			return this.getSqlSession().selectList("ChinaKind",ownerno);
		}else if(category.equals("한식")) {
			return this.getSqlSession().selectList("KoreaKind",ownerno);
		}else if(category.equals("보쌈/족발")) {
			return this.getSqlSession().selectList("PigKind",ownerno);
		}else if(category.equals("일식")) {
			return this.getSqlSession().selectList("japanKind",ownerno);
		} 
	 return null;
}
public void insertMemberInfo(MemberBean bean){
	this.getSqlSession().insert("insertMemberInfo",bean);
} 

public int selectMemberId(MemberBean bean){
	return this.getSqlSession().selectOne("selectMemberId",bean);
}

public void updateConfirm(int no){
	this.getSqlSession().update("updateConfirm",no);
}

public String idCheck(String id){
	return this.getSqlSession().selectOne("idCheck",id);
}

public String loginProcess(String id){
	return this.getSqlSession().selectOne("loginProcess",id);
}

public String selectMemberName(String id){
	return this.getSqlSession().selectOne("selectMemberName",id);
}

public String confirmProcess(String id){
	return this.getSqlSession().selectOne("confirmProcess",id);
}




///////////////////////////////////////인범 (추가)↓↓↓↓↓↓↓

public List<sist.com.model.couponlist> couponlist(){
	return this.getSqlSession().selectList("couponlist");
}
//couponboxinsert
public void couponinsert(couponbox bean){
	System.out.println("success");
	this.getSqlSession().insert("couponboxinsert", bean);
}
public List<Integer> couponcheckno(String id){
	return this.getSqlSession().selectList("couponcheck", id);
}
public List<Object> couponinfo(HashMap<String, Object> map){
	return this.getSqlSession().selectList("couponlist", map);
}
public List<mycouponlistbean> mycouponlist(int no){
	return this.getSqlSession().selectList("mycouponlist", no);
}
//couponcount
//downcount
public int couponcount(int no){
	return this.getSqlSession().selectOne("couponcount", no);
}
public int downcount(int no){
	return this.getSqlSession().selectOne("downcount", no);
}
public List<MemberBean> mydetailinfo(String id){
	return this.getSqlSession().selectList("mydetailinfo", id);
}
public void infoupdate(MemberBean bean){
	System.out.println("success");
	this.getSqlSession().update("infoupdate", bean);
}
public void memberdelete (String id){
	this.getSqlSession().delete("memberdelete", id);
}
public int mycouponcount(int no){
	return this.getSqlSession().selectOne("mycouponcount", no);
}
public void deletezzim(HashMap<String, Integer> map){
	this.getSqlSession().delete("deletezzim", map);
	
}
public int zzimcompare(HashMap<String, Object>map ){
	return this.getSqlSession().selectOne("zzimcompare", map);
	
}
}
