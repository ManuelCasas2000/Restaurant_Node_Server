DROP TABLE Dishes;
DROP TABLE DishLists;
DROP TABLE DishDetails;


CREATE TABLE IF NOT EXISTS Dishes(
    id INTEGER PRIMARY KEY,
    name VARCHAR (50) NOT NULL,
    idMeal INTEGER NOT NULL,
    cathegory VARCHAR (20) NOT NULL,
    texto VARCHAR (100) NOT NULL,
    instructions VARCHAR (200) NOT NULL,
    ingredients VARCHAR (200) NOT NULL,
    gluten VARCHAR(2) NOT NULL,
    price INTEGER NOT NULL,
    createdAt timestamp,
    updatedAt timestamp);
	

CREATE TABLE IF NOT EXISTS DishLists (
	id INTEGER PRIMARY KEY,
    name VARCHAR (50) NOT NULL,
    idMeal INTEGER NOT NULL,
    cathegory VARCHAR (20) NOT NULL,
    texto VARCHAR (100) NOT NULL,
	image VARCHAR (150) NOT NULL,
	createdAt timestamp,
    updatedAt timestamp);
	
	
insert into DishLists (id,name,idMeal,cathegory,texto,image) 
values (1,"Chilli prawn linguine",52839,"Pasta",
"Our delicious chilli, prawn and garlic linguine recipe is elegant enough for a dinner party but light enough to be enjoyed for dinner during the week",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1677168482/restaurant/qitsotv32rv7wqc2xksq.jpg");
	
insert into DishLists (id,name,idMeal,cathegory,texto,image) 
values (2,"Fettuccine Alfredo",53064,"Pasta",
"Fettuccine Alfredo is one of the most basic and delicious pasta recipes EVER—and it couldn't be easier to make! Our recipe is a little untraditional (there's heavy cream) but it's just as easy to whip up as the rest. In fact, it's so easy you can memorize it! Half a cup butter, cheese, and cream is all you need to make this luscious sauce. (Well, plus some pasta water, but that doesn't really count.",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924278/restaurant/xmpygka5igi3rvqkjfi7.jpg");

insert into DishLists (id,name,idMeal,cathegory,texto,image) 
values (4,"Grilled Mac and Cheese Sandwich",52829,"Pasta",
"Grilled cheese and mac and cheese collide in this glorious",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924356/restaurant/cygafcrvzcqg2ea8thrs.jpg");

insert into DishLists (id,name,idMeal,cathegory,texto,image) 
values (5,"Lasagna Sandwiches",52987,"Pasta",
"Lasagna Sandwiches and cheese collide in this glorious",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924429/restaurant/tb7bopdrtsshbeb4crpo.jpg");

insert into DishLists (id,name,idMeal,cathegory,texto,image) 
values (6,"Pilchard puttanesca",52837,"Pasta",
"Raid the storecupboard and knock up this tomato-based Italian pasta supper in twenty minutes.",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924494/restaurant/ydfbsnymfp7umnp5ppum.jpg");

insert into DishLists (id,name,idMeal,cathegory,texto,image) 
values (7,"Baked salmon with fennel & tomatoes",52959,"Seafood",
"Aniseedy fennel and juicy cherry tomatoes cut through the richness of salmon fillets",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924572/restaurant/akfbu9lrwklcaej3or3i.jpg");

insert into DishLists (id,name,idMeal,cathegory,texto,image) 
values (8, "Cajun spiced fish tacos", "52819","Seafood",
"Cooking in a cajun spice and cayenne pepper arinade makes this fish super succulent and flavoursome. Top with a zesty dressing and serve in a tortilla for a quick, fuss-free main that's delightfully summery.",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924636/restaurant/qldqn2goe16e4drpgqbg.jpg");

insert into DishLists (id,name,idMeal,cathegory,texto,image) 
values (9, "Escovitch Fish","52944","Seafood",
"Jamaican Escovitch Fish paired with Bammy – tart, spicy, and slightly sweet sauce and vegetables topped on perfectly fried red snapper.",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924685/restaurant/uuo2nu31ihhmvznyh8bi.jpg");


	
CREATE TABLE IF NOT EXISTS DishDetails (
	id INTEGER NOT NULL,
    name VARCHAR (50) NOT NULL,
	image VARCHAR (100) NOT NULL,
    idMeal INTEGER PRIMARY KEY,
    cathegory VARCHAR (20) NOT NULL,
    texto VARCHAR (100) NOT NULL,
	instructions VARCHAR (500) NOT NULL,
	ingredients VARCHAR (500) NOT NULL,
	gluten VARCHAR (2) NOT NULL,
	price INTEGER NOT NULL,
	createdAt timestamp,
    updatedAt timestamp);
	
insert into DishDetails (id, name, image, idMeal, cathegory, texto, instructions, ingredients, gluten, price)
values (1,
"Chilli prawn linguine",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1677168482/restaurant/qitsotv32rv7wqc2xksq.jpg",
52839,
"Pasta",
"Our delicious chilli, prawn and garlic linguine recipe is elegant enough for a dinner party but light enough to be enjoyed for dinner during the week",
"Mix the dressing ingredients in a small bowl and season with salt and pepper. Set aside.\r\n\r\nCook the pasta according to the packet instructions. Add the sugar snap peas for the last minute or so of cooking time.\r\n\r\nMeanwhile, heat the oil in a wok or large frying pan, toss in the garlic and chilli and cook over a fairly gentle heat for about 30 seconds without letting the garlic brown. Tip in the prawns and cook over a high heat, stirring frequently, for about 3 minutes until they turn pink.\r\n\r\nAdd the tomatoes and cook, stirring occasionally, for 3 minutes until they just start to soften. Drain the pasta and sugar snaps well, then toss into the prawn mixture. Tear in the basil leaves, stir, and season with salt and pepper.\r\n\r\nServe with salad leaves drizzled with the lime dressing, and warm crusty bread.",
"Linguine Pasta, Sugar Snap Peas, Olive Oil, Garlic Clove, Red Chilli, King Prawns, Cherry Tomatoes, Basil Leaves, Lettuce, Bread, Fromage Frais, Lime, Caster Sugar.",
"si",
30);

insert into DishDetails (id, name, image, idMeal, cathegory, texto, instructions, ingredients, gluten, price)
values (2,
"Fettuccine Alfredo",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924278/restaurant/xmpygka5igi3rvqkjfi7.jpg",
53064,
"Pasta",
"Fettuccine Alfredo is one of the most basic and delicious pasta recipes EVER—and it couldn't be easier to make! Our recipe is a little untraditional (there's heavy cream) but it's just as easy to whip up as the rest. In fact, it's so easy you can memorize it! Half a cup butter, cheese, and cream is all you need to make this luscious sauce. (Well, plus some pasta water, but that doesn't really count.",
"Fettuccine Alfredo is one of the most basic and delicious pasta recipes EVER—and it couldn't be easier to make! Our recipe is a little untraditional (there's heavy cream) but it's just as easy to whip up as the rest. In fact, it's so easy you can memorize it! Half a cup butter, cheese, and cream is all you need to make this luscious sauce. (Well, plus some pasta water, but that doesn't really count. Cook pasta according to package instructions in a large pot of boiling water and salt. Add heavy cream and butter to a large skillet over medium heat until the cream bubbles and the butter melts. Whisk in parmesan and add seasoning (salt and black pepper). Let the sauce thicken slightly and then add the pasta and toss until coated in sauce. Garnish with parsley, and it's ready.",
"Fettuccine, Heavy Cream, Butter, Parmesan, Parsley, Black Pepper",
"no",
"25");

insert into DishDetails (id, name, image, idMeal, cathegory, texto, instructions, ingredients, gluten, price)
values (4,
"Grilled Mac and Cheese Sandwich",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924356/restaurant/cygafcrvzcqg2ea8thrs.jpg",
52829,
"Pasta",
"Grilled cheese and mac and cheese collide in this glorious",
"Make the mac and cheese\r\n\r\n1. Bring a medium saucepan of generously salted water (you want it to taste like seawater) to a boil. Add the pasta and cook, stirring occasionally, until al dente, 8 to 10 minutes, or according to the package directions. The pasta should be tender but still chewy.\r\n2. While the pasta is cooking, in a small bowl, whisk together the flour, mustard powder, garlic powder, salt, black pepper, and cayenne pepper.\r\n3. Drain the pasta in a colander. Place the empty pasta pan (no need to wash it) over low heat and add the butter. When the butter has melted, whisk in the flour mixture and continue to cook, whisking frequently, until the mixture is beginning to brown and has a pleasant, nutty aroma, about 1 minute. Watch carefully so it does not scorch on the bottom of the pan.\r\n4. Slowly whisk the milk and cream into the flour mixture until everything is really well combined. Cook, whisking constantly, until the sauce is heated through and just begins to thicken, about 2 minutes. Remove from the heat.",
"Macaroni, Plain Flour, Mustard Powder, Garlic powder, Kosher salt, Black pepper, Cayenne pepper, Butter, Whole Milk, Heavy Cream, Monterey Jack Cheese, Butter, garlic powder, Bread, Cheddar Cheese, Colby Jack Cheese, Butter.",
"si",
"20");

insert into DishDetails (id, name, image, idMeal, cathegory, texto, instructions, ingredients, gluten, price)
values (5,
"Lasagna Sandwiches",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924429/restaurant/tb7bopdrtsshbeb4crpo.jpg",
52987,
"Pasta",
"Lasagna Sandwiches and cheese collide in this glorious",
"In a small bowl, combine the first four ingredients; spread on four slices of bread. Layer with bacon, tomato and cheese; top with remaining bread.\r\n\r\n2. In a large skillet or griddle, melt 2 tablespoons butter. Toast sandwiches until lightly browned on both sides and cheese is melted, adding butter if necessary.\r\n\r\nNutrition Facts\r\n1 sandwich: 445 calories, 24g fat (12g saturated fat), 66mg cholesterol, 1094mg sodium, 35g carbohydrate (3g sugars, 2g fiber), 21g protein.",
"Sour Cream, Chopped Onion, Dried Oregano, Salt, Bread, Bacon, Tomato, Mozzarella",
"no",
"18");

insert into DishDetails (id, name, image, idMeal, cathegory, texto, instructions, ingredients, gluten, price)
values (6,
"Pilchard puttanesca",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924494/restaurant/ydfbsnymfp7umnp5ppum.jpg",
52837,
"Raid the storecupboard and knock up this tomato-based Italian pasta supper in twenty minutes.",
"Pasta",
"Cook the pasta following pack instructions. Heat the oil in a non-stick frying pan and cook the onion, garlic and chilli for 3-4 mins to soften. Stir in the tomato purée and cook for 1 min, then add the pilchards with their sauce. Cook, breaking up the fish with a wooden spoon, then add the olives and continue to cook for a few more mins.\r\n\r\nDrain the pasta and add to the pan with 2-3 tbsp of the cooking water. Toss everything together well, then divide between plates and serve, scattered with Parmesan.",
"Spaghetti, Olive Oil, Onion, Garlic, Red Chilli, Tomato Puree, Pilchards, Black Olives, Parmesan",
"si",
"19");





insert into DishDetails (id, name, image, idMeal, cathegory, texto, instructions, ingredients, gluten, price)
values (7,
"Baked salmon with fennel & tomatoes",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924572/restaurant/akfbu9lrwklcaej3or3i.jpg",
52959,
"Aniseedy fennel and juicy cherry tomatoes cut through the richness of salmon fillets",
"Seafood",
"Heat oven to 180C/fan 160C/gas 4. Trim the fronds from the fennel and set aside. Cut the fennel bulbs in half, then cut each half into 3 wedges. Cook in boiling salted water for 10 mins, then drain well. Chop the fennel fronds roughly, then mix with the parsley and lemon zest.\r\n\r\nSpread the drained fennel over a shallow ovenproof dish, then add the tomatoes. Drizzle with olive oil, then bake for 10 mins. Nestle the salmon among the veg, sprinkle with lemon juice, then bake 15 mins more until the fish is just cooked. Scatter over the parsley and serve. Nestle the salmon among the veg, sprinkle with lemon juice, then bake 15 mins more until the fish is just cooked. Scatter over the parsley and serve. Nestle the salmon among the veg, sprinkle with lemon juice, then bake 15 mins more until the fish is just cooked. Scatter over the parsley and serve.",
"Fennel, Parsley, Lemon, Cherry Tomatoes, Olive Oil, Salmon, Black Olives",
"si",
"34");

insert into DishDetails (id, name, image, idMeal, cathegory, texto, instructions, ingredients, gluten, price)
values (8,
"Cajun spiced fish tacos",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924636/restaurant/qldqn2goe16e4drpgqbg.jpg",
52819,
"Cooking in a cajun spice and cayenne pepper arinade makes this fish super succulent and flavoursome. Top with a zesty dressing and serve in a tortilla for a quick, fuss-free main that's delightfully summery.",
"Seafood",
"Cooking in a cajun spice and cayenne pepper marinade makes this fish super succulent and flavoursome. Top with a zesty dressing and serve in a tortilla for a quick, fuss-free main that's delightfully summery.\r\n\r\nOn a large plate, mix the cajun spice and cayenne pepper with a little seasoning and use to coat the fish all over.\r\n\r\nHeat a little oil in a frying pan, add in the fish and cook over a medium heat until golden. Reduce the heat and continue frying until the fish is cooked through, about 10 minutes. Cook in batches if you don’t have enough room in the pan.\r\n\r\nMeanwhile, prepare the dressing by combining all the ingredients with a little seasoning.\r\nSoften the tortillas by heating in the microwave for 5-10 seconds. Pile high with the avocado, lettuce and spring onion, add a spoonful of salsa, top with large flakes of fish and drizzle over the dressing.",
"cajun, cayenne pepper, white fish, vegetable oil, flour tortilla, avocado, little gem lettuce, spring onion, salsa, sour cream, lemon, garlic",
"si",
"24");


insert into DishDetails (id, name, image, idMeal, cathegory, texto, instructions, ingredients, gluten, price)
values (9,
"Escovitch Fish",
"http://res.cloudinary.com/dla3ofowl/image/upload/v1679924685/restaurant/uuo2nu31ihhmvznyh8bi.jpg",
52944,
"Seafood",
"Jamaican Escovitch Fish paired with Bammy – tart, spicy, and slightly sweet sauce and vegetables topped on perfectly fried red snapper.",
"inse fish; rub with lemon or lime, seasoned with salt and pepper or use your favorite seasoning. I used creole seasoning. Set aside or place in the oven to keep it warm until sauce is ready.\r\n\r\nIn large skillet heat oil over medium heat, until hot, add the fish, cook each side- for about 5-7 minutes until cooked through and crispy on both sides. Remove fish and set aside. Drain oil and leave about 2-3 tablespoons of oil\r\nAdd, bay leave, garlic and ginger, stir-fry for about a minute making sure the garlic does not burn\r\nThen add onion, bell peppers, thyme, scotch bonnet, sugar, all spice-continue stirring for about 2-3 minutes. Add vinegar, mix an adjust salt and pepper according to preference. Let it simmer for about 2 more minutes. \r\n\r\nDiscard bay leave, thyme spring and serve over fish with a side of this bammy. You may make the sauce about 2 days in advance.",
"Red Snapper, Vegetable Oil, Garlic, Ginger, Thyme, Bay Leaf, Red Pepper, Yellow Pepper, Onion, Carrots, Sugar, Allspice, Worcestershire Sauce, Scotch Bonnet, Lime, Malt Vinegar, Pepper",
"no",
"14");






insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (3,"Tercero",135,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"si",323);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (4,"Cuarto",136,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"no",100);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (5,"Quinto",137,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"si",323);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (6,"Sexto",138,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"si",30);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (7,"Septimo",139,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"no",399);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (8,"Tercero",140,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"si",323);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (9,"Noveno",141,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"si",123);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (10,"Decimo",142,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"si",113);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (11,"Decimoprimero",143,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"no",222);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (12,"Decimosegunfo",144,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"no",287);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (13,"Decimotercero",145,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"si",199);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (14,"Decimocuarto",146,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"no",111);

insert into Dishes (id,name,idMeal,cathegory,texto,instructions,ingredients,gluten,price) 
values (15,"Decimoquinto",147,"Categoria"
,"Texto ddfdsff","Instrucciones dfsdfsdf","Ingredientes dsfsdf"
,"no",69);


SELECT `id`, `name`, `idMeal`, `cathegory`, `texto`, `instructions`, `ingredients`, `gluten`, `price`, `createdAt`, `updatedAt` FROM `DishDetails` AS `DishDetails` WHERE `DishDetails`.`id` = '1';
