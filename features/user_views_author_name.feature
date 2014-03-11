Feature: User views author name

  Scenario: User views author name
    Given author "Example Author" exists
      And book "Example Book" exists for that author
    When I am on the show page for that book
    Then I should see "Example Author"
    When I am on the books index page
    Then I should see "Example Author"
