#从玩家主手获取原版书，放入缓存箱
item replace block 0 -1 0 container.0 from entity @s weapon.mainhand
#获取物品数量
data modify storage pcub:system menubook.temp.Count set from block 0 -1 0 Items[0].Count
#储存物品，以供从命令捷径切换回原版
#默认只储存一次，如果书本更新则需要删掉此数据然后手动切换一次
execute unless data storage pcub:system menubook.storage[{tag:{id:"dlc:element_menubook"}}] run data modify storage pcub:system menubook.storage append from block 0 -1 0 Items[0]
#将命令捷径放入缓存槽位
item replace block 0 -1 0 container.0 with minecraft:book{id:"shortcut:element_menubook",CustomModelData:1,display:{Name:'{"text":"§6便捷元素银行"}',Lore:['{"translate":"book.byAuthor","with":["§6天道§7"],"color":"gray","italic":false}','{"translate":"book.generation.0","color":"gray","italic":false}']}}
#为命令捷径设置物品数量
data modify block 0 -1 0 Items[0].Count set from storage pcub:system menubook.temp.Count
#替换主手物品为命令捷径
item replace entity @s weapon.mainhand from block 0 -1 0 container.0