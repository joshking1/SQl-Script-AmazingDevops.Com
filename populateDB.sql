#POPULATE DB#
    #restaurant insert
    use foodOrder;
INSERT INTO `restaurant`(
    `id`,
    `address`,
    `email`,
    `hours`,
    `name`,
    `phone`,
    `rating`
)
VALUES(
    '1',
    '123 Mustard St',
    'sales@DoughnutKing.com',
    '9am-6pm',
    'Doughnut King',
    '320-454-2421',
    '2'
);
INSERT INTO `restaurant`(
    `id`,
    `address`,
    `email`,
    `hours`,
    `name`,
    `phone`,
    `rating`
)
VALUES(
    '2',
    'Medley Rd',
    'sales@MedleyCakeHouse.com',
    '8am-10pm',
    'Medley Cake House',
    '320-333-4533',
    '4'
);
#insert department
INSERT INTO `department`(`id`, `location`, `name`)
VALUES('1', 'New York', 'Sales');
INSERT INTO `department`(`id`, `location`, `name`)
VALUES('2', 'New York', 'Tech support');
#insert employee
INSERT INTO `employee`(
    `id`,
    `firstname`,
    `gender`,
    `lastname`,
    `salary`,
    `department_id`,
    `restaurant_id`
)
VALUES('1', 'James', 'Male', 'Aden', '24000', '2', '1');
INSERT INTO `employee`(
    `id`,
    `firstname`,
    `gender`,
    `lastname`,
    `salary`,
    `department_id`,
    `restaurant_id`
)
VALUES(
    '2',
    'Marylyn',
    'Female',
    'Joseph',
    '23000',
    '1',
    '1'
);
#insert into customer
INSERT INTO `customer`(
    `id`,
    `address`,
    `email`,
    `firstname`,
    `lastname`,
    `phone`
)
VALUES(
    '1',
    'Olive St',
    'JEarl@gmail.com',
    'John ',
    'Earl',
    '320-033-4533'
);
INSERT INTO `customer`(
    `id`,
    `address`,
    `email`,
    `firstname`,
    `lastname`,
    `phone`
)
VALUES(
    '2',
    'Olive St',
    'JamesElang@gmail.com',
    'James ',
    'Elang',
    '320-433-5545'
);
#insert into customer_order
INSERT INTO `customer_order`(
    `id`,
    `order_date`,
    `detail`,
    `discount`,
    `price`,
    `quantity`,
    `customer_id`,
    `restaurant_id`
)
VALUES(
    '1',
    '2022-11-30',
    'Fried Smoked salmon with Salad',
    '25',
    '100',
    '1',
    '1',
    '2'
);
INSERT INTO `customer_order`(
    `id`,
    `order_date`,
    `detail`,
    `discount`,
    `price`,
    `quantity`,
    `customer_id`,
    `restaurant_id`
)
VALUES(
    '2',
    '2022-11-30',
    'Garlic Chicken with mushrooms',
    '10',
    '70',
    '1',
    '2',
    '1'
);
