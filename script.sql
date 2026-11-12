CREATE DATABASE IF NOT EXISTS empresa_db;
USE empresa_db;

CREATE TABLE Departamento (
    DeptID INT PRIMARY KEY,
    NombreDepto VARCHAR(100) NOT NULL,
    Ubicacion VARCHAR(100)
);

CREATE TABLE Empleado (
    EmpID INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Edad INT,
    Salario DECIMAL(10, 2),
    DeptID INT,
    CONSTRAINT fk_empleado_departamento 
        FOREIGN KEY (DeptID) 
        REFERENCES Departamento(DeptID)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);