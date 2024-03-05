create database University;
insert into Student(
                    id bigint PRIMARY KEY,
                    name VARCHAR,
                    birthday Date
                    group int);
insert into Subject(
    id bigint PRIMARY KEY,
    name VARCHAR,
    description VARCHAR
    grade int);
insert into PaymentType(
    id bigint PRIMARY KEY,
    name VARCHAR
    );
insert into Payment(
                    id bigint PRIMARY KEY
                    type_id bigint FOREIGN KEY (type_id) REFERENCES PaymentType(id)
                    amount decimal
                    student_id bigint FOREIGN KEY (student_id) REFERENCES Student(id)
                    payment_date TIMESTAMP
);
insert into Mark(
    id bigint PRIMARY KEY
    student_id bigint FOREIGN KEY (student_id) REFERENCES Student(id)
    subject_id bigint FOREIGN KEY (subject_id) REFERENCES Subject(id)
)