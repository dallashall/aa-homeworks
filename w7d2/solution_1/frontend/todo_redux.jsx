import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

// const addLoggingToDispatch = (store) => {
//   let dispatch = store.dispatch;
//   return (action) => {
//     console.log(store.getState()); // Old state
//     console.log(action) // action
//     dispatch(action); // from store.dispatch
//     console.log(store.getState()); // New state
//   }
// }

// const addLoggingToDispatch = (store) => (next) => (action) => {
//   console.log(store.getState());
//   console.log(action);
//   store.dispatch(action);
//   console.log(store.getState());
// }

// const applyMiddleWares = (store, ...middleWares) => {
//   let dispatch = store.dispatch;
//   middleWares.forEach(middleWare => dispatch = middleWare(store)(dispatch));
//   return Object.assign({}, store, { dispatch });
// }

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);
  // store = applyMiddleWares(store, addLoggingToDispatch);
  // store.dispatch =  addLoggingToDispatch(store);
  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
