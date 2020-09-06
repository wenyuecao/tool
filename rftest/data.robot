*** Variables ***
@{namelist}    zhangsan    lisi    wangwu

*** Keywords ***
mytest1
    [Arguments]    ${a}   
    Log    ${a}    


*** Test Cases ***
case1
    mytest1    1
    mytest1    2
    mytest1    3
case2
    # Comment    使用模板把下面的输入自动传入模板中执行
    [Template]    mytest1
    1
    2
    3
case3
    # Comment    循环实现
    [Template]    mytest1
    FOR    ${val}    IN RANGE    1    10
        ${val}
    END
case4
    # Comment     列表数据
    [Template]    mytest1
    FOR    ${val}    IN    @{namelist}
        ${val}
    END
    