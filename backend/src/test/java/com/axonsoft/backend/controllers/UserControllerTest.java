package com.axonsoft.backend.controllers;

import com.axonsoft.backend.model.UserDTO;
import com.axonsoft.backend.services.UserService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ExtendWith(MockitoExtension.class)
class UserControllerTest {

    @Mock
    UserService userService;

    @InjectMocks
    UserController userController;

    List<UserDTO> users;

    UserDTO returnUser;

    MockMvc mockMvc;

    @BeforeEach
    void setUp() {
        users = new ArrayList<>();
        UserDTO user1 = new UserDTO();
        user1.setId(1L);
        user1.setLastname("lname1");
        UserDTO user2 = new UserDTO();
        user2.setId(2L);
        user2.setLastname("lname2");
        users.add(user1);
        users.add(user2);

        returnUser = new UserDTO();
        returnUser.setId(3L);
        returnUser.setUsername("username");
        returnUser.setPassword("password");
        returnUser.setFirstname("fname");
        returnUser.setLastname("lname");

        mockMvc = MockMvcBuilders
                .standaloneSetup(userController)
                .build();
    }

    @Test
    void login() throws Exception {
        when(userService.findUsersByUsernameAndPassword(any())).thenReturn(returnUser);

        MvcResult result = mockMvc.perform(post("/users/login").contentType(MediaType.APPLICATION_JSON)
                .content("{\"username\":\"username\",\"password\":\"password\"}"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        UserDTO userDTO = new ObjectMapper().readValue(content, UserDTO.class);

        assertNotNull(userDTO);
        verify(userService).findUsersByUsernameAndPassword(any());
    }

    @Test
    void findAllUsers() throws Exception {
        when(userService.findAllUsers()).thenReturn(users);

        MvcResult result = mockMvc.perform(get("/users/"))
                .andExpect(status().isOk()).andReturn();

        String content = result.getResponse().getContentAsString();

        List<String> list = new ObjectMapper().readValue(content, List.class);

        assertEquals(list.size(), 2);
        verify(userService).findAllUsers();
    }

    @Test
    void findUsersByLastnameLike() throws Exception {
        when(userService.findUsersByLastnameLike(anyString())).thenReturn(users);

        MvcResult result = mockMvc.perform(get("/users/findByLastname/l"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        List<String> userDTO = new ObjectMapper().readValue(content, List.class);

        assertEquals(userDTO.size(), 2);
        verify(userService).findUsersByLastnameLike(any());
    }

    @Test
    void saveUser() throws Exception {
        when(userService.saveUser(any())).thenReturn(returnUser);

        MvcResult result = mockMvc.perform(post("/users/save/").contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content("{\"firstname\":\"fname\",\"lastname\":\"lname\",\"username\":\"username\",\"password\":\"password\"}"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        UserDTO userDTO = new ObjectMapper().readValue(content, UserDTO.class);

        assertNotNull(userDTO.getId());
        verify(userService).saveUser(any());
    }

    @Test
    void deleteUser() throws Exception {
        mockMvc.perform(delete("/users/delete/").contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content("{\"id\":\"3\",\"firstname\":\"fname\",\"lastname\":\"lname\",\"username\":\"username\",\"password\":\"password\"}"))
                .andExpect(status().isOk());

        verify(userService).deleteUser(any());
    }

    @Test
    void deleteUserById() throws Exception {
        mockMvc.perform(delete("/users/delete/3"))
                .andExpect(status().isOk());

        verify(userService).deleteUserById(anyLong());
    }

    @Test
    void findUserById() throws Exception {
        when(userService.findUserById(anyLong())).thenReturn(returnUser);

        MvcResult result = mockMvc.perform(get("/users/3"))
                .andExpect(status().isOk())
                .andReturn();

        String content = result.getResponse().getContentAsString();

        UserDTO userDTO = new ObjectMapper().readValue(content, UserDTO.class);

        assertNotNull(userDTO);
        verify(userService).findUserById(anyLong());
    }
}