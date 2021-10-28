describe("Homepage", function () {
  // beforeEach(() => {
  //   cy.app("clean"); // have a look at cypress/app_commands/clean.rb
  // });

  it("contains app name", function () {
    cy.visit(`/`);
    cy.contains("Nested Notes");
  });
});
