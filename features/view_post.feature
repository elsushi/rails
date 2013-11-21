Feature: View posts

        Scenario: View a post
                Given there is a post containing "Hello, world!"
                When I am on the homepage
                # And show me the page
                Then I should see "Hello, world!"

        Scenario: View posts
                Given there is a post containing "Hello, world!"
                And there is a post containing "stinky cheese"
                When I am on the homepage
                Then I should see "Hello, world!"
                And I should see "stinky cheese"