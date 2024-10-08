package com.sophy.sophy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackageClasses={SophyApplication.class})
public class SophyApplication {

	public static void main(String[] args) {
		SpringApplication.run(SophyApplication.class, args);
	}
}
