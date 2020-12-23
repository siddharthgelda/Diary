package com.exception.handler;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import com.exception.Error;
import com.exception.InvalidCredentialsException;
import com.exception.InvalidUserException;
import com.exception.UserNotFoundException;

@ControllerAdvice
public class UserServiceErrorHandler {

    @ExceptionHandler(InvalidUserException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    public Error invalidUser() {
        return new Error(1, "invalid user.");
    }

    @ExceptionHandler(UserNotFoundException.class)
    @ResponseStatus(value = HttpStatus.NOT_FOUND)
    public Error userUnavailable(Long id) {
        return new Error(2, "user with {id}=" + id + " not found.");
    }

    @ExceptionHandler(InvalidCredentialsException.class)
    @ResponseStatus(value = HttpStatus.FORBIDDEN)
    public Error invalidCredentials() {
        return new Error(2, "invalid credentials passed in.");
    }

}
