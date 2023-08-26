# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

recipes_data = [
    {
        title: 'Chorizo Sweet Potato Skillet',
        description: 'It only takes one skillet and a few ingredients to make this incredibly flavorful and filling Chorizo Sweet Potato Skillet.',
        link: 'https://www.budgetbytes.com/chorizo-sweet-potato-skillet/',
        instructions: [
            "Peel and dice the sweet potato into 1/2 to 3/4 inch cubes (size matters, make them small). Sauté the sweet potato cubes in a large skillet with olive oil over medium heat for about 5 minutes, or until the sweet potatoes have softened about half way through (they'll cook more later).", 
            "Add the chorizo to the skillet (squeeze it out of its casing if it came in links) with the sweet potatoes. Sauté the chorizo and sweet potatoes together, breaking the chorizo up into small pieces as it browns.", 
            "Once the chorizo is fully browned, pour off any excess grease if needed. Rinse and drain the black beans. Add the beans, salsa, and uncooked rice to the skillet. Stir them into the sweet potatoes and chorizo until everything is well combined.", 
            "Add the chicken broth, stir briefly, then place a lid on the skillet. Allow the contents of the skillet to come up to a boil, then turn the heat down to low. Let the skillet simmer on low for 30 minutes. Make sure it is simmering the whole time (you should be able to hear it quietly simmer away). If it is not, turn the heat up slightly.", 
            "After 30 minutes the rice should be tender and have absorbed all of the liquid. Turn off the heat, fluff the mixture, sprinkle the cheese on top, then return the lid to trap the residual heat and help the cheese melt. Slice the green onions while the cheese is melting, then sprinkle them on top and serve."
        ],
        ingredients: [
            { name: "olive oil", quantity: "1 Tbsp" },
            { name: "sweet potato", quantity: "1" },
            { name: "Mexican chorizo", quantity: "1/2 lb" },
            { name: "black beans", quantity: "15 oz" },
            { name: "uncooked long grain white rice", quantity: "1 cup" },
            { name: "salsa (red or green)", quantity: "1 cup" },
            { name: "chicken broth", quantity: "3/4 cup" },
            { name: "shredded cheese", quantity: "1 cup" },
            { name: "green onions, sliced", quantity: "2-3" }
        ]
    },
    {
        title: 'Miso Sweet Potato & Broccoli Bowl', 
        link: 'https://smittenkitchen.com/2013/10/miso-sweet-potato-and-broccoli-bowl/', 
        instructions: [
            "Heat oven to 400 degrees. Place rice or grain and cooking liquid in a rice cooker or on the stove. Cook according to package directions.",
            "Peel sweet potatoes and cut into 1-inch cubes. Cut tops off broccoli and separate into bite-sized florets. If your broccoli stems feel especially woody, I like to peel them (with the same vegetable peeler), then cut them into 1/2- to 1-inch segments.",
            "Coat one large or two smaller trays with a thin slick of olive oil. Layer sweet potatoes on tray(s) and sprinkle with salt and pepper. Roast for 20 minutes, until browning underneath. Flip and toss chunks around, then add broccoli to the tray(s), season again with salt and pepper, and roast for another 10 to 20 minutes, until broccoli is lightly charred at edges and sweet potato is fully bronzed and tender. Toss chunks around one more time if it looks like they’re cooking unevenly.",
            "In a small skillet, toast black and white sesame seeds until fragrant. (You can do this in the oven if using an oven-proof skillet.) Let cool.",
            "While vegetables roast, prepare sesame-miso dressing: Combine everything in a blender and run until smooth, scraping down sides once. Taste and adjust ingredients if needed, but try to resist adding more honey if it tastes salty, as that extra pop of saltiness is exactly what I think sweet potato needs.",
            "Assemble bowls: Scoop some rice/grains into each, then pile on the roasted sweet potatoes and broccoli. Coat lightly with sesame-miso dressing and finish with toasted sesame seed duo. Serve with extra dressing on the side."
        ],
    ingredients: [
        { name: "dried rice or another cooking grain of your choice", quantity: "1 cup" },
        { name: "sweet potatoes", quantity: "1-2 (about 1.5 lbs)" },
        { name: "broccoli", quantity: "1 large bundle (about 1 lb)" },
        { name: "olive oil", quantity: "1-2 Tbsp + 2 Tbsp (separated)" },
        { name: "kosher salt", quantity: "to taste" },
        { name: "black pepper", quantity: "to taste" },
        { name: "white sesame seeds", quantity: "1 tsp" },
        { name: "black sesame seeds", quantity: "1 tsp" },
        { name: "minced fresh ginger", quantity: "1 Tbsp" },
        { name: "garlic clove, minced", quantity: "1 small" },
        { name: "white miso", quantity: "2 Tbsp" },
        { name: "tahini", quantity: "2 Tbsp" },
        { name: "honey", quantity: "1 Tbsp" },
        { name: "rice vinegar", quantity: "1/4 cup" },
        { name: "toasted sesame oil", quantity: "2 Tbsp" },

    ]
    }
]

recipes_data.each do | recipe_data |
    recipe = Recipe.find_or_create_by(
        title: recipe_data[:title],
        description: recipe_data[:description],
        link: recipe_data[:link]
    )

    recipe_data[:instructions].each_with_index do | instruction, index |
        RecipeStep.find_or_create_by(
            recipe: recipe,
            instruction: instruction, 
            step_number: index + 1
        )
    end 

    recipe_data[:ingredients].each do | ingredient_data |
        ingredient = Ingredient.find_or_create_by(name: ingredient_data[:name])
        RecipeIngredient.find_or_create_by(
            recipe: recipe,
            ingredient: ingredient, 
            quantity: ingredient_data[:quantity]
        )
    end
end 