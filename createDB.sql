#Create database;
CREATE DATABASE foodOrder;
USE foodOrder;
    #create tables
CREATE TABLE customer(
    id BIGINT NOT NULL,
    address VARCHAR(255),
    email VARCHAR(255),
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    phone VARCHAR(255),
    PRIMARY KEY(id)
); CREATE TABLE customer_order(
    id BIGINT NOT NULL,
    order_date DATE,
    detail VARCHAR(255),
    discount INTEGER NOT NULL,
    price INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    PRIMARY KEY(id)
); CREATE TABLE department(
    id BIGINT NOT NULL,
    location VARCHAR(255),
    NAME VARCHAR(255),
    PRIMARY KEY(id)
); CREATE TABLE employee(
    id BIGINT NOT NULL,
    firstname VARCHAR(255),
    gender VARCHAR(255),
    lastname VARCHAR(255),
    salary INTEGER NOT NULL,
    PRIMARY KEY(id)
); CREATE TABLE restaurant(
    id BIGINT NOT NULL,
    address VARCHAR(255),
    email VARCHAR(255),
    hours VARCHAR(255),
    NAME VARCHAR(255),
    phone VARCHAR(255),
    rating INTEGER NOT NULL,
    PRIMARY KEY(id)
);
##Create constraints
ALTER TABLE
    customer_order ADD COLUMN customer_id BIGINT;
ALTER TABLE
    customer_order ADD COLUMN restaurant_id BIGINT;
ALTER TABLE
    employee ADD COLUMN department_id BIGINT;
ALTER TABLE
    employee ADD COLUMN restaurant_id BIGINT;
ALTER TABLE
    customer_order ADD CONSTRAINT FKf9a FOREIGN KEY(customer_id) REFERENCES customer(id);
ALTER TABLE
    customer_order ADD CONSTRAINT FKm59t FOREIGN KEY(restaurant_id) REFERENCES restaurant(id);
ALTER TABLE
    employee ADD CONSTRAINT FKbejt FOREIGN KEY(department_id) REFERENCES department(id);
ALTER TABLE
    employee ADD CONSTRAINT FK7v8 FOREIGN KEY(restaurant_id) REFERENCES restaurant(id);
    #views
CREATE VIEW customer_customer_order AS SELECT
    customer.id,
    customer.firstname,
    customer.lastname,
    customer_order.order_date,
    customer_order.detail
FROM
    customer
INNER JOIN customer_order ON customer.id = customer_order.customer_id;
CREATE VIEW employee_department AS SELECT
    COUNT(employee.id)
FROM
    employee
INNER JOIN department ON employee.department_id = department.id
WHERE
    department.name = "order_service";
    #database triggers
CREATE TABLE insertdeletetracker(
    cutomer_id BIGINT,
    insertiondate DATETIME,
    ACTION VARCHAR(255)
); DELIMITER
    //
CREATE TRIGGER inserttracker AFTER INSERT ON
    customer FOR EACH ROW
BEGIN
    INSERT INTO insertdeletetracker
VALUES(NEW.id, NOW(), "insert") ;
END //
Delimiter
    ;
DELIMITER
    //
CREATE TRIGGER deletetrigger BEFORE DELETE
ON
    customer_order FOR EACH ROW
BEGIN
    INSERT INTO insertdeletetracker
VALUES(old.id, NOW(), "delete") ;
END //
DELIMITER
    ;
