package com.pm.controller;

import javax.websocket.CloseReason;
import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/chat")
@ServerEndpoint(value="/chat")
public class ChatController {

	@OnOpen
	public void onOpen(Session session,EndpointConfig config) {
	    //to do somthing
		System.out.println("Open");
	}

	@OnMessage
	public void onMessage(String message, Session session) {

		System.out.println("message:"+message+session.getId());
	}

	@OnClose
	public void onClose(Session session, CloseReason reason) {

	}
	@RequestMapping("/send")
	public Object sendMsg(){
		return null;
	}
}
