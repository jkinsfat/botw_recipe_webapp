CREATE DATABASE IF NOT EXISTS BOTW

USE BOTW

CREATE TABLE IF NOT EXISTS Ingredient (
    ingredient_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    i_name VARCHAR(40),
    image_path VARCHAR(60),
    initial_time_boost INT,
    time_boost INT,
    hearts INT,
    bonus_hearts INT,
    stamina INT,
    endurance INT,
    potency INT,
    rupees INT,
    FOREIGN KEY fk_effect_type(effect_type_id) 
    REFERENCES Effect_Type(effect_type_id),
    FOREIGN KEY fk_ingredient_type(ingredient_type_id)
    REFERENCES Ingredient_Type(ingredient_type_id),
) TYPE = INNODB

CREATE TABLE IF NOT EXISTS Effect_Type (
    effect_type_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    et_name VARCHAR(20),
    dish_prefix VARCHAR(20),
    common_name VARCHAR(20),
    potency_threshold INT
) TYPE = INNODB

CREATE TABLE IF NOT EXISTS Ingredient_Type (
    ingredient_type_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    it_name varchar(20)
) TYPE = INNODB

CREATE TABLE IF NOT EXISTS Ingredient_Subtype (
    ingredient_subtype_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    st_name VARCHAR(20)

) TYPE = INNODB

CREATE TABLE Recipe_Component (
    recipe_component INT AUTO_INCREMENT PRIMARY KEY NOT NULL,

) TYPE = INNODB

CREATE TABLE IF NOT EXISTS Recipe (
    recipe_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
) TYPE = INNODB

CREATE TABLE IF NOT EXISTS Dish (
    dish_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    image_path VARCHAR(60),
    dish_name VARCHAR(40),

) TYPE = INNODB

