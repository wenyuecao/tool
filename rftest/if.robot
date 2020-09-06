*** Variables ***
${status}    pass
${test1}    123

*** Test Cases ***
case1
    Comment    条件赋值满足条件进行赋值ifok为none
    ${var1}    Set Variable    123
    ${if_ok}    Set Variable If    ${var1}>124    OK    
    Log    ${if_ok}    
case2
    Comment    条件赋值满足条件进行赋值ifok为ok
    ${var1}    Set Variable    123
    ${if_ok}    Set Variable If    ${var1}>120     OK    
    Log    ${if_ok}    
case3
    ${a}    Set Variable    12
    ${b}    Set Variable    10
    ${c}    Set Variable    9    
    Run Keyword If    ${a}>${b} and ${a}>${c}    Log    Max ${a} 
    
case4
    ${a}    Set Variable    12
    ${b}    Set Variable    10
    ${c}    Set Variable    24    
    Run Keyword If    ${a}>${b} or ${a}>${c}    Log    Max ${a}          
case5
    ${a}    Set Variable    12
    ${b}    Set Variable    10
    ${c}    Set Variable    24    
    Run Keyword If    not ${a}<${b}    Log    Max ${a}  
case6
    Comment    多条件
    ${a}    Set Variable    12
    ${b}    Set Variable    66
    ${c}    Set Variable    24    
    Run Keyword If    ${a}>${b} and ${a}>${c}    Log    Max ${a}
    ...    ELSE IF    ${c}>${a} and ${c}>${b}    Log    Max ${c}
    ...    ELSE    Log    ${b}    
case7
    Comment    相同
    ${a}    Set Variable    12
    ${b}    Set Variable    12
    ${c}    Set Variable    24    
    Run Keyword If    ${a}>=${b} and ${a}>=${c}    Log    Max ${a}
    ...    ELSE IF    ${c}>=${a} and ${c}>=${b}    Log    Max ${c}
    ...    ELSE    Log    ${b}
case8
    Comment    字符串
    ${a}    Set Variable    abc
    ${b}    Set Variable    abc
    Run Keyword If    '${a}'=='${b}'    Log    same               