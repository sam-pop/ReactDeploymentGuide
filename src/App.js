import React, { Component } from "react";
import logo from "./anim.gif";
import "./App.css";

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>This is how you successfully </p>
          DEPLOY REACT APP TO GITHUB-PAGES!
        </header>
      </div>
    );
  }
}

export default App;
