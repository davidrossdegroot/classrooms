Feature: User indicates interest in a class

Given I am logged in
When I view a suggested class
And I indicate interest in the class
And I should be forced to indicate the amount I would pay for the class
And I should see the number of people interested increased by 1