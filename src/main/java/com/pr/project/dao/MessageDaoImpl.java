package com.pr.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pr.project.model.Message;

@Repository
public class MessageDaoImpl implements MessageDao{

	@Autowired SqlSessionTemplate sst;

	
	public int insert(Message message) {
	
		return sst.insert("messagens.insert",message);
	}


	
	public List<Message> list(Message message) {
		
		return sst.selectList("messagens.list",message);
	}
}
