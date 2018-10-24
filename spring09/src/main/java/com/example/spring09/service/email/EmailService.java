package com.example.spring09.service.email;

import com.example.spring09.model.email.EmailDTO;

public interface EmailService {
	public void sendMail(EmailDTO dto);
}
