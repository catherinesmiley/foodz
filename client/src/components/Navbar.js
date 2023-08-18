import React from 'react'
import { NavLink } from 'react-router-dom'

export default function Navbar() {
  return (
    <div>
        <ul className="nav">
                <li><NavLink
                    to="/"
                    exact
                >Home</NavLink></li>
                <br />
                <li><NavLink 
                    to="/recipes"
                    exact
                >All Recipes</NavLink></li>
                <br />
                <li><NavLink
                    to="/recipes/new"
                    exact
                >Create New Recipe</NavLink></li>
                <br />
                <br />
            </ul>
    </div>
  )
}
