CREATE TABLE IF NOT EXISTS public.habit (
    id VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    rrule VARCHAR(255) NOT NULL,
    goal integer,
    created_at bigint NOT NULL,
    updated_at bigint,
    created_by VARCHAR(255) NOT NULL,
    CONSTRAINT habit_pk PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS public.task (
    id VARCHAR(255) NOT NULL,
    habit_id VARCHAR(255),
    goal_progress integer,
    is_completed boolean DEFAULT false,
    date bigint NOT NULL,
    repeat_start_date bigint NOT NULL,
    repeat_interval bigint NOT NULL,
    CONSTRAINT task_pk PRIMARY KEY(id)
);

ALTER TABLE ONLY public.task
    ADD CONSTRAINT fk_task_on_habit FOREIGN KEY (habit_id) REFERENCES public.habit(id);
