import React, { useState, useEffect } from 'react'

function Recipes() {
    const [recipes, setRecipes] = useState([]);

    useEffect(() => {
        fetch("http://localhost:3000/api/v1/recipes")
            .then((response) => {
                if (!response.ok) {
                    throw new Error(`HTTP error! Status: ${response.status}`);
                }
                return response.json();
            })
            .then((data) => {
                console.log("Fetched Data:", data);
                setRecipes(data);
            })
            .catch((error) => console.log("Fetch error:", error));
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