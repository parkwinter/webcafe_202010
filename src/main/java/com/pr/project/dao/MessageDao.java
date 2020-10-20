package com.pr.project.dao;

import java.util.List;

import com.pr.project.model.Message;

public interface MessageDao {

	int insert(Message message);

	List<Message> list(Message message);

}
