@happenings
Feature: Happenings
  In order to have happenings on my website
  As an administrator
  I want to manage happenings

  Background:
    Given I am a logged in refinery user
    And I have no happenings

  @happenings-list @list
  Scenario: Happenings List
   Given I have happenings titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of happenings
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @happenings-valid @valid
  Scenario: Create Valid Happening
    When I go to the list of happenings
    And I follow "Add New Happening"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 happening

  @happenings-invalid @invalid
  Scenario: Create Invalid Happening (without title)
    When I go to the list of happenings
    And I follow "Add New Happening"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 happenings

  @happenings-edit @edit
  Scenario: Edit Existing Happening
    Given I have happenings titled "A title"
    When I go to the list of happenings
    And I follow "Edit this happening" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of happenings
    And I should not see "A title"

  @happenings-duplicate @duplicate
  Scenario: Create Duplicate Happening
    Given I only have happenings titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of happenings
    And I follow "Add New Happening"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 happenings

  @happenings-delete @delete
  Scenario: Delete Happening
    Given I only have happenings titled UniqueTitleOne
    When I go to the list of happenings
    And I follow "Remove this happening forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 happenings
 