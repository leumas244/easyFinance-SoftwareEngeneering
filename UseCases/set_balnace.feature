Feature: set bankbalance

    Scenario: goto set screen
        Given The App is opened
        And The user has set a password
        When I click the button "Set bankbalance"
        Then I get linked to set screen

    Scenario: set balance
        Given The app is opened
        And the set screen is visible
        When I fill out the field named "insert bankbalance here"
        And I click the Button "Submit"
        Then my bankbalance is set
        And I get redirected to the homescreen