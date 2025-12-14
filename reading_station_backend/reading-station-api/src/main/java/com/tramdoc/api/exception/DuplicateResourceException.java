package com.tramdoc.api.exception;

/**
 * Duplicate Resource Exception
 */
public class DuplicateResourceException extends RuntimeException {
    public DuplicateResourceException(String message) {
        super(message);
    }
}
