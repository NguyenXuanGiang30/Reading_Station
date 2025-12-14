package com.tramdoc.api.exception;

/**
 * Forbidden Exception
 */
public class ForbiddenException extends RuntimeException {
    public ForbiddenException(String message) {
        super(message);
    }
}
