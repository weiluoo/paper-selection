/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Timothy
 * Created: Apr 8, 2018
 */

CREATE TABLE Relateds (
    related_id INT NOT NULL AUTO_INCREMENT,
    related_name VARCHAR(100) NOT NULL,
    link_address VARCHAR(200) NOT NULL,
    PRIMARY KEY(related_id));

CREATE TABLE Types (
    type_id INT NOT NULL AUTO_INCREMENT,
    type_name VARCHAR(100) NOT NULL,
    PRIMARY KEY(type_id));

CREATE TABLE Papers (
    paper_id INT NOT NULL AUTO_INCREMENT,
	paper_name VARCHAR(200) NOT NULL,
	link_address VARCHAR(200) NOT NULL,
	type_id INT,
	student_name VARCHAR(100) NOT NULL DEFAULT 'None',
	PRIMARY KEY(paper_id),
	FOREIGN KEY(type_id) REFERENCES Types(type_id));
