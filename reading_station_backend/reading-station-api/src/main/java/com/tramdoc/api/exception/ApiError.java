package com.tramdoc.api.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * API Error DTO
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApiError {
    private String field;
    private String message;
}
