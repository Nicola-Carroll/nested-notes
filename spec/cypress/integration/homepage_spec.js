describe("Homepage", function () {
  // beforeEach(() => {
  //   cy.app("clean"); // have a look at cypress/app_commands/clean.rb
  // });

  beforeEach(() => {
    cy.visit(`/`);
  });

  it("contains app name", function () {
    cy.contains("Nested Notes");
  });

  it("contains a continue button", function () {
    cy.get("#continue-button").should("exist");
  });

  it("navigates to notes page when button is clicked", function () {
    cy.get("#continue-button").click();
    cy.location("pathname").should("eq", "/notes");
  });
});
