package sist.com.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.model.mingutest;

@Repository(value="MinguDao")
public class MinguDao extends SqlSessionDaoSupport {
	
	@Autowired	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public String ddddd(){
		
		return "여긴 다오";
	}
	
	public List<mingutest> mingminglist(){
		
		return this.getSqlSession().selectList("mingulist");
	}
	
}
