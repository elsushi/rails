
Feature: Create post

        Scenario: Create post
                Given I am on the homepage
                And I follow "New post"
                And I fill in "Title" with "Cheese"
                And I fill in "Body" with "lorem ipsum"
                And I press "Save post"
                Then I should see "Your post has been added"