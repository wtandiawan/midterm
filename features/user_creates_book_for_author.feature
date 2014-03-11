Feature: User creates book for author

  Scenario: User creates book for author
    Given author "Example Author" exists
      And I am on the home page
    When I follow "Books"
      And I follow "New Book"
    Then I am on the new book form
    When I select "Example Author" for "Author"
      And I fill in "Title" with "Example Book"
      And I fill in "Review" with "Example Review"
      And I press "Create Book"
    Then I should see "Book was successfully created"
      And a new book with title "Example Book" belonging to "Example Author" should exist
