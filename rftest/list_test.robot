*** Variables ***
@{list1}   tom    jerry    ben
@{list2}    apple    orange
@{list3}    @{list1}    @{list2}
@{list4}    ${list1}    ${list2}
&{dt1}    username=zhangsan    password=123456 
&{dt2}    var1=&{dt1}    password=123456    
&{dt3}    var1=@{list1}    password = 123456
*** Test Cases ***
case1
    Log     ${list1}  
    Comment    把列表里面的元素按照一个元素一行获取输出 
    Log Many    @{list1}
    Log    @{list1}[0]
case2
    @{list2}    Create Dictionary    var1    var2    var3    var4
    
case3
    Comment    合并操作直接拼接         
    Log    ${list3}    
case4
    Comment    嵌套操作
    Log    ${list4}      
case5
    Comment    输出字典
    Log    &{dt1}[username] &{dt1}[password]  
    Log    ${dt1}[username] ${dt1}[password] 
    Log    ${dt1.username}
    Comment    错误格式    
    Log    &{dt1.username}
case6
    Comment    字典合并
    Log    ${dt2}    
    Log    ${dt2.var1}    
    Log    ${dt3}    
    
    
    