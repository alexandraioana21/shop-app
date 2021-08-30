package com.axonsoft.backend.model;

import com.axonsoft.backend.domain.Order;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class UserDTO {

    @ApiModelProperty(value = "User's id", required = true)
    private Long id;

    @ApiModelProperty(value = "User's token", required = true)
    private String token;

    @ApiModelProperty(value = "User's firstname", required = true)
    @NotBlank
    private String firstname;

    @ApiModelProperty(value = "User's lastname", required = true)
    @NotBlank
    private String lastname;

    @ApiModelProperty(value = "User's username", required = true)
    @NotBlank
    private String username;

    @ApiModelProperty(value = "User's password", required = true)
    @NotBlank
    private String password;

    @ApiModelProperty(value = "User's orders", required = true)
    private Set<Order> orders = new HashSet<>();
}
