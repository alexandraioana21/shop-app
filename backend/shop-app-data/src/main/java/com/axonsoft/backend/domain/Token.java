package com.axonsoft.backend.domain;


public class Token extends BaseEntity{

    private String token;

    private String username;

    public Token(Long id, String token, String username) {
        super(id);
        this.token = token;
        this.username = username;
    }

    public Token(String token, String username) {
        this.token = token;
        this.username = username;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
