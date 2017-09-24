DROP TABLE IF EXISTS Ingredients_100g CASCADE;

CREATE TABLE Ingredients_100g (
  Ingredient_ID   SERIAL NOT NULL, 
  Name            varchar(255) NOT NULL UNIQUE, 
  Energy_kc       float4 NOT NULL, 
  Protein_g       float4, 
  Fat_g           float4, 
  Carbonhydrate_g float4, 
  Sugars_g        float4, 
  PRIMARY KEY (Ingredient_ID), 
  CONSTRAINT "Positive Protein" 
    CHECK (Protein_g > 0), 
  CONSTRAINT "Positive Energy" 
    CHECK (Energy_kC > 0));


INSERT INTO Ingredients_100g(Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Egg', 143, 12.56, 9.51, 0.72, 0.37);

SELECT * FROM Ingredients_100g;


DROP TABLE IF EXISTS Categories CASCADE;

CREATE TABLE Categories (
  Category_ID      SERIAL NOT NULL, 
  Name             varchar(255) NOT NULL UNIQUE, 
  Supercategory_ID int4, 
  PRIMARY KEY (Category_ID)) ;ALTER TABLE Categories ADD CONSTRAINT FKCategories981581 FOREIGN KEY (Supercategory_ID) REFERENCES Categories;
-- Supercategory_ID int4 REFERENCES Categories, 
-- 	Category_ID SERIAL NOT NULL PRIMARY KEY, 


INSERT INTO Categories(Name) VALUES ('Protein');
INSERT INTO Categories(Name) VALUES ('Vegetables');
INSERT INTO Categories(Name) VALUES ('Fruits');
INSERT INTO Categories(Name) VALUES ('Grains');
INSERT INTO Categories(Name) VALUES ('Diary');
INSERT INTO Categories(Name) VALUES ('Oil');
INSERT INTO Categories(Name, Supercategory_ID) VALUES ('Seafood', 1);
INSERT INTO Categories(Name, Supercategory_ID) VALUES ('Meats', 1);
INSERT INTO Categories(Name, Supercategory_ID) VALUES ('Nuts', 1);
INSERT INTO Categories(Name, Supercategory_ID) VALUES ('Dark Green', 2);

DROP TABLE IF EXISTS Ingredients_Categories CASCADE;

CREATE TABLE Ingredients_Categories (
  Ingredient_ID int4 NOT NULL REFERENCES Ingredients_100g, 
  Category_ID   int4 NOT NULL REFERENCES Categories, 
  PRIMARY KEY (Ingredient_ID, 
  Category_ID)
  );

INSERT INTO Ingredients_Categories
  (Ingredient_ID, 
  Category_ID) 
VALUES 
  (1, 
  1);

INSERT INTO Ingredients_Categories
  (Ingredient_ID, 
  Category_ID) 
VALUES 
  (1, 
  1);

DROP TABLE IF EXISTS Dishes CASCADE;

CREATE TABLE Dishes (
  Dish_ID SERIAL NOT NULL, 
  Dish_Name    varchar(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Dish_ID));

DROP TABLE IF EXISTS Dishes_Ingredients CASCADE;

CREATE TABLE Dishes_Ingredients (
  Dish_ID       int4 NOT NULL, 
  Ingredient_ID int4 NOT NULL, 
  PRIMARY KEY (Dish_ID, 
  Ingredient_ID));
ALTER TABLE Dishes_Ingredients ADD CONSTRAINT FKIngredient981581 FOREIGN KEY (Ingredient_ID) REFERENCES Ingredients_100g (Ingredient_ID);
ALTER TABLE Dishes_Ingredients ADD CONSTRAINT FKIngredient627364 FOREIGN KEY (Dish_ID) REFERENCES Dishes (Dish_ID);

INSERT INTO Dishes (Dish_Name) VALUES ('Mango Teriyaki Salmon');
INSERT INTO Dishes (Dish_Name) VALUES ('Cajun Chicken With Sweet Potato Wedges And Avocado Salad');
INSERT INTO Dishes (Dish_Name) VALUES ('Greek Lemon Pasta And Tuna Salad');
INSERT INTO Dishes (Dish_Name) VALUES ('Angel Hair Spaghetti With Pesto And Prawns');
INSERT INTO Dishes (Dish_Name) VALUES ('Steamed Brown Rice');
INSERT INTO Dishes (Dish_Name) VALUES ('Avocado, Apple');

DROP TABLE IF EXISTS Meals CASCADE;

CREATE TABLE Meals (
  Meal_ID SERIAL NOT NULL, 
  Meal_Type    varchar(255), 
  PRIMARY KEY (Meal_ID));

INSERT INTO Meals
  (
  Meal_Type) 
VALUES 
  ('Breakfast');
INSERT INTO Meals
  (Meal_Type) 
VALUES 
  ('Lunch');
INSERT INTO Meals
  (Meal_Type) 
VALUES 
  ('Lunch');
  INSERT INTO Meals
  (Meal_Type) 
VALUES 
  ('Lunch');
  INSERT INTO Meals
  (Meal_Type) 
VALUES 
  ('Dinner');
    INSERT INTO Meals
  (Meal_Type) 
VALUES 
  ('Dinner');
    INSERT INTO Meals
  (Meal_Type) 
VALUES 
  ('Dinner');
    INSERT INTO Meals
  (Meal_Type) 
VALUES 
  ('Dinner');
INSERT INTO Meals (Meal_Type) VALUES ('Fruits');
INSERT INTO Meals (Meal_Type) VALUES ('Snacks');

DROP TABLE IF EXISTS Meals_Dishes CASCADE;

CREATE TABLE Meals_Dishes (
  Meal_ID int4 NOT NULL, 
  Dish_ID int4 NOT NULL, 
  PRIMARY KEY (Meal_ID, 
  Dish_ID));
ALTER TABLE Meals_Dishes ADD CONSTRAINT FKMeals_Dish364667 FOREIGN KEY (Dish_ID) REFERENCES Dishes (Dish_ID);
ALTER TABLE Meals_Dishes ADD CONSTRAINT FKMeals_Dish694481 FOREIGN KEY (Meal_ID) REFERENCES Meals (Meal_ID);

INSERT INTO Meals_Dishes
  (Meal_ID, 
  Dish_ID) 
VALUES 
  (1, 
  1);

INSERT INTO Meals_Dishes
  (Meal_ID, 
  Dish_ID) 
VALUES 
  (1, 
  2);

INSERT INTO Meals_Dishes
  (Meal_ID, 
  Dish_ID) 
VALUES 
  (1, 
  3);

INSERT INTO Meals_Dishes
  (Meal_ID, 
  Dish_ID) 
VALUES 
  (2,
  4);
INSERT INTO Meals_Dishes
  (Meal_ID, 
  Dish_ID) 
VALUES 
  (2, 
  5);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (3, 1);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (3, 2);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (6, 4);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (6, 5);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (6, 6);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (7, 5);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (9, 5);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (10, 1);

DROP TABLE IF EXISTS Diets CASCADE;

CREATE TABLE Diets (
  Diet_ID SERIAL NOT NULL, 
  Diet_Type varchar(255), 
  PRIMARY KEY (Diet_ID));

INSERT INTO Diets
  (Diet_Type) 
VALUES 
  ('Normal');
INSERT INTO Diets
  (Diet_Type) 
VALUES 
  ('Vegetarian');
INSERT INTO Diets
  (Diet_Type) 
VALUES 
  ('Normal');
-- Mediterranean

DROP TABLE IF EXISTS Diets_Meals CASCADE;

CREATE TABLE Diets_Meals (
  Diet_ID int4 NOT NULL, 
  Meal_ID int4 NOT NULL, 
  PRIMARY KEY (Diet_ID, 
  Meal_ID));
ALTER TABLE Diets_Meals ADD CONSTRAINT FKMeals_Diet523146 FOREIGN KEY (Meal_ID) REFERENCES Meals (Meal_ID);
ALTER TABLE Diets_Meals ADD CONSTRAINT FKMeals_Diet990811 FOREIGN KEY (Diet_ID) REFERENCES Diets (Diet_ID);

INSERT INTO Diets_Meals
  (Diet_ID, 
  Meal_ID) 
VALUES 
  (1, 
  1);
INSERT INTO Diets_Meals
  (Diet_ID, 
  Meal_ID) 
VALUES 
  (1, 
  2);
INSERT INTO Diets_Meals
  (Diet_ID, 
  Meal_ID) 
VALUES 
  (1, 
  3);
INSERT INTO Diets_Meals
  (Diet_ID, 
  Meal_ID) 
VALUES 
  (1, 
  6);
INSERT INTO Diets_Meals
  (Diet_ID, 
  Meal_ID) 
VALUES 
  (1, 
  7);
INSERT INTO Diets_Meals (Diet_ID, Meal_ID) VALUES (1, 9);
INSERT INTO Diets_Meals (Diet_ID, Meal_ID) VALUES (1, 10);
