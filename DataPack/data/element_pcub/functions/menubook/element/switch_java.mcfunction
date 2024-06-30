#从玩家主手获取命令捷径，用于获取物品数量
item replace block 0 -1 0 container.0 from entity @s weapon.mainhand
#获取物品数量
data modify storage pcub:system menubook.temp.Count set from block 0 -1 0 Items[0].Count
#将已存储的原件输出到缓存槽位
data modify block 0 -1 0 Items[0] set from storage pcub:system menubook.storage[{tag:{id:"dlc:element_menubook"}}]
#为输出的原件设置物品数量
data modify block 0 -1 0 Items[0].Count set from storage pcub:system menubook.temp.Count
#替换主手物品为原版书
item replace entity @s weapon.mainhand from block 0 -1 0 container.0