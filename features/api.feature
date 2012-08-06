Feature: Output
  Background:
    In order to specify expected output
    As a developer using Cucumber
    I want to use the "the output should contain" step

  Scenario: User list
    When I post to "/users.json" with:
      """
      {
        "first_name": "Steve",
        "last_name": "Richert"
      }
      """
    When I get "/users.json"
    Then the JSON response should have 1 user
    And the JSON response at "0" should be:
      """
      {
        "id": %{USER_ID},
        "first_name": "Steve",
        "last_name": "Richert"
      }
      """
