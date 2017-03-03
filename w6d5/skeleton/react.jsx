import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      result: 0,
      num1: "",
      num2: ""
    }
    this.setNum = this.setNum.bind(this);
  }

  setNum(key) {
    return (event => this.setState({[key]: event.currentTarget.value}));
  }

  setResult(action){
    return ( () => {
      let newVal = undefined;
      if (action === "add") {
        newVal = parseInt(this.state.num1) + parseInt(this.state.num2);
      } else if (action === "divide") {
        newVal = parseInt(this.state.num1) / parseInt(this.state.num2);
      } else if (action === "times") {
        newVal = parseInt(this.state.num1) * parseInt(this.state.num2);
      }
      return this.setState({result: newVal});
    });
  }

  render() {
    return (
      <div>
        <h1>{ this.state.result }</h1>
        <input type="text" onChange={ this.setNum('num1') } value={ this.state.num1 } id="num1"></input>
        <input type="text" onChange={ this.setNum('num2') } value={ this.state.num2 } id="num2"></input>
        <button onClick={ this.setResult('add')} value="add">add</button>
        <button onClick={ this.setResult('divide')} value="divide">divide</button>
        <button onClick={ this.setResult('times')} value="times">times</button>
      </div>
    )
  }
}

export default Calculator;
