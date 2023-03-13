Feature: Challenge 4

    Scenario: Username not provided
    Given I navigate to the page 'login'
    And I click on the element 'username'
    When I click on the element 'login'
    Then A message is displayed 'user name must be specified'

    Scenario: Username provided
    Given I navigate to the page 'login'
    And I click on the element 'username'
    When I type my username of "myusername"
    And I click on the element 'login'
    Then No validation message is displayed

    Scenario: Password not provided
    Given I navigate to the page 'login'
    And I click on the element 'password'
    When I click on the element 'login'
    Then A message is displayed 'password must be specified'

    Scenario: Password provided
    Given I navigate to the page 'login'
    And I click on the element 'password'
    When I type my password of "mypassword"
    And I click on the element 'login'
    Then No validation message is displayed

    # Sebelum
    # Scenario: Username not provided
    # Given I navigate to the page 'http://myapp/login'
    # And I click on the element 'input[class='md-2'] >> nth[0]'
    # When I click element 'button >> nth =-1'
    # Then element 'xpath=//div/section >> nth(2)/section/div[3]' content is 'user name must be specified'

    # Scenario: Username provided
    # Given I navigate to the page 'http://myapp/login'
    # And I click on the element 'input[class='md-2'] >> nth[0]'
    # And in element 'input[class='md-2'] >> nth[0]' I type 'myusername'
    # When I click element 'button >> nth =-1'
    # Then element 'xpath=//div/section >> nth(2)/section/div[3]' content is ''
    # And element 'xpath=//div/section >> nth(2)/section/div[3]/i' has class 'fas fa-check'

    # Scenario: Password not provided
    # Given I navigate to the page 'http://myapp/login'
    # And I click on the element 'input[class='md-2'] >> nth[1]'
    # When I click element 'button >> nth =-1'
    # Then element 'xpath=//div/section >> nth(2)/section/div[3]' content is 'password must be specified'

    # Scenario: Password provided
    # Given I navigate to the page 'http://myapp/login'
    # And I click on the element 'input[class='md-2'] >> nth[1]'
    # And in element 'input[class='md-2'] >> nth[0]' I type 'mypassword'
    # When I click element 'button >> nth =-1'
    # Then element 'xpath=//div/section >> nth(2)/section/div[3]' content is ''
    # And element 'xpath=//div/section >> nth(2)/section/div[3]/i' has class 'fas fa-check'