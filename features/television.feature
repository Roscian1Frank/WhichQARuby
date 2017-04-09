
Feature: To check television page is working as expected

  Scenario Outline: check the search functionality by size
    Given I am on the which website
    When I select screen size "<Screen size>"
    Then I check the correct "<Screen size>" result are displayed

    Examples:
      | Screen size |
      | 17-22       |
   
   Scenario Outline: check the search functionality by type
    Given I am on the which website
    When I select screen type "<Screen type>"
    Then I check the correct "<Screen type>" result are displayed
    Examples:
      | Screen type |
      | OLED        |


    Scenario: check the search functionality by sort
    Given I am on the which website
    When I search television by "Sort by"
    Then I check the correct "Sort by" result
    