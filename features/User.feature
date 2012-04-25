Feature: User
  In order to manage content on the web site
  As a business owner
  I want to sign into a management interface

  Scenario: Sign in
    Given I have a user account
    When I sign in as "brubble@example.com" with password "secret"
    Then I should see "Signed in"
