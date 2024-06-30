#元素银行切换
execute if entity @s[nbt={SelectedItem:{tag:{id:"shortcut:element_menubook"}}}] run function pcub_ext:menubook/element/switch_java

#诡秘菜单切换
execute if entity @s[nbt={SelectedItem:{tag:{id:"shortcut:dark_fight_menu"}}}] run function pcub_ext:menubook/dark_fight/switch_java