import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Home from "../components/pages/Home";
import Notes from "../components/pages/Notes";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Home} />
      <Route path="/notes" exact component={Notes} />
    </Switch>
  </Router>
);
