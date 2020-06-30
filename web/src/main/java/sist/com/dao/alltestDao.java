package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.model.alltest;

@Repository(value="alltestDao")
public class alltestDao extends SqlSessionDaoSupport {

	
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public void alltestinsert(alltest alltest){
		System.out.println("INSERT 완료");
		//System.out.println(alltest);
		this.getSqlSession().insert("alltestinsert", alltest);
	
	}
	public List<alltest> alltestwhole(){
		
		return this.getSqlSession().selectList("alltestwhole");
	}
public List<alltest> pagetest(HashMap<String, Integer> map){
		
		return this.getSqlSession().selectList("pagetest",map);
	}
	public int alltestcount(){
		return this.getSqlSession().selectOne("alltestcount");
	}
}
