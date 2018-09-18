import React, { Component } from 'react';
import logo from './lamp-logo.png';
import './App.css';
import LoveData from './components/LoveData'

class App extends Component {
  constructor() {
    super()
    this.state = {
      loveData: {},
      joyData: {},
      peaceData: {}
    }
  }

  componentDidMount() {
    fetch('http://localhost:3001/loves.json')
    .then(response => response.json())
    .then(loveData => this.setState({
      loveData
     }))

    fetch('http://localhost:3001/joys.json')
    .then(response => response.json())
    .then(joyData => this.setState({
      joyData
     }))

    fetch('http://localhost:3001/peaces.json')
    .then(response => response.json())
    .then(peaceData => this.setState({
      peaceData
     }))
  }

  render() {
    const {  loveData, joyData, peaceData } = this.state
    console.log("Love Data is", loveData)
    console.log("Joy Data is", joyData)
    console.log("Peace Data is", peaceData)

    return (
      <div className="App">
        <header className="App-header">
<img src={logo} className="App-logo" alt="logo" />
        </header>
        <h5>"Thy word is a LAMP unto my feet</h5>
        <h5>And a light unto my path"</h5>
        <h5> - Psalm 119:105</h5>
        <br /><br />


          <LoveData verse={loveData} />
          <br /><br />
          <br /><br />
          <img src={logo} className="blink_me" alt="logo" height="200"/>
      </div>
    );
  }
}

export default App;
