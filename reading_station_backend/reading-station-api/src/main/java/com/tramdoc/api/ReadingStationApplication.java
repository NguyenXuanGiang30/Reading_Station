package com.tramdoc.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * Main entry point for Reading Station API
 * Trạm Đọc - A comprehensive reading management application
 */
@SpringBootApplication
@EnableJpaAuditing
@EnableAsync
@EnableScheduling
public class ReadingStationApplication {

    public static void main(String[] args) {
        SpringApplication.run(ReadingStationApplication.class, args);
    }
}
