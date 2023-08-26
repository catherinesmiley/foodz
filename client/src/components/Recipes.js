import React, { useState, useEffect } from 'react'

function Recipes() {
    const [recipes, setRecipes] = useState([]);

    useEffect(() => {
        fetch("/api/v1/recipes")
            .then((response) => response.json())
            .then((data) => setRecipes(data));
    }, []);

    return (
        <div>
            <h1>All Recipes</h1>
            {recipes.map((recipe) => (
                <div key={recipe.id}>
                    <h2>{recipe.title}</h2>
                    <p>{recipe.description}</p>
                    <a href={recipe.link}>View Recipe</a>
                </div>
            ))}
        </div>
    )
}

export default Recipes;