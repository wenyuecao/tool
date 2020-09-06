*** Settings ***
Library    funlibrary/inifun.py    
*** Variables ***
${var1}    ${None}
${var_string}    abc
${var_int}    123  
*** Test Cases ***
case1
    ${var1}    Set Variable    23 
    Set Global Variable    ${var1}    
case2
    Log    ${var1} 
case3
    ${int_value}    Convert To Integer    ${var_int}    
    Comment    用嵌套的方式也能把字符串类型改成整形类型获得输出
    ${int_values}   Abc    ${${var_int}}        
    ${res}    Abc    ${int_value}   
    Comment    返回的int_values直接就是整形
    ${int_in}    Abc    ${int_values}