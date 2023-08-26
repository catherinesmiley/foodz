import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import './App.css';
import Home from './components/Home'
import Navbar from './components/Navbar'
import Recipes from './components/Recipes'

class App extends Component {
  render() {
    return (
      <Router>
        <div className="App">
          <div className="App-header">
            <Navbar />
              <Routes>
                  <Route exact path="/" element={Home} />
              </Routes>
            <Recipes />
          </div>
        </div>
      </Router>
    );
  }
}

export default App;
