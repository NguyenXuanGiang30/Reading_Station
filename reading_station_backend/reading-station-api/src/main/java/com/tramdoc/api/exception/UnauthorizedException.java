package com.tramdoc.api.exception;

/**
 * Unauthorized Exception
 */
public class UnauthorizedException extends RuntimeException {
    public UnauthorizedException(String message) {
        super(message);
    }
}
