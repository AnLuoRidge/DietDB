-- Introduction

-- Reset
drop schema public cascade;
create schema public;

DROP TABLE Ingredients_100g CASCADE; -- IF EXISTS

CREATE TABLE Ingredients_100g (
  Ingredient_ID   SERIAL NOT NULL PRIMARY KEY, 
  Ingredient_Name            varchar(255) NOT NULL UNIQUE, 
  Energy_kc       float4 NOT NULL CHECK (Energy_kc >= 0), 
  Energy_pct      int2 CHECK (Energy_pct >= 0),
  Protein_g       float4 CHECK (Protein_g >= 0), 
  Protein_pct     int2 CHECK (Protein_pct >= 0), --  AND Protein_pct <= 100
  Fat_g           float4 CHECK (Fat_g >= 0), 
  Fat_pct         int2 CHECK (Fat_pct >= 0),
  Carbonhydrate_g float4 CHECK (Carbonhydrate_g >= 0), 
  Carbonhydrate_pct int2 CHECK (Carbonhydrate_pct >= 0), 
  Sugars_g        float4 CHECK (Sugars_g >= 0),
  Sugars_pct      int2 CHECK (Sugars_pct >= 0),
  DI_ID int4 REFERENCES Daily_Intake_References ON DELETE RESTRICT);
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
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Chicken, raw, Skinless, boneless breast', 114, 21.2, 2.6, 0, 0);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Reduced Fat Milk', 130, 8, 5, 13, 12);
INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Lettuce, green leaf, raw', 15, 1.36, 0.15, 2.87, 0.78);
UPDATE ingredients_100g SET DI_ID = 1;
-- INSERT INTO Ingredients_100g(Ingredient_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g, DI_ID) VALUES ('', , , , , );

UPDATE Ingredients_100g SET Energy_pct = 100 * (Energy_kc / (SELECT DISTINCT di.Energy_kC FROM Daily_Intake_References AS di, Ingredients_100g AS b WHERE di.DI_ID = b.DI_ID)), 
Fat_pct = 100 * (Fat_g / (SELECT DISTINCT di.fat_g FROM Daily_Intake_References AS di where di.DI_ID = 1)),
Protein_pct = 100 * (Protein_g / (SELECT DISTINCT di.Protein_g FROM Daily_Intake_References AS di, Ingredients_100g AS b WHERE di.DI_ID = b.DI_ID)),
Carbonhydrate_pct = 100 * (Carbonhydrate_g / (SELECT DISTINCT di.Carbonhydrate_g FROM Daily_Intake_References AS di, Ingredients_100g AS b WHERE di.DI_ID = b.DI_ID)),
Sugars_pct = 100 * (Sugars_g / (SELECT DISTINCT di.Sugars_g FROM Daily_Intake_References AS di, Ingredients_100g AS b WHERE di.DI_ID = b.DI_ID));


DROP TABLE Food_Categories CASCADE;

CREATE TABLE Food_Categories (
  Category_ID      SERIAL NOT NULL PRIMARY KEY, 
  Category_Name    varchar(255) NOT NULL UNIQUE, 
  Supercategory_ID int4 REFERENCES Food_Categories ON DELETE CASCADE);
-- Supercategory_ID int4 REFERENCES Food_Categories, 
-- 	Category_ID SERIAL NOT NULL PRIMARY KEY, 

INSERT INTO Food_Categories(Category_Name) VALUES ('Protein');
INSERT INTO Food_Categories(Category_Name) VALUES ('Vegetables');
INSERT INTO Food_Categories(Category_Name) VALUES ('Fruits');
INSERT INTO Food_Categories(Category_Name) VALUES ('Grains');
INSERT INTO Food_Categories(Category_Name) VALUES ('Diary');
INSERT INTO Food_Categories(Category_Name) VALUES ('Oil');
INSERT INTO Food_Categories(Category_Name, Supercategory_ID) VALUES ('Seafood', 1);
INSERT INTO Food_Categories(Category_Name, Supercategory_ID) VALUES ('Meats, Poultry, Eggs', 1);
INSERT INTO Food_Categories(Category_Name, Supercategory_ID) VALUES ('Nuts, Seeds, Soy Products', 1);
INSERT INTO Food_Categories(Category_Name, Supercategory_ID) VALUES ('Dark Green', 2);
INSERT INTO Food_Categories(Category_Name, Supercategory_ID) VALUES ('Red & Orange', 2);
INSERT INTO Food_Categories(Category_Name, Supercategory_ID) VALUES ('Legumes(Beans & Peas)', 2);
INSERT INTO Food_Categories(Category_Name, Supercategory_ID) VALUES ('Starchy', 2);
INSERT INTO Food_Categories(Category_Name, Supercategory_ID) VALUES ('Other', 2);
INSERT INTO Food_Categories(Category_Name, Supercategory_ID) VALUES ('Whole Grains', 4);
INSERT INTO Food_Categories(Category_Name, Supercategory_ID) VALUES ('Refined Grains', 4);


DROP TABLE Ingredients_Food_Categories CASCADE;

CREATE TABLE Ingredients_Food_Categories (
  Ingredient_ID int4 NOT NULL REFERENCES Ingredients_100g ON DELETE CASCADE, 
  Category_ID   int4 NOT NULL REFERENCES Food_Categories ON DELETE CASCADE, 
  PRIMARY KEY (Ingredient_ID, Category_ID)
  );

INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (1, 1);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (1, 8);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (2, 1);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (2, 7);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (3, 1);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (3, 8);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (4, 4);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (4, 15);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (5, 3);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (6, 3);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (7, 3);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (8, 5);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (9, 4);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (9, 4);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (10, 2);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (10, 12);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (11, 2);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (11, 11);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (12, 3);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (14, 5);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (16, 6);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (17, 2);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (17, 13);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (18, 2);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (18, 11);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (19, 2);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (19, 10);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (20, 1);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (20, 8);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (21, 4);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (21, 16);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (22, 2);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (22, 12);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (23, 2);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (23, 13);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (24, 3);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (25, 1);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (25, 7);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (26, 1);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (26, 8);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (27, 5);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (28, 2);
INSERT INTO Ingredients_Food_Categories(Ingredient_ID, Category_ID) VALUES (28, 14);

DROP TABLE Dishes CASCADE;

CREATE TABLE Dishes (
  Dish_ID SERIAL NOT NULL, 
  Dish_Name    varchar(255) NOT NULL UNIQUE, 
  PRIMARY KEY (Dish_ID));

INSERT INTO Dishes (Dish_Name) VALUES ('Mango Teriyaki Salmon');
INSERT INTO Dishes (Dish_Name) VALUES ('Cajun Chicken With Sweet Potato Wedges And Avocado Salad');
INSERT INTO Dishes (Dish_Name) VALUES ('Greek Lemon Pasta And Tuna Salad');
INSERT INTO Dishes (Dish_Name) VALUES ('Boiled Brown Rice');
INSERT INTO Dishes (Dish_Name) VALUES ('Avocados and Apples');
INSERT INTO Dishes (Dish_Name) VALUES ('Wholegrain toast with polyunsaturated margarine');
INSERT INTO Dishes (Dish_Name) VALUES ('Baked Beans');
INSERT INTO Dishes (Dish_Name) VALUES ('Glass of Lite Milk');
INSERT INTO Dishes (Dish_Name) VALUES ('Wholegrain sandwich with roast beef, reduced fat cheese');
INSERT INTO Dishes (Dish_Name) VALUES ('Fish prepared with olive oil');
INSERT INTO Dishes (Dish_Name) VALUES ('Pasta with beef mince and red kidney beans, tomato');
INSERT INTO Dishes (Dish_Name) VALUES ('Vegetable salad');
INSERT INTO Dishes (Dish_Name) VALUES ('Sandwich with salad and chicken');
INSERT INTO Dishes (Dish_Name) VALUES ('A cup of Latte');
INSERT INTO Dishes (Dish_Name) VALUES ('Chickpea patties with carrot & raisin salad');
INSERT INTO Dishes (Dish_Name) VALUES ('Roast Chicken');
INSERT INTO Dishes (Dish_Name) VALUES ('Roast Beef');
INSERT INTO Dishes (Dish_Name) VALUES ('Roast Lamb');
INSERT INTO Dishes (Dish_Name) VALUES ('Smoked Salmon');
INSERT INTO Dishes (Dish_Name) VALUES ('Fruit Salad');


DROP TABLE Dishes_Ingredients CASCADE;

CREATE TABLE Dishes_Ingredients (
  Dish_ID       int4 NOT NULL REFERENCES Dishes ON DELETE CASCADE, 
  Ingredient_ID int4 NOT NULL REFERENCES Ingredients_100g ON DELETE CASCADE, 
  Amount_g      int2 CHECK (Amount_g > 0), 
  PRIMARY KEY (Dish_ID, 
  Ingredient_ID));
-- ALTER TABLE Dishes_Ingredients ADD CONSTRAINT FKDishes_Ing873133 FOREIGN KEY (Ingredient_ID) REFERENCES Ingredients_100g (Ingredient_ID);
-- ALTER TABLE Dishes_Ingredients ADD CONSTRAINT FKDishes_Ing227351 FOREIGN KEY (Dish_ID) REFERENCES Dishes (Dish_ID);

-- https://www.woolworths.com.au/Shop/RecipeDetail/5159/mango-teriyaki-salmon
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (1, 4, 300);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (1, 7, 200);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (1, 2, 480);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (1, 19, 250);
-- https://www.woolworths.com.au/shop/recipedetail/5368/cajun-chicken-with-sweet-potato-wedges-and-avocado-salad
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (2, 26, 200);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (2, 23, 200);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (2, 11, 250);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (2, 5, 80);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (2, 24, 100);
-- https://www.woolworths.com.au/shop/recipedetail/5053/greek-lemon-pasta-and-tuna-salad
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (3, 21, 300);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (3, 25, 425);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (3, 11, 200);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (4, 4, 100);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (5, 5, 100);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (5, 12, 100);
-- https://www.eatforhealth.gov.au/food-essentials/how-much-do-we-need-each-day/sample-meal-plan-men
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (6, 9, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (6, 8, 10);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (7, 10, 100);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (8, 27, 250);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (9, 3, 65);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (9, 9, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (9, 14, 20);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (10, 25, 100);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (10, 16, 14);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (11, 21, 100);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (11, 3, 65);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (11, 22, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (11, 11, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (12, 11, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (12, 17, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (12, 18, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (12, 19, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (12, 24, 20);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (12, 16, 20);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (12, 28, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (13, 11, 20);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (13, 16, 20);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (13, 18, 20);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (13, 26, 60);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (13, 28, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (14, 13, 200);
-- https://www.bbcgoodfood.com/recipes/chickpea-patties-carrot-raisin-salad
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (15, 10, 400);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (15, 1, 70);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (15, 16, 20);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (16, 26, 100);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (17, 3, 100);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (18, 20, 100);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (19, 2, 100);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (20, 5, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (20, 6, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (20, 7, 50);
INSERT INTO Dishes_Ingredients(Dish_ID, Ingredient_ID, Amount_g) VALUES (20, 12, 50);




DROP TABLE Meals CASCADE;

CREATE TABLE Meals (
  Meal_ID SERIAL NOT NULL PRIMARY KEY,
  Dish_Num int2 CHECK (Dish_Num > 0)
  );


--INSERT INTO Meals (Dish_Num) VALUES (2);

-- INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));

DROP TABLE Meals_Dishes CASCADE;

CREATE TABLE Meals_Dishes (
  Meal_ID int4 NOT NULL, 
  Dish_ID int4 NOT NULL, 
  PRIMARY KEY (Meal_ID, 
  Dish_ID));
ALTER TABLE Meals_Dishes ADD CONSTRAINT FKMeals_Dish364667 FOREIGN KEY (Dish_ID) REFERENCES Dishes (Dish_ID) ON DELETE CASCADE;
ALTER TABLE Meals_Dishes ADD CONSTRAINT FKMeals_Dish694481 FOREIGN KEY (Meal_ID) REFERENCES Meals (Meal_ID) ON DELETE CASCADE;

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
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));
INSERT INTO Meals (Meal_ID) VALUES (nextval('meals_meal_id_seq'));


INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (1, 1);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (2, 2);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (3, 3);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (4, 4);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (4, 12);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (4, 7);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (5, 5);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (6, 6);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (6, 8);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (7, 7);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (8, 9);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (9, 10);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (10, 11);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (11, 12);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (11, 19);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (12, 13);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (13, 14);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (13, 6);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (14, 15);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (15, 16);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (16, 17);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (17, 18);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (18, 19);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (19, 20);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (19, 4);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (20, 20);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (21, 18);
INSERT INTO Meals_Dishes (Meal_ID, Dish_ID) VALUES (21, 17);

-- wihtout plpgsql permission, cannot use loop
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 1) WHERE Meal_ID = 1;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 2) WHERE Meal_ID = 2;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 3) WHERE Meal_ID = 3;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 4) WHERE Meal_ID = 4;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 5) WHERE Meal_ID = 5;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 6) WHERE Meal_ID = 6;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 7) WHERE Meal_ID = 7;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 8) WHERE Meal_ID = 8;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 9) WHERE Meal_ID = 9;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 10) WHERE Meal_ID = 10;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 11) WHERE Meal_ID = 11;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 12) WHERE Meal_ID = 12;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 13) WHERE Meal_ID = 13;
UPDATE Meals set Dish_Num = (SELECT count(*) FROM Meals_Dishes WHERE Meal_ID = 14) WHERE Meal_ID = 14;


DROP TABLE Diets CASCADE;

CREATE TABLE Diets (
  Diet_ID SERIAL NOT NULL, 
  Diet_Type varchar(255) CHECK (Diet_Type in ('Normal', 'Vegetarian', 'Carnivorous', 'DASH', 'Mediterranean'), 
  PRIMARY KEY (Diet_ID));

INSERT INTO Diets (Diet_Type) VALUES ('Normal');
INSERT INTO Diets (Diet_Type) VALUES ('Vegetarian');
INSERT INTO Diets (Diet_Type) VALUES ('Carnivorous');

DROP TABLE Diets_Meals CASCADE;

CREATE TABLE Diets_Meals (
  Diet_ID   int4 NOT NULL, 
  Meal_ID   int4 NOT NULL, 
  Meal_Type varchar(255) NOT NULL CHECK (meal_type in ('Breakfast', 'Dinner', 'Lunch', 'Snacks', 'Fruits')), 
  PRIMARY KEY (Diet_ID, 
  Meal_ID, Meal_Type));
ALTER TABLE Diets_Meals ADD CONSTRAINT FKDiets_Meal997521 FOREIGN KEY (Meal_ID) REFERENCES Meals (Meal_ID) ON DELETE CASCADE;
ALTER TABLE Diets_Meals ADD CONSTRAINT FKDiets_Meal516436 FOREIGN KEY (Diet_ID) REFERENCES Diets (Diet_ID) ON DELETE CASCADE;

INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (1, 1, 'Lunch');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (1, 2, 'Dinner');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (1, 13, 'Breakfast');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (1, 5, 'Fruits');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (1, 7, 'Snacks');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (2, 11, 'Breakfast');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (2, 11, 'Lunch');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (2, 19, 'Dinner');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (2, 20, 'Fruits');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (2, 7, 'Snacks');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (3, 17, 'Breakfast');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (3, 9, 'Lunch');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (3, 21, 'Dinner');
INSERT INTO Diets_Meals(Diet_ID, Meal_ID, Meal_Type) VALUES (3, 15, 'Snacks');


DROP TABLE Daily_Intake_References CASCADE;

CREATE TABLE Daily_Intake_References (
  DI_ID           SERIAL NOT NULL, 
  DI_Name         varchar(255) NOT NULL UNIQUE, 
  Gender          varchar(255) CHECK (Gender in ('Female', 'Male')), 
  Age_Min          int2 CHECK (Age_Min >= 0 AND Age_Min <= 100), 
  Age_Max          int2 CHECK (Age_Max >= 0 AND Age_Max <= 100), 
  Energy_kc       float4 NOT NULL CHECK (Energy_kc >= 0), 
  Protein_g       float4 NOT NULL CHECK (Protein_g >= 0), 
  Fat_g           float4 NOT NULL CHECK (Fat_g >= 0), 
  Carbonhydrate_g float4 NOT NULL CHECK (Carbonhydrate_g >= 0), 
  Sugars_g        float4 NOT NULL CHECK (Sugars_g >= 0), 
  PRIMARY KEY (DI_ID));

INSERT INTO Daily_Intake_References (DI_Name, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Australian Daily Intake for Average Adult', 2079.35, 50, 70, 310, 90);
INSERT INTO Daily_Intake_References (DI_Name,Gender, Energy_kc, Protein_g, Fat_g, Carbonhydrate_g, Sugars_g) VALUES ('Australian Daily Intake for Average Women', 'Female',2000, 50, 70, 310, 90);

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

--  ***************************** CREATE VIEWS *****************************

DROP VIEW Diet_Details;

CREATE VIEW Diet_Details AS
SELECT diet_type, diet_id, meal_id, meal_type, dish_id, dish_name, ingredient_id, Ingredient_Name, amount_g, energy_kc, protein_g, fat_g, carbonhydrate_g, sugars_g FROM diets natural JOIN diets_meals natural JOIN meals_dishes natural JOIN dishes natural JOIN dishes_ingredients natural JOIN ingredients_100g order by diet_id, meal_id, dish_id;

DROP VIEW Meal_Details;

CREATE VIEW Meal_Details AS
SELECT meal_id, dish_id, dish_name, ingredient_id, Ingredient_Name, amount_g, energy_kc, protein_g, fat_g, carbonhydrate_g, sugars_g FROM meals_dishes natural JOIN dishes natural JOIN dishes_ingredients natural JOIN ingredients_100g order by meal_id;

DROP VIEW Dish_Details;

CREATE VIEW Dish_Details AS
SELECT dish_id, dish_name, ingredient_id, Ingredient_Name, amount_g, energy_kc, protein_g, fat_g, carbonhydrate_g, sugars_g FROM dishes natural JOIN dishes_ingredients natural JOIN ingredients_100g order by dish_id;

--  ***************************** SHOW DATA *****************************

-- 1 Simple Query
-- Show part of the ingredient table.
SELECT ingredient_id, ingredient_name, energy_pct, protein_pct, Fat_pct, Carbonhydrate_pct, Sugars_pct 
FROM Ingredients_100g;

-- 2 NATURAL JOIN
-- Show the ingredients in each dish.
SELECT dish_id, dish_name, ingredient_name 
FROM dishes NATURAL JOIN dishes_ingredients NATURAL JOIN ingredients_100g 
ORDER BY dish_id;

-- 3 CROSS PRODUCT
SELECT d.dish_id, dish_name, ingredient_name 
FROM dishes AS d, dishes_ingredients AS di, ingredients_100g AS i
WHERE d.dish_id = di.dish_id 
AND di.ingredient_id = i.ingredient_id
ORDER BY d.dish_id;

-- 4 GROUP BY + HAVING
-- See which dish's energy is over 100 kC and contains Mango.
 SELECT * FROM dishes NATURAL JOIN (
     SELECT dish_id, sum(energy_kc) AS energy FROM dishes_ingredients NATURAL JOIN ingredients_100g
     WHERE ingredient_name LIKE '%Mango%'
     GROUP BY dish_id
     HAVING sum(energy_kc) < 100
     ORDER BY dish_id) AS foo;

-- 5 Subquery
-- Show the energy of carnivorous diets.
 SELECT diet_id, sum(energy_kc) AS energy FROM diets_meals NATURAL JOIN meals_dishes NATURAL JOIN dishes_ingredients NATURAL JOIN ingredients_100g 
 GROUP BY diet_id  
 HAVING diet_id IN (
     SELECT diet_id 
     FROM diets 
     WHERE diet_type = 'Carnivorous'
     )
 ORDER BY diet_id;

-- 6 CROSS PRODUCT (cannot be implemented using the words “natural JOIN”)
-- Show the subcategory of each category
SELECT a.Category_name AS Category, b.Category_name AS Subcategory 
FROM Food_Categories a, Food_Categories b 
WHERE b.supercategory_id = a.category_id;










-- Dishes in meals
SELECT meals.meal_id, dish_name 
FROM meals_dishes JOIN meals ON meals_dishes.meal_id = meals.meal_id JOIN dishes on meals_dishes.dish_id = dishes.dish_id;

-- Diets

SELECT diet_type, diet_id, meal_type, Dish_Name FROM diets natural JOIN diets_meals natural JOIN meals natural JOIN meals_dishes natural JOIN dishes
order by diet_id, 
	case meal_type   
    when 'Breakfast' then 1
    when 'Lunch' then 2
    when 'Dinner' then 3
    when 'Fruits' then 4
    when 'Snacks' then 5
    end;

-- Daily Intake References
 SELECT * FROM daily_intake_references;
-- Dish Energy List
 SELECT * FROM dishes natural JOIN (SELECT dish_id, sum(energy_kc) AS energy FROM dishes_ingredients natural JOIN ingredients_100g group by dish_id order by dish_id) AS foo;
 -- Meal Energy List
 SELECT meal_id, sum(energy_kc) AS energy FROM meals_dishes natural JOIN dishes_ingredients natural JOIN ingredients_100g group by meal_id order by meal_id;
 -- Diet Energy List
 SELECT diet_id, sum(energy_kc) AS energy FROM diets_meals natural JOIN meals_dishes natural JOIN dishes_ingredients natural JOIN ingredients_100g GROUP BY diet_id order by diet_id;
-- Seafood
SELECT dish_name, food_categories.Category_name AS "Contains" FROM dishes natural JOIN dishes_ingredients natural JOIN ingredients_food_categories natural JOIN food_categories where Category_name = 'Seafood';

-- High energy diet searching
SELECT diet_id, sum(energy_kc) AS energy FROM diets_meals natural JOIN meals_dishes natural JOIN dishes_ingredients natural JOIN ingredients_100g GROUP BY diet_id having sum(energy_kc) > (SELECT energy_kc FROM daily_intake_references where di_id = 1);

-- Join view and categories
SELECT * FROM Dish_details natural JOIN Ingredients_Food_Categories a JOIN Food_Categories b on a.category_id = b.category_id where b.Category_name = 'Seafood';

/* Data Source
Diets
[DASH饮食法，USNEWS 综合排名第一的饮食法 - Thinlong的文章 - 知乎专栏](https://www.evernote.com/shard/s36/nl/3952316/180192f0-cd81-4874-8301-cf84ca86805e/)

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

