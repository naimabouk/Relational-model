CREATE TABLE Type (
    Type_Id INT PRIMARY KEY,
    Type_Name VARCHAR(50) NOT NULL
);

CREATE TABLE Hotel (
    Hotel_Id INT PRIMARY KEY,
    Hotel_Name VARCHAR(100) NOT NULL,
    Type_Id INT,
    FOREIGN KEY (Type_Id) REFERENCES Type(Type_Id)
);

CREATE TABLE Category (
    Category_Id INT PRIMARY KEY,
    Category_Name VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Beds_numbers INT NOT NULL
);

CREATE TABLE Room (
    Room_Id INT PRIMARY KEY,
    Floor INT NOT NULL,
    Hotel_Id INT,
    Category_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
    FOREIGN KEY (Category_Id) REFERENCES Category(Category_Id)
);

CREATE TABLE Employee (
    Employee_Id INT PRIMARY KEY,
    Employee_Name VARCHAR(100) NOT NULL,
    Employee_Speciality VARCHAR(50),
    Hotel_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id)
);

CREATE TABLE Employee_Leads (
    Leader_Id INT,
    Subordinate_Id INT,
    PRIMARY KEY (Leader_Id, Subordinate_Id),
    FOREIGN KEY (Leader_Id) REFERENCES Employee(Employee_Id),
    FOREIGN KEY (Subordinate_Id) REFERENCES Employee(Employee_Id)
); 