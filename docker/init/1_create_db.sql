CREATE TABLE `member` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(32) NOT NULL,
    `nickname` varchar(32) NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `member`
(name, nickname)
VALUES
('김도형', 'Dorma'),
('윤형중', 'Trevi'),
('조현근', 'Jace'),
('박주홍', 'Derek');
