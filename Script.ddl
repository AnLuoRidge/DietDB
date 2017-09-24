-- Reset
drop schema public cascade;
create schema public;

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
INSERT INTO Ingredients_100g(Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Salmon, Atlantic, wild, raw', 142, 19.84, 6.34, 0, 0);
INSERT INTO Ingredients_100g(Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Beef, Australian, imported, grass-fed, seam fat, raw', 562, 9.58, 57.73, 1.06, 0);
INSERT INTO Ingredients_100g(Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Brown Rice', 160, 3, 1.5, 33, 0);
INSERT INTO Ingredients_100g(Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Avocados, raw, all commercial varieties', 240, 3, 21.99, 12.79, 0.99);
INSERT INTO Ingredients_100g(Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Oranges, raw, all commercial varieties', 85, 1.69, 0.22, 21.15, 16.83);
INSERT INTO Ingredients_100g(Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Mangos, raw', 60, 0.82, 0.38, 14.98, 13.66);

SELECT * FROM Ingredients_100g;


DROP TABLE IF EXISTS Categories CASCADE;

CREATE TABLE Categories (
  Category_ID      SERIAL NOT NULL, 
  Name             varchar(255) NOT NULL UNIQUE, 
  Supercategory_ID int4, 
  PRIMARY KEY (Category_ID)) ;
ALTER TABLE Categories ADD CONSTRAINT FKCategories981581 FOREIGN KEY (Supercategory_ID) REFERENCES Categories;
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


INSERT INTO Dishes (Dish_Name) VALUES ('Dish 1');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish 2');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish 3');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish 4');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Grain 1');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Grain 2');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Fruit 1');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Fruit 2');


/*
INSERT INTO Dishes (Dish_Name) VALUES ('Mango Teriyaki Salmon');
INSERT INTO Dishes (Dish_Name) VALUES ('Cajun Chicken With Sweet Potato Wedges And Avocado Salad');
INSERT INTO Dishes (Dish_Name) VALUES ('Greek Lemon Pasta And Tuna Salad');
INSERT INTO Dishes (Dish_Name) VALUES ('Angel Hair Spaghetti With Pesto And Prawns');
INSERT INTO Dishes (Dish_Name) VALUES ('Steamed Brown Rice');
INSERT INTO Dishes (Dish_Name) VALUES ('Avocado, Apple');
*/
DROP TABLE IF EXISTS Dishes_Ingredients CASCADE;

CREATE TABLE Dishes_Ingredients (
  Dish_ID       int4 NOT NULL, 
  Ingredient_ID int4 NOT NULL, 
  Amount_g      int2, 
  PRIMARY KEY (Dish_ID, 
  Ingredient_ID), 
  CONSTRAINT "Positive Amount" 
    CHECK (Amount_g > 0));
ALTER TABLE Dishes_Ingredients ADD CONSTRAINT FKDishes_Ing873133 FOREIGN KEY (Ingredient_ID) REFERENCES Ingredients_100g (Ingredient_ID);
ALTER TABLE Dishes_Ingredients ADD CONSTRAINT FKDishes_Ing227351 FOREIGN KEY (Dish_ID) REFERENCES Dishes (Dish_ID);

INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (1, 2, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (1, 7, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (2, 3, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (3, 5, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (3, 2, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (3, 1, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (4, 7, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (5, 7, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (6, 5, 60);

DROP TABLE IF EXISTS Meals CASCADE;

CREATE TABLE Meals (
  Meal_ID SERIAL NOT NULL,
  PRIMARY KEY (Meal_ID));

INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
/*
begin
FOR i IN 1..7 LOOP
  INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
    RAISE NOTICE 'i IS %', i;
END LOOP;
end
*/
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
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (4, 2);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (5, 4);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (5, 5);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (5, 6);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (6, 6);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (7, 5);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (8, 5);
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
  Diet_ID   int4 NOT NULL, 
  Meal_ID   int4 NOT NULL, 
  Meal_Type varchar(255) NOT NULL, 
  PRIMARY KEY (Diet_ID, 
  Meal_ID));
ALTER TABLE Diets_Meals ADD CONSTRAINT FKDiets_Meal997521 FOREIGN KEY (Meal_ID) REFERENCES Meals (Meal_ID);
ALTER TABLE Diets_Meals ADD CONSTRAINT FKDiets_Meal516436 FOREIGN KEY (Diet_ID) REFERENCES Diets (Diet_ID);

INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (1, 1, 'Breakfast');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (1, 2, 'Dinner');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (1, 3, 'Lunch');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (1, 6, 'Fruits');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (1, 7, 'Snacks');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (2, 1, 'Snacks');

DROP TABLE IF EXISTS Daily_Intake_References CASCADE;

CREATE TABLE Daily_Intake_References (
  DI_ID           SERIAL NOT NULL, 
  DI_Name         varchar(255) NOT NULL UNIQUE, 
  Energy_kc       float4 NOT NULL, 
  Protein_g       float4 NOT NULL, 
  Fat_g           float4 NOT NULL, 
  Carbonhydrate_g float4 NOT NULL, 
  Sugars_g        float4 NOT NULL, 
  PRIMARY KEY (DI_ID));

INSERT INTO Daily_Intake_References
  (DI_Name, 
  Energy_kc, 
  Protein_g, 
  Fat_g, 
  Carbonhydrate_g, 
  Sugars_g) 
VALUES 
  ('Australian Daily Intake for Average Adult', 
  2079.35, 
  50, 
  70, 
  310, 
  90);

INSERT INTO Daily_Intake_References
  (DI_Name, 
  Energy_kc, 
  Protein_g, 
  Fat_g, 
  Carbonhydrate_g, 
  Sugars_g) 
VALUES 
  ('Australian Daily Intake for Averaeg Women', 
  2000, 
  50, 
  70, 
  310, 
  90);

/*
Adolescents
Adults
Children
General Nutrition
National Nutrition Week
Older Adults
Physical Activity
Position Statements
Sports Nutrition
*/

-- ***************************** TEST PART *****************************
--test Category

select a.name Category, b.name Subcategory from categories a, categories b WHERE b.supercategory_id = a.category_id;

--view dishes in meals
select meals.meal_id, dishes.dish_name from meals_dishes join meals on meals_dishes.meal_id = meals.meal_id join dishes on meals_dishes.dish_id = dishes.dish_id;

--view diets

select diet_type, diet_id, meal_type, Dish_Name from diets natural join diets_meals natural join meals natural join meals_dishes natural join dishes
order by diet_id, 
	case meal_type   
    when 'Breakfast' then 1
    when 'Lunch' then 2
    when 'Dinner' then 3
    when 'Fruits' then 4
    when 'Snacks' then 5
    end;
