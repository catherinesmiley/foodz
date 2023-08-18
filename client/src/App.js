import React, { Component } from 'react';
// import logo from './logo.svg';
import './App.css';
import Home from './components/Home'
import Navbar from './components/Navbar'

class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="App-header">
          <Navbar />
          <Home />
        </div>
      </div>
    );
  }
}

export default App;
