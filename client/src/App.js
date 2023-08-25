import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import './App.css';
import Home from './components/Home'
import Navbar from './components/Navbar'

class App extends Component {
  render() {
    return (
      <Router>
        <div className="App">
          <div className="App-header">
            <Navbar />
              <Routes>
                  <Route exact path="/" component={Home} />
              </Routes>
            <Home />
          </div>
        </div>
      </Router>
    );
  }
}

export default App;
