Feature: Manufacturer
  As a business owner
  I want to manage the manufacturers I represent
  So my customers know who they are

  Scenario: See a list of manufacturers
    Given there is a manufacturer named "Wavetronix"
    When I go to the home page
    Then I should see "Wavetronix"

  # Scenario: Add a new manufacturer
