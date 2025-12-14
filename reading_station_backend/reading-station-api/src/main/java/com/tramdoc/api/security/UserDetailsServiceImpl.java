package com.tramdoc.api.security;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * User Details Service Implementation
 * TODO: Implement loading user details for authentication
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // TODO: Implement user loading logic from database
        // Example:
        // User user = userRepository.findByUsername(username)
        // .orElseThrow(() -> new UsernameNotFoundException("User not found: " +
        // username));
        // return org.springframework.security.core.userdetails.User.builder()
        // .username(user.getUsername())
        // .password(user.getPassword())
        // .authorities(user.getRole())
        // .build();
        throw new UsernameNotFoundException("User loading not yet implemented");
    }
}
