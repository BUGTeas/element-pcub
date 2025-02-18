# 旧版基岩版菜单强制恢复
# 元素银行恢复
execute if entity @s[nbt={SelectedItem:{tag:{id:"pcub:element_menu_base"}}}] run function element_pcub:menubook/base/switch_java
# 无损转化恢复
execute if score #system element_dlc_optional1 matches 1.. if entity @s[nbt={SelectedItem:{tag:{id:"pcub:element_menu_optional1"}}}] run function element_pcub:menubook/optional1/switch_java
# 掌上钱庄恢复
execute if score #system element_dlc_optional3 matches 1.. if entity @s[nbt={SelectedItem:{tag:{id:"pcub:element_menu_optional3"}}}] run function element_pcub:menubook/optional3/switch_java