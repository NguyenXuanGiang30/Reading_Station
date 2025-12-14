package com.tramdoc.api.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * JWT Configuration Properties
 * TODO: Implement JWT token configuration
 */
@Configuration
@ConfigurationProperties(prefix = "security.jwt")
public class JwtConfig {
    // TODO: Implement JWT configuration
}
