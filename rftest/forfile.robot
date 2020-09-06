*** Variables ***
@{list}    1    2    3

*** Test Cases ***
case1
    Comment    循环方式
    Comment    使用在范围内的循环方式起始位置结束位置步长
    FOR    ${var}    IN RANGE    1	5	1
        Log    ${var}    
    END
case2
    Comment    自定义的列表循环
    @{list1}  Create List   1    2    3    
    FOR    ${v1}    IN    @{list1}
        Log    ${v1}    
    END
case3
    @{list2}    Create List    1    2    3
    FOR    ${v1}    ${v2}    IN ENUMERATE    @{list2}
        Log    INDEX=${v1}VALUE=${v2}
    END    
case4
    @{l1}    Create List    1    2    3   4    5    6      
    @{l2}    Create List    4	5    6    5    8    
    @{l3}    Create List    123    456    789 
    FOR    ${V1}    ${V2}    ${V3}    IN ZIP    ${l1}    ${l2}    ${l3}
            Log    L1=${V1}L2=${V2}L3=${V3}    
        
    END
case5
    Comment    退出循环
    FOR    ${v1}    IN RANGE    1    10
        Log    ${v1}    
         Exit For Loop        
    END    
    
case6
    Comment    循环执行到第三次退出循环
    FOR    ${v1}    IN RANGE    1    10
        Log    ${v1}    
        Exit For Loop If    ${v1}==3
        Log    loop=${v1}    
    END
case7
    Comment    Continue不会执行loop=的信息
    FOR    ${v1}    IN RANGE    1    10
        Log    ${v1}    
        Continue For Loop
        Log    loop=${v1}    
    END   
case8
    Comment    符合条件的continue
    FOR    ${v1}    IN RANGE    1    10
        Log    ${v1}    
        Continue For Loop If    ${v1}==3
        Log    loop=${v1}    
    END   