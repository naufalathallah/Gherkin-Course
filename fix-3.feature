Feature: Fix My Gherkin Challenge 3

    Background: Chl 3
    Given A boat insurance application has the following properties:
    | Property Name     |
    | Make              |
    | Model             |
    | Manufactured Date |
    | Hull Length       |

    Scenario: Viewing properties for Dinghy
    When I view the insurance properties for "Dinghy"
    Then I should see the common properties for a boat

    Scenario: Viewing properties for Yacht
    When I view the insurance properties for "Yacht"
    Then I should see the common properties for a boat
    And I should see specific properties as follows:
    | Property Name     |
    | Berths            |

    Scenario: Viewing properties for Cruiser
    When I view the insurance properties for "Cruiser"
    Then I should see the common properties for a boat
    And I should see specific properties as follows:
    | Property Name     |
    | Berths            |
    | Engine Size       |
    | Fuel Type         |
    | Berths            |

    # Sebelum
    # Given I am requesting a boat insurance quote
    # When I click on 'Dinghy'
    # Then I should see the following fields
    # | Field             |
    # | Make              |
    # | Model             |
    # | Manufactured Date |
    # | Hull Length       |

    # When I click on 'Yacht'
    # Then I should see the following fields
    # | Field             |
    # | Make              |
    # | Model             |
    # | Manufactured Date |
    # | Hull Length       |
    # | Berths            |

    # When I click on 'Cruiser'
    # Then I should see the following fields
    # | Field             |
    # | Make              |
    # | Model             |
    # | Manufactured Date |
    # | Hull Length       |
    # | Engine Size       |
    # | Fuel Type         |
    # | Berths            |