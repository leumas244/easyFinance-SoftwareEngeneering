Feature: show Diagram

    Scenario: show expenditures
        Given The app is opened
        And the homescreen is shown
        When I click on the button "show diagram"
        And I choose "expenditures"
        And I choose the desired diagram
        Then I'm shown the desired diagram

    Scenario: show earnings
        Given The app is opened
        And the homescreen is shown
        When I click on the button "show diagram"
        And I choose "earnings"
        And I choose the desired diagram
        Then I'm shown the desired diagram

    Scenario: show total
        Given The app is opened
        And the homescreen is shown
        When I click on the button "show diagram"
        And I choose "total"
        And I choose the desired diagram
        Then I'm shown the desired diagram