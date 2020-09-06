*** Keywords ***
user login
    Log    user login1    
user pay coin
    Log    user pay coin1  
user buy thing
    Log     user buy thing1     

*** Test Cases ***
case1
    Given user login
    When user pay coin
    Then user buy thing
    And user buy thing
    But user buy thing
