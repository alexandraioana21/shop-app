package com.axonsoft.backend.security.model;

public class JWTResponse {

    private final String jwtToken;

    public JWTResponse(String jwtToken) {
        this.jwtToken = jwtToken;
    }
    public String getToken() {
        return this.jwtToken;
    }
}
