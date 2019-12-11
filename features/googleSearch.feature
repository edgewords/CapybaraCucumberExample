Feature: Google Search

    Scenario: SearchForTerm
        Given That I am on the Google Search Page
        When I search for "Edgewords"
        Then "Edgewords" appears in the results
