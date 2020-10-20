package com.pr.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pr.project.dao.MessageDao;
import com.pr.project.model.Message;

@Service
public class MessageServiceImpl implements MessageService{

	@Autowired
	private MessageDao msgd;

	
	public int insert(Message message) {
		
		return msgd.insert(message);
	}


	
	public List<Message> list(Message message) {
		
		return msgd.list(message);
	}
}
