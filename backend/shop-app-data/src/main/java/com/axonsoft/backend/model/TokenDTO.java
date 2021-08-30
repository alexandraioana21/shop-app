package com.axonsoft.backend.model;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class TokenDTO {

    @ApiModelProperty(value = "Token's id", required = true)
    private Long id;

    @ApiModelProperty(value = "Token", required = true)
    private String token;

    @ApiModelProperty(value = "User's username", required = true)
    @NotBlank
    private String username;

    public TokenDTO(String token, @NotBlank String username) {
        this.token = token;
        this.username = username;
    }
}
