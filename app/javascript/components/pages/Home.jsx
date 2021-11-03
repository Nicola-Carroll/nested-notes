import React from "react";

import ContinueButton from "../components/shared/continue-button";

export default () => (
  <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div className="container secondary-color">
        <h1 className="display-4">Nested Notes</h1>
        <p className="lead">A place to store your notes</p>
        <hr className="my-4" />
        <ContinueButton page={"notes"} />
      </div>
    </div>
  </div>
);
