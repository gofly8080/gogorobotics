package com.smpro.component.admin;

import com.smpro.service.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Slf4j
@Component
public class ConnectionValidComponent {

	@Autowired
	private SystemService systemService;

	/** dbConnection */

	@Scheduled(fixedRate = 60000)
	public void checkDbConnection() {

        systemService.getAdminList();

	}
}
