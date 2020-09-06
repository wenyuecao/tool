*** Settings ***
Library    keyword/user.py   
*** Keywords ***
mytest
    Log    mytestisrunning        
my test fun 
    [Arguments]    ${a}    ${b}
    Log    my test fun is running ${a} ${b}
my test have param
    [Arguments]    ${a}    ${b}=zhangsan
    Log    my test fun is running ${a} ${b}
my test have return
    [Arguments]    ${a}    ${b}=zhangsan
    [Return]    0
    Log    my test fun is running ${a} ${b}
mytest1输入保障是整形
    [Arguments]	    ${userid}
    ${re_val}    user.Getscore    ${${userid}}
    [Return]    ${re_val}

 mytest1阅读
    [Arguments]	    ${userid}
    ${int_id}    Convert To Integer    ${userid}    
    ${re_val}    user.Getscore    ${int_id}
    [Return]    ${re_val}       
*** Test Cases ***
case1
    Comment    自定义关键字关
    user.Get Uasename    userid
    user.Getscore    userid
    user.User Login    username    password
case2    
    Comment    输出
    ${val}    user.Get Uasename    123
    Should Be Equal As Integers    0    ${val}    
case3
    Comment    使用自己定义的关键字
    mytest
case4
    Comment    使用传入参数的关键字
    my test fun    hello    nimen
case5
    Comment    关键字里面有默认值可以少传入参数
    my test have param    hello    
case6
    Comment    有返回值
    ${val}    my test have return    123
    Should Be Equal As Integers    0    ${val}   
case7
    Comment     使用关键字将输入参数给
    ${val}    mytest1输入保障是整形    60
    Should Be Equal As Integers    100    ${val}    
case8
    Comment     使用关键字将输入参数给
    ${val}    mytest1输入保障是整形    60
    Should Be Equal As Integers    100    ${val}
    