DROP DATABASE IF EXISTS enroute;
CREATE DATABASE enroute;
USE enroute;

create table Customer (
Cust_ID int auto_increment primary key,
Cust_FName varchar (20) not null,
Cust_LName varchar(20) not null,
Cust_Email varchar(255) not null unique,
Phone_Num varchar(20) not null unique,
Password_Hash varchar(255) not null
 );

create table Employee (
Emp_Id int auto_increment primary key,
Emp_FName varchar (20) not null,
Emp_LName varchar(20) not null,
Emp_Email varchar(255) not null unique,
Phone_Num varchar(20) not null unique,
Password_Hash varchar(255) not null,
License_Number varchar(255) not null unique
);

create table Vehicle(
Vin_Number char(17) primary key,
Emp_Id int not null,
Make varchar(144) not null,
Model varchar(144) not null, 
License_Plate varchar(144) not null,

constraint Emp_ID 
	foreign key(Emp_ID) references Employee(Emp_ID),
constraint uq_vehicle_driver UNIQUE (Vin_Number, Emp_ID)
);

create table Ride(
Ride_ID int auto_increment primary key,
Cust_ID int not null,
Emp_Id int null,
Vin_Number char(17) null,
Fare decimal(8,2) not null,
Pick_Up_Location   VARCHAR(255) NOT NULL,
Drop_Off_Location  VARCHAR(255) NOT NULL,
Ride_Status ENUM('Requested','Accepted','In Progress','Completed','Canceled')
	   NOT NULL DEFAULT 'Requested',
Requested_At       DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
Completed_At       DATETIME NULL,

CONSTRAINT fk_ride_customer
        FOREIGN KEY (Cust_ID) REFERENCES Customer (Cust_ID),

    CONSTRAINT fk_ride_vehicle_driver
        FOREIGN KEY (Vin_Number, Emp_ID) REFERENCES Vehicle (Vin_Number, Emp_ID),

    CONSTRAINT chk_ride_driver CHECK (
        (Ride_Status IN ('Requested', 'Canceled')
            AND Emp_ID IS NULL AND Vin_Number IS NULL)
        OR
        (Ride_Status IN ('Accepted', 'In Progress', 'Completed')
            AND Emp_ID IS NOT NULL AND Vin_Number IS NOT NULL)
    )


);

create table Rating(
Rating_ID int auto_increment primary key,
Ride_ID int not null unique,
Score TINYINT NOT NULL,
constraint fk_Ride_ID
	foreign key (Ride_ID) references Ride(Ride_ID),
constraint chk_rating_score CHECK (Score BETWEEN 1 AND 5)
);

create table Payment_Method (
Payment_Method_ID int auto_increment primary key,
Cust_ID int not null,
Card_Type varchar(40) not null,
Last_Four_Digits char(4) not null,
Payment_Token varchar(255) not null unique,
constraint Cust_ID 
	foreign key (Cust_ID) references Customer(Cust_ID)
);

create table Payment(
Payment_ID int auto_increment primary key,
Payment_Method_ID int not null,
Ride_ID int not null unique, 
Amount decimal (8,2) not null,
Payment_Status varchar(20) not null,
Tip decimal (8,2) null,
Paid_At datetime not null,

constraint Payment_Method_ID 
	foreign key(Payment_Method_ID) references Payment_Method(Payment_Method_ID),
constraint Ride_ID 
	foreign key(Ride_ID) references Ride(Ride_ID)
);