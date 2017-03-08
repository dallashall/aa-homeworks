import React from 'react';

class GiphysIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <ul>
        {this.props.pics.map((gif, idx) => <li key={idx}><img src={gif.images.downsized.url} /></li>)}
      </ul>
    )
  }
}

export default GiphysIndex;