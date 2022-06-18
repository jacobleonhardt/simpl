import './App.css';
import React, { Component } from 'react';
import { BrowserRouter, Router } from 'react-router-dom';
import Homepage from './components/homepage';

function App() {
  return (
    <div className="App">
      <Homepage />
    </div>
  );
}

export default App;
