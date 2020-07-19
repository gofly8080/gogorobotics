package com.smpro.configuration.admin;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

@Slf4j
@Configuration
@ComponentScan(basePackages = {"com.smpro.service", "com.smpro.dao"})
public class ApplicationContextConfig {

	/*
        have to add below code to application.properties
        mail.host=
        mail.userName=
        mail.password=
        mail.protocol=
        mail.port=
     */

	@Value("${mail.host}")
	private String mailHost;

	@Value("${mail.userName}")
	private String mailUserName;

	@Value("${mail.password}")
	private String mailPassword;

	@Value("${mail.protocol}")
	private String mailProtocol;

	@Value("${mail.port}")
	private int mailPort;

	@Bean
	public JavaMailSender javaMailSender() {

		// 임의로 설정하였음.. 추후 메일 설정 세팅 바람
		JavaMailSenderImpl sender = new JavaMailSenderImpl();
		sender.setHost(mailHost);
		sender.setUsername(mailUserName);
		sender.setPassword(mailPassword);
		sender.setProtocol(mailProtocol);
		sender.setPort(mailPort);

		Properties prop = new Properties();
		prop.setProperty("mail.smtp.auth", "true");
		prop.setProperty("mail.smtp.socketFactory.port", "25");
		prop.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		prop.setProperty("mail.transport.protocol", "smtp");
		prop.setProperty("mail.debug", "true");
		sender.setJavaMailProperties(prop);

		return sender;
	}
}
