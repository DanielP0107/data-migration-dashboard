import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';

const App = () => {
  return (
    <Router>
      <Switch>
        <Route path='/' exact>
          <h1>Welcome to Data Migration Dashboard</h1>
        </Route>
        <Route path='/another-page'>
          <h1>Another Page</h1>
        </Route>
        {/* Add more routes here as needed */}
        <Route>
          <h1>404: Page Not Found</h1>
        </Route>
      </Switch>
    </Router>
  );
};

export default App;