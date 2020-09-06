*** Settings ***
Variables    value/val.py
*** Variables ***
${a}    123456
@{lt1}    abc    def
&{dt1}    username=zhangsan    password=123456

*** Test Cases ***
case1
    Comment    把文件里面的变量输出
    Log    ${a} ${b} ${c} ${d}    
    ${var1}    Set Variable    123
    @{list}    Create List    123 456
    &{dict}    Create Dictionary    username=zhangsan    password=123456
    Log    ${var1}@{list}&{dict}        