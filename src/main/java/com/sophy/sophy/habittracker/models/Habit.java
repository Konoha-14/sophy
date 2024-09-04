package com.sophy.sophy.habittracker.models;

import lombok.Builder;
import lombok.Data;

import java.time.ZonedDateTime;

@Data
@Builder
public class Habit {
    private String  id;
    private String name;
    private String frequency;
    private String isActive;
    private String colour;
    private ZonedDateTime startDate;
    private ZonedDateTime endDate;
}
