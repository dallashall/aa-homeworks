import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchTerm: ""
    }
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    this.setState({ searchTerm: e.target.value });
  }

  handleSubmit(term) {
    return (e) => {
      e.preventDefault();
      this.props.fetchSearchGiphys(term);
    }
  }

  render() {
    return (
      <div>
      <form onSubmit={this.handleSubmit(this.state.searchTerm)}>
        <input type="text" value={this.state.searchTerm} onChange={this.handleChange} />
        <input type="submit" value="submit" />
      </form>
      <GiphysIndex pics={this.props.giphys} />
      </div>
    )
  }
}

export default GiphysSearch;