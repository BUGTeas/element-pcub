#元素银行切换
execute if entity @s[nbt={SelectedItem:{tag:{id:"dlc:element_menubook"}}}] run function pcub_ext:menubook/element/switch_bedrock

#诡秘菜单切换
execute if entity @s[nbt={SelectedItem:{tag:{id:"panling:book_te25",display:{Name:"[{\"text\":\"诡秘挑战说明/辅助工具\",\"color\":\"gold\",\"italic\":false}]"}}}}] run function pcub_ext:menubook/dark_fight/switch_bedrock