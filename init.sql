CREATE SCHEMA IF NOT EXISTS megaschema;

-- для MySQL PRIMARY KEY AUTO_INCREMENT
-- для PostgreSQL PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY
CREATE TABLE IF NOT EXISTS megaschema.employee (
    id int8 PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name varchar(128) NOT NULL,
    surname varchar(128) NOT NULL,
    patronymic varchar(128) NOT NULL,
    date_of_employment date NOT NULL
);

CREATE TABLE IF NOT EXISTS megaschema.role (
    id int8 PRIMARY KEY AUTO_INCREMENT,
    name varchar(128) NOT NULL,
    monitors_count int8 NOT NULL,
    CONSTRAINT role_name_is_unique UNIQUE (name),
    CONSTRAINT positive_monitors CHECK (monitors_count >= 0)
);

CREATE TABLE IF NOT EXISTS megaschema.grade (
    id int8 PRIMARY KEY AUTO_INCREMENT,
    name varchar(128) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    CONSTRAINT grade_name_is_unique UNIQUE (name),
    CONSTRAINT positive_salary CHECK (salary > 0)
);

CREATE TABLE IF NOT EXISTS megaschema.employee_roles (
    employee_id int8 NOT NULL,
    role_id int8 NOT NULL,
    CONSTRAINT employee_roles__employee_relate FOREIGN KEY (employee_id) REFERENCES megaschema.employee(id),
    CONSTRAINT employee_roles__roles_relate FOREIGN KEY (role_id) REFERENCES megaschema.role(id),
    CONSTRAINT unique_fk_employee_roles UNIQUE (employee_id, role_id)
);

CREATE TABLE IF NOT EXISTS megaschema.employee_grades (
    employee_id int8 NOT NULL,
    grade_id int8 NOT NULL,
    CONSTRAINT employee_grades__employee_relate FOREIGN KEY (employee_id) REFERENCES megaschema.employee(id),
    CONSTRAINT employee_grades__grades_relate FOREIGN KEY (grade_id) REFERENCES megaschema.grade(id),
    CONSTRAINT unique_fk_employee_grades UNIQUE (employee_id, grade_id)
);

