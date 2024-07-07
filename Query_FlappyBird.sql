CREATE DATABASE FlappyBird;
go
USE FlappyBird;
go
CREATE TABLE account (
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    nickname VARCHAR(50) NOT NULL
    UNIQUE (username)
);
go
CREATE TABLE score (
    account_id INT,
    score INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES account(id)
);
go

-- Thêm dữ liệu ví dụ vào bảng account
INSERT INTO account (username, password, nickname) VALUES
('user1', 'password1', 'nickname1'),
('user2', 'password2', 'nickname2'),
('user3', 'password3', 'nickname3'),
('user4', 'password4', 'nickname4'),
('user5', 'password5', 'nickname5'),
('user6', 'password6', 'nickname6'),
('user7', 'password7', 'nickname7'),
('user8', 'password8', 'nickname8');
go

-- Thêm dữ liệu ví dụ vào bảng score
INSERT INTO score (account_id, score) VALUES
(1, 278911),
(2, 268921),
(3, 257231),
(4, 243312),
(5, 243111),
(6, 231134),
(7, 228521),
(8, 225524);
go