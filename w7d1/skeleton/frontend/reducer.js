import merge from 'lodash/merge';

const initialState = {
  baseCurrency: "Please select",
  rates: {}
};

const reducer = (state = initialState, action) => {
  Object.freeze(state);
  let nextState = merge({}, state);
  switch(action.type) {
    case "SWITCH_CURRENCY":
      nextState.baseCurrency = action.baseCurrency;
      nextState.rates = action.rates;
      return nextState;
    default:
      return state;
  }
};
export default reducer;
