INSERT INTO department (name)
VALUES ('Legal'),
    ('Sales'),
    ('Engineering');
INSERT INTO roles (title, salary, department_id)
VALUES ('Legal Team Lead', 250000, 1),
    ('Lawyer', 170000, 1),
    ('Sales Lead', 100000, 2),
    ('Salesperson', 70000, 2),
    ('Lead Engineer', 150000, 3),
    ('Engineer', 120000, 3);
INSERT INTO employee (
        first_name,
        last_name,
        role_id,
        manager_id,
        manager_confirm
    )
VALUES ('Jon', 'Duckett', 1, null, true),
    ('Eric', 'Elliott', 2, 1, false),
    ('Kyle', 'Simpson', 2, 1, false),
    ('David', 'Flanagan', 3, null, true),
    ('Brendan', 'Eich', 4, 2, false),
    ('Ryan', 'Dahl', 4, 2, false),
    ('Azat', 'Mardan', 4, 2, false),
    ('Marijn', 'Haverbeke', 5, null, true),
    ('David', 'Herron', 6, 3, false),
    ('John', 'Resig', 6, 3, false);
INSERT INTO manager (first_name, last_name)
SELECT first_name,
    last_name
FROM employee
WHERE manager_confirm = 1;