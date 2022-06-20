package com.inovbin.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("")
public class MainController {

    @GetMapping
    public Mono<String> index(){
        return Mono.just("welcome to Inovbin");
    }
}
