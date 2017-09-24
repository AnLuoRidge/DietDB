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

DROP TABLE IF EXISTS Food_Categories CASCADE;

CREATE TABLE Food_Categories (
  Category_ID      SERIAL NOT NULL, 
  Name             varchar(255) NOT NULL UNIQUE, 
  Supercategory_ID int4, 
  PRIMARY KEY (Category_ID)) ;
ALTER TABLE Food_Categories ADD CONSTRAINT FKCategories981581 FOREIGN KEY (Supercategory_ID) REFERENCES Food_Categories;
-- Supercategory_ID int4 REFERENCES Categories, 
-- 	Category_ID SERIAL NOT NULL PRIMARY KEY, 


INSERT INTO Food_Categories(Name) VALUES ('Protein');
INSERT INTO Food_Categories(Name) VALUES ('Vegetables');
INSERT INTO Food_Categories(Name) VALUES ('Fruits');
INSERT INTO Food_Categories(Name) VALUES ('Grains');
INSERT INTO Food_Categories(Name) VALUES ('Diary');
INSERT INTO Food_Categories(Name) VALUES ('Oil');
INSERT INTO Food_Categories(Name, Supercategory_ID) VALUES ('Seafood', 1);
INSERT INTO Food_Categories(Name, Supercategory_ID) VALUES ('Meats', 1);
INSERT INTO Food_Categories(Name, Supercategory_ID) VALUES ('Nuts', 1);
INSERT INTO Food_Categories(Name, Supercategory_ID) VALUES ('Dark Green', 2);

DROP TABLE IF EXISTS Ingredients_Food_Categories CASCADE;

CREATE TABLE Ingredients_Food_Categories (
  Ingredient_ID int4 NOT NULL REFERENCES Ingredients_100g, 
  Category_ID   int4 NOT NULL REFERENCES Food_Categories, 
  PRIMARY KEY (Ingredient_ID, 
  Category_ID)
  );

INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (2, 1);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (2, 7);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (7, 10);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (7, 2);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (1, 1);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (3, 1);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (3, 8);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (4, 4);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (5, 3);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (7, 3);

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
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Snack 1');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Snack 2');
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

INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (1, 2, 210);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (1, 7, 85);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (2, 3, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (3, 5, 160);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (3, 2, 5);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (3, 1, 10);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (4, 7, 200);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (5, 6, 20);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (6, 5, 30);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (6, 7, 45);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (7, 7, 77);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (8, 7, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (9, 7, 30);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (10, 7, 10);

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
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (4, 10);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (5, 4);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (5, 5);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (5, 6);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (6, 9);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (7, 8);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (8, 7);
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

-- Diet_Details (View)

CREATE VIEW Diet_Details AS
select diet_type, diet_id, meal_id, meal_type, dish_id, dish_name, ingredient_id, ingredients_100g.name, amount_g, energy_kc, protein_g, fat_g, carbonhydrate_g, sugars_g from diets natural join diets_meals natural join meals_dishes natural join dishes natural join dishes_ingredients natural join ingredients_100g order by diet_id, meal_id, dish_id;

CREATE VIEW Meal_Details AS
select meal_id, dish_id, dish_name, ingredient_id, ingredients_100g.name, amount_g, energy_kc, protein_g, fat_g, carbonhydrate_g, sugars_g from meals_dishes natural join dishes natural join dishes_ingredients natural join ingredients_100g order by meal_id;

DROP VIEW IF EXISTS Dish_Details;

CREATE VIEW Dish_Details AS
select dish_id, dish_name, ingredient_id, ingredients_100g.name, amount_g, energy_kc, protein_g, fat_g, carbonhydrate_g, sugars_g from dishes natural join dishes_ingredients natural join ingredients_100g order by dish_id;

--  ***************************** SHOW DATA *****************************
SELECT * FROM Ingredients_100g;
SELECT * FROM Dishes;

-- Food Category

select a.name Category, b.name Subcategory from Food_Categories a, Food_Categories b WHERE b.supercategory_id = a.category_id;

-- Dishes in meals
select meals.meal_id, dishes.dish_name from meals_dishes join meals on meals_dishes.meal_id = meals.meal_id join dishes on meals_dishes.dish_id = dishes.dish_id;

-- Diets

select diet_type, diet_id, meal_type, Dish_Name from diets natural join diets_meals natural join meals natural join meals_dishes natural join dishes
order by diet_id, 
	case meal_type   
    when 'Breakfast' then 1
    when 'Lunch' then 2
    when 'Dinner' then 3
    when 'Fruits' then 4
    when 'Snacks' then 5
    end;

-- Daily Intake References
 select * from daily_intake_references;
-- Dish Energy List
 select dish_id, sum(energy_kc) as energy from dishes_ingredients natural join ingredients_100g group by dish_id order by dish_id;
 -- Meal Energy List
 select meal_id, sum(energy_kc) as energy from meals_dishes natural join dishes_ingredients natural join ingredients_100g group by meal_id order by meal_id;
 -- Diet Energy List
 select diet_id, sum(energy_kc) as energy from diets_meals natural join meals_dishes natural join dishes_ingredients natural join ingredients_100g GROUP BY diet_id order by diet_id;
-- Seafood
select dish_name, food_categories.name from dishes natural join dishes_ingredients natural join ingredients_food_categories natural join food_categories where name = 'Seafood';
-- High energy diet searching
select diet_id, sum(energy_kc) as energy from diets_meals natural join meals_dishes natural join dishes_ingredients natural join ingredients_100g GROUP BY diet_id having sum(energy_kc) > (select energy_kc from daily_intake_references where di_id = 1);

-- Join view and categories
select * from Dish_details natural join Ingredients_Food_Categories a join Food_Categories b on a.category_id = b.category_id where b.name = 'Seafood';

/* Data Source
Diets
FULL [Sample meal plan for men | Eat For Health](https://www.eatforhealth.gov.au/food-essentials/how-much-do-we-need-each-day/sample-meal-plan-men)
[DASH饮食法，USNEWS 综合排名第一的饮食法 - Thinlong的文章 - 知乎专栏](https://www.evernote.com/shard/s36/nl/3952316/180192f0-cd81-4874-8301-cf84ca86805e/)
[What A Healthy (And Achievable) 7 Day Meal Plan Looks Like](http://www.huffingtonpost.com.au/2016/12/12/what-a-healthy-and-achievable-7-day-meal-plan-looks-like_a_21626472/)

ref [Healthy Weight-Loss & Diet Recipes - EatingWell](http://www.eatingwell.com/recipes/18045/weight-loss-diet/)
[Healthy recipes | BBC Good Food](https://www.bbcgoodfood.com/recipes/category/healthy)
*/
