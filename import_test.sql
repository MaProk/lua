-- Creation of a test base...

CREATE DATABASE test;

USE test;

CREATE TABLE files (
  id_file int(11) NOT NULL,
  id_my int(11) NOT NULL,
  description text NOT NULL,
  name_origin text NOT NULL,
  path text NOT NULL,
  date_upload text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

INSERT INTO files (id_file, id_my, description, name_origin, path, date_upload) VALUES
(16, 17, 'Закачка из менеджера', 'test file 1.pdf', 'files/test_file1.pdf', '31-03-2023  20:07:59');

CREATE TABLE myarttable (
  id int(11) NOT NULL,
  text text NOT NULL,
  description text NOT NULL,
  keywords text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

INSERT INTO myarttable (id, text, description, keywords) VALUES
(17, 'Baranov', 'Engeneer', 'Ivanov'),
(20, 'Fedorov', 'Cpp, Delphi, PHP, JS', '3t'),
(92, 'Daniel', 'Artist', 'Theater Saturday'),
(93, 'Andrew', 'Poet', 'First Electrotechnical University'),
(94, 'Nikita', 'Student', 'Technological Institute'),
(95, 'Ilya', 'Salesman', 'Hypermarket'),
(96, 'Matvey', 'Programmer', 'Metropolitan College'),
(97, 'Fedor', 'Loader', 'St. Petersburg State University'),
(98, 'Ivan', 'Student', 'LETI'),
(99, 'Alexey', 'Engineer', 'ITMO');

ALTER TABLE files
  ADD PRIMARY KEY (id_file),
  ADD KEY id_my (id_my);

ALTER TABLE myarttable
  ADD PRIMARY KEY (id);

ALTER TABLE files
  MODIFY id_file int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE myarttable
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

ALTER TABLE files
  ADD CONSTRAINT files_ibfk_1 FOREIGN KEY (id_my) REFERENCES myarttable (id);
