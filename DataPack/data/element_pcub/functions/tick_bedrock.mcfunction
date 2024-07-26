#元素银行切换
execute if entity @s[nbt={SelectedItem:{tag:{"title":"§6便捷元素银行"}}}] run function element_pcub:menubook/base/switch_bedrock
#元素银行（无损转化）切换
execute if entity @s[nbt={SelectedItem:{tag:{"title":"§6便捷元素银行(通用元素版)"}}}] run function element_pcub:menubook/optional1/switch_bedrock
#掌上钱庄切换
execute if entity @s[nbt={SelectedItem:{tag:{"title":"§6掌上钱庄"}}}] run function element_pcub:menubook/optional3/switch_bedrock