package com.my.springboot.application;

import com.my.springboot.dto.HelloOutDto;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MySpringboot
{
@RequestMapping("/hello")
public HelloOutDto helloOutDto(){

    return  new HelloOutDto("Hello World");
}



}
