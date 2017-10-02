-- Introduction

-- Reset
drop schema public cascade;
create schema public;

DROP TABLE Ingredients_100g CASCADE; -- IF EXISTS

CREATE TABLE Ingredients_100g (
  Ingredient_ID   SERIAL NOT NULL PRIMARY KEY, 
  Ingredient_Name            varchar(255) NOT NULL UNIQUE, 
  Energy_kc       float4 NOT NULL, 
  Energy_pct      int2 CHECK (Energy_pct >= 0),
  Protein_g       float4 CHECK (Protein_g >= 0), 
  Protein_pct     int2 CHECK (Protein_pct >= 0),
  Fat_g           float4 CHECK (Fat_g >= 0), 
  Fat_pct         int2 CHECK (Fat_pct > 0),
  Carbonhydrate_g float4 CHECK (Carbonhydrate_g >= 0), 
  Carbonhydrate_pct int2 CHECK (Carbonhydrate_pct >= 0), 
  Sugars_g        float4 CHECK (Sugars_g >= 0),
  Sugars_pct      int2 CHECK (Sugars_pct >= 0),
  DI_ID int4 REFERENCES Daily_Intake_References
--     , CONSTRAINT "Positive Energy" 
--     CHECK (Energy_kC >= 0),
--   CONSTRAINT "Positive Protein" 
--     CHECK (Protein_g >= 0), 
--   CONSTRAINT "Positive Fat" 
--     CHECK (Fat_g >= 0),
--   CONSTRAINT "Positive Carbonhydrate" 
--     CHECK (Carbonhydrate_g >= 0),
--   CONSTRAINT "Positive Sugars" 
--     CHECK (Sugars_g >= 0)
);

INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Egg', 143, 12.56, 9.51, 0.72, 0.37, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Salmon, Atlantic, wild, raw', 142, 19.84, 6.34, 0, 0, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Beef, Australian, imported, grass-fed, seam fat, raw', 562, 9.58, 57.73, 1.06, 0, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Brown Rice', 160, 3, 1.5, 33, 0, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Avocados, raw, all commercial varieties', 240, 3, 21.99, 12.79, 0.99, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Oranges, raw, all commercial varieties', 85, 1.69, 0.22, 21.15, 16.83, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Mangos, raw', 60, 0.82, 0.38, 14.98, 13.66, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Margarine, regular, hard, soybean (hydrogenated)', 719, 0.9, 80.5, 10.9, 0.0, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Bread, multi-grain, toasted (includes whole-grain)', 288, 14.52, 4.6, 47.11, 6.94, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Chickpeas', 364, 19, 6, 61, 11, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Tomatoes, red, ripe, raw, year round average', 18, 0.88, 0.2, 3.89, 2.63, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Apples, raw, with skin', 52, 0.26, 0.17, 13.81, 10.39, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Caffe Latte, Skinny w. skim milk, no added sugar', 128, 12.8, 0.4, 18.4, 18.4, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Cheese, cheddar', 404, 20.87, 33.31, 3.09, 0.48, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Trail mix, regular, unsalted', 462, 13。8, 29.4, 44.9, 0, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Olive', 884, 0, 100, 0, 0, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Potatoes, flesh and skin, raw', 77, 2.05, 0.09, 17.49, 0.82, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Carrots, raw', 41, 0.93, 0.24, 9.58, 4.74, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Broccoli, raw', 34, 2.82, 0.37, 6.64, 1.7, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Lamb, Australian, imported, fresh, separable fat, raw', 648, 6.27, 68.87, 0, 0, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Pasta, fresh-refrigerated, plain, cooked', 131, 5.15, 1.05, 24.93, 0, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Kidney, all types, mature seeds, raw', 333, 23.58, 0.83, 60.01, 2.23, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Sweet potato, raw, unprepared', 86, 1.57, 0.05, 20.12, 4.18, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Lemons, raw, without peel', 29, 1.1, 0.3, 9.32, 2.5, 1);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('Tuna, fresh, bluefin, cooked, dry heat', 184, 29.91, 6.28, 0, 0, 1);
-- INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('', , , , , );

UPDATE Ingredients_100g SET Energy_pct = 100 * (Energy_kc / (SELECT DISTINCT di.Energy_kC FROM Daily_Intake_References as di, Ingredients_100g as b WHERE di.DI_ID = b.DI_ID));

DROP TABLE Food_Categories CASCADE;

CREATE TABLE Food_Categories (
  Category_ID      SERIAL NOT NULL PRIMARY KEY, 
  Name             varchar(255) NOT NULL UNIQUE, 
  Supercategory_ID int4 REFERENCES Food_Categories);
-- Supercategory_ID int4 REFERENCES Food_Categories, 
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

DROP TABLE Ingredients_Food_Categories CASCADE;

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

DROP TABLE Dishes CASCADE;

CREATE TABLE Dishes (
  Dish_ID SERIAL NOT NULL, 
  Dish_Name    varchar(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Dish_ID));

INSERT INTO Dishes (Dish_Name) VALUES ('Mango Teriyaki Salmon');
INSERT INTO Dishes (Dish_Name) VALUES ('Cajun Chicken With Sweet Potato Wedges And Avocado Salad');
INSERT INTO Dishes (Dish_Name) VALUES ('Greek Lemon Pasta And Tuna Salad');
INSERT INTO Dishes (Dish_Name) VALUES ('Boiled Brown Rice');
INSERT INTO Dishes (Dish_Name) VALUES ('Avocados, Apples');
INSERT INTO Dishes (Dish_Name) VALUES ('Wholegrain toast with polyunsaturated margarine');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish 2');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish 3');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish 4');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Grain 1');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Grain 2');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Fruit 1');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Fruit 2');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Snack 1');
INSERT INTO Dishes (Dish_Name) VALUES ('Dish Snack 2');



DROP TABLE Dishes_Ingredients CASCADE;

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

DROP TABLE Meals CASCADE;

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
DROP TABLE Meals_Dishes CASCADE;

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

DROP TABLE Diets CASCADE;

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

DROP TABLE Diets_Meals CASCADE;

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

DROP TABLE Daily_Intake_References CASCADE;

CREATE TABLE Daily_Intake_References (
  DI_ID           SERIAL NOT NULL, 
  DI_Name         varchar(255) NOT NULL UNIQUE, 
  Gender          varchar(255), 
  Age_Min          int2, 
  Age_Max          int2, 
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
  Gender, 
  Energy_kc, 
  Protein_g, 
  Fat_g, 
  Carbonhydrate_g, 
  Sugars_g) 
VALUES 
  ('Australian Daily Intake for Average Women', 
  'Female',
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

DROP VIEW Diet_Details;

CREATE VIEW Diet_Details AS
select diet_type, diet_id, meal_id, meal_type, dish_id, dish_name, ingredient_id, Ingredient_Name, amount_g, energy_kc, protein_g, fat_g, carbonhydrate_g, sugars_g from diets natural join diets_meals natural join meals_dishes natural join dishes natural join dishes_ingredients natural join ingredients_100g order by diet_id, meal_id, dish_id;

DROP VIEW Meal_Details;

CREATE VIEW Meal_Details AS
select meal_id, dish_id, dish_name, ingredient_id, Ingredient_Name, amount_g, energy_kc, protein_g, fat_g, carbonhydrate_g, sugars_g from meals_dishes natural join dishes natural join dishes_ingredients natural join ingredients_100g order by meal_id;

DROP VIEW Dish_Details;

CREATE VIEW Dish_Details AS
select dish_id, dish_name, ingredient_id, Ingredient_Name, amount_g, energy_kc, protein_g, fat_g, carbonhydrate_g, sugars_g from dishes natural join dishes_ingredients natural join ingredients_100g order by dish_id;

--  ***************************** SHOW DATA *****************************
SELECT * FROM Ingredients_100g;
SELECT * FROM Dishes;
select * from meals;

-- Food Category

select a.name as Category, b.name as Subcategory from Food_Categories a, Food_Categories b WHERE b.supercategory_id = a.category_id;

-- Dishes in meals
select meals.meal_id, dish_name from meals_dishes join meals on meals_dishes.meal_id = meals.meal_id join dishes on meals_dishes.dish_id = dishes.dish_id;

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

Category [鸡蛋吃多了对人体有害吗？ - 知乎](https://www.zhihu.com/question/20637590)
[Category:Foods - Wikipedia](https://en.wikipedia.org/wiki/Category:Foods)

food search
[Food Composition Databases Show Foods List](https://ndb.nal.usda.gov/ndb/search/list)
ref [Healthy Weight-Loss & Diet Recipes - EatingWell](http://www.eatingwell.com/recipes/18045/weight-loss-diet/)
[Healthy recipes | BBC Good Food](https://www.bbcgoodfood.com/recipes/category/healthy)
DI [Daily Intake Guide: Healthy eating, made easy. Front-of-pack labelling for food and drink in Australia. - Daily Intake Levels](http://www.mydailyintake.net/daily-intake-levels)
Diff Groups[Australian Dietary Guidelines: Recommended daily intakes | Nutrition Australia](http://www.nutritionaustralia.org/national/resource/australian-dietary-guidelines-recommended-daily-intakes)
[Nutrition guidelines | Australian Healthy Food Guide](http://www.healthyfoodguide.com.au/resources/nutrition-guidelines)
*/
