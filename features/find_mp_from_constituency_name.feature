Feature: Find MP from constituency name
  In order to contact my MP
  as a constituent
  want to find my MP using my constituency name

  Scenario: Enter a valid constituency name
    Given I am on the Front page
    Then I should see "First, type your UK postcode:"
    When I search for "Aberdeen North"
    Then I should see "Aberdeen North"
    And I should see "Frank Doran"

  Scenario: Enter an invalid constituency name
    Given I am on the Front page
    When I search for "Tamaki"
    Then I should see "No matches found for Tamaki."

  Scenario: Enter part of a valid constituency name
    Given I am on the Front page
    Then I should see "First, type your UK postcode:"
    When I search for "Aberdeen"
    Then I should see "Aberdeen North"
    And I should see "Aberdeen South"
    When I follow "Aberdeen South"
    Then I should see "Aberdeen South"
    And I should see "Miss Anne Begg"