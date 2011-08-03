@newses
Feature: Newses
  In order to have newses on my website
  As an administrator
  I want to manage newses

  Background:
    Given I am a logged in refinery user
    And I have no newses

  @newses-list @list
  Scenario: Newses List
   Given I have newses titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of newses
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @newses-valid @valid
  Scenario: Create Valid Newse
    When I go to the list of newses
    And I follow "Add New Newse"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 newse

  @newses-invalid @invalid
  Scenario: Create Invalid Newse (without title)
    When I go to the list of newses
    And I follow "Add New Newse"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 newses

  @newses-edit @edit
  Scenario: Edit Existing Newse
    Given I have newses titled "A title"
    When I go to the list of newses
    And I follow "Edit this newse" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of newses
    And I should not see "A title"

  @newses-duplicate @duplicate
  Scenario: Create Duplicate Newse
    Given I only have newses titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of newses
    And I follow "Add New Newse"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 newses

  @newses-delete @delete
  Scenario: Delete Newse
    Given I only have newses titled UniqueTitleOne
    When I go to the list of newses
    And I follow "Remove this newse forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 newses
 