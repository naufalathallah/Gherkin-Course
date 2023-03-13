@example
Feature: Shopping Basket

    # Result centric
    In order to amend my purchase, before checking out, as a customer, I want to able to edit my shopiing basket

    Background: Background name
        Given I have the following data:
        | Product | Stock | Basket |
        | 1       | 2     | 0      |
        | 2       | 0     | 0      |
        | 3       | 2     | 1      |

    Scenario Outline: Testing functionality of basket
    Given I am on the product detail page <product>
    When I click the Add to the Basket button
    Then The quantities are:
    | Stock   | Basket   |
    | <stock> | <basket> |
    And A message <message> is displayed to the user

    Examples:
        | Description           | Product | Stock | Basket | Message                |
        | In stock              | 1       | 1     | 1      | "Added to the basket"  |
        | Not in stock          | 2       | 0     | 0      | "Not in stock"         |
        | Already in the basket | 3       | 3     | 2      | "Limited to one only"  |

    @ignore
    Scenario: As a user I can create new account
    Given I am on the register page
    When I enter my credentials
    And I click the register button
    Then I am sent to the account screen

    @shipping
    Scenario: As a user I should be able to login to my account using my credentials
    Given The user is on the login page
    And The sign in button is displayed
    When The user enter their username
    And The user enter their password
    And The user click the sign in button
    Then The user is authenticated
    And the user is on the account page

    @shipping
    Scenario: As a user I should be able to apply discount code
    Given My shopping basket contains
    * Product a
    * Product b
    * Product c
    When I apply a discount code
    Then the discount code is valid

    @release-1.2.3
    Scenario: As a customer I can remove an item to my shopping basket
    Given I am on the basket page
    When I click the remove button
    Then The product is removed from the basket

    Scenario: As a customer I can view an items to my shopping basket
    Given I am on the home page
    When I click the shopping basket icon
    Then I see a list of shopping items

    Scenario: As a customer I can checkout from the shopping basket
    Given I am on the basket page
    When I click the checkout button
    Then  I should be taken to the checkout page