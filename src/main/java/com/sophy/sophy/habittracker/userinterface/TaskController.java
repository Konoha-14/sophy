package com.sophy.sophy.habittracker.userinterface;

import lombok.AllArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@AllArgsConstructor
@RequestMapping(value = "v1/tasks", produces = {MediaType.APPLICATION_JSON_VALUE})
public class TaskController {
    @GetMapping()
    public String getHello() {
        return "Hi there, I am Sophy!";
    }
}
