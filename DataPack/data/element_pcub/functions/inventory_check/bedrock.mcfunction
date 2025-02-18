# 元素银行补丁
execute if entity @s[nbt={SelectedItem: {tag: {"title": "§6便捷元素银行"}}}, nbt=!{SelectedItem: {tag: {pcub_patch_ver: 0}}}] run item modify entity @s weapon.mainhand element_pcub:menubook_patch/base
# 元素银行（通用元素）补丁
execute if entity @s[nbt={SelectedItem: {tag: {"title": "§6便捷元素银行(通用元素版)"}}}, nbt=!{SelectedItem: {tag: {pcub_patch_ver: 0}}}] run item modify entity @s weapon.mainhand element_pcub:menubook_patch/optional1
# 掌上钱庄补丁
execute if entity @s[nbt={SelectedItem: {tag: {"title": "§6掌上钱庄"}}}, nbt=!{SelectedItem: {tag: {pcub_patch_ver: 0}}}] run item modify entity @s weapon.mainhand element_pcub:menubook_patch/optional3