package com.example.springsocial.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth")
public class Hello {
    @GetMapping("/hello")
    public String data() {
        return "hello santhosh";
    }
}
