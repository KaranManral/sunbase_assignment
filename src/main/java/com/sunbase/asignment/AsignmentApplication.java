package com.sunbase.asignment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = { "com.sunbase.asignment" })
public class AsignmentApplication {

	public static void main(String[] args) {
		SpringApplication.run(AsignmentApplication.class, args);
	}
}