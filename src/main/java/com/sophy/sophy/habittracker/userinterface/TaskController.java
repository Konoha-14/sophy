package com.sophy.sophy.habittracker.userinterface;

import lombok.AllArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
@RequestMapping(value = "v1/task", produces = {MediaType.APPLICATION_JSON_VALUE})
public class TaskController {
    @GetMapping()
    public String getTasks() {
        return "Hi there, I am Sophy!";
    }
}
