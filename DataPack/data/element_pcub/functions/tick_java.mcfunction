#元素银行切换
execute if entity @s[nbt={SelectedItem:{tag:{id:"pcub:element_menu_base"}}}] run function element_pcub:menubook/base/switch_java
#元素银行（无损转化）切换
execute if entity @s[nbt={SelectedItem:{tag:{id:"pcub:element_menu_optional1"}}}] run function element_pcub:menubook/optional1/switch_java
#掌上钱庄切换
execute if entity @s[nbt={SelectedItem:{tag:{id:"pcub:element_menu_optional3"}}}] run function element_pcub:menubook/optional3/switch_java