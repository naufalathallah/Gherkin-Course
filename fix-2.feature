Feature: Fix My Gherkin Challenge 2

Scenario: Challenge 2

    Given I have an "author" record
    And The field <field> has a value of <value>
    | Field     | Value |
    | firstname | bob   |
    | Surname   | jones |
    | active    | true  |
    When I click the save button
    Then The record is updated

    # Sebelum
    # Given I have an author record with field firstname set to bob
    # And surname with value jones
    # And the author record is active
    # When I click the save button
    # Then the record is updated