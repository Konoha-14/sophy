CREATE TABLE IF NOT EXISTS public.habit (
    id VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    frequency VARCHAR(255) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    created_at date NOT NULL,
    updated_at date,
    created_by VARCHAR(255),
    active boolean NOT NULL,
    CONSTRAINT habit_pk PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS public.task (
    habit_id VARCHAR(255),
    date date NOT NULL,
    state VARCHAR(255) NOT NULL,
    active boolean NOT NULL,
    CONSTRAINT task_pk PRIMARY KEY(habit_id, date)
);

ALTER TABLE ONLY public.task
    ADD CONSTRAINT fk_task_on_habit FOREIGN KEY (habit_id) REFERENCES public.habit(id) ON DELETE CASCADE;
