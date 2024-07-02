# 便捷元素银行-互通兼容可选组件
v2024.7.2 正式版（适用于便捷元素银行 v2024.2.6）

## 注意事项

1. 本可选项提供给需要在盘灵无界互通方案中使用 **便捷元素银行** 的玩家，如果您并不想在基岩版游玩它，则无需安装本可选组件
2. 严禁将本方案作为任何商业用途，以及在**与盘灵古域地图无关的场景**使用本压缩档中的任何文件
3. 因使用此可选项造成的任何 Bug，请通过群聊向我反馈
4. 请尊重原作者，本服务端不集成 DLC 本体，请自行下载

## 主要功能

元素银行菜单书的基岩版 Form 适配

## 依赖关系（需要依赖的部分 -> 被依赖的部分）

便捷元素银行 -> 便捷元素银行-互通兼容可选组件  
便捷元素银行-互通兼容可选组件 -> 盘灵无界-基础必要组件  
不兼容：盘灵无界 (DLC 适配) (已过时)  

## 安装/更新步骤

1. 将本压缩档中的“PanGuContinentUnbounded-server”目录与现有的服务端根目录合并，  
	注意是合并，而不是把“PanGuContinentUnbounded-server”文件夹放到服务端根目录下！
2. 合并配置文件，  
	需要单独合并的文件位于服务器根目录下的“element_pcub_merge”文件夹中（如果没有说明上一步做错了！），  
	最简单的方法是使用目录下的自动合并脚本，Windows 双击“auto_merge.bat”即可，Linux 在终端下执行 auto_merge.sh，  
	脚本会自动切换目录，无需单独cd，如果报权限不足（Permission denied）请使用 chmod +x 设置可执行权限，或使用 bash 执行（千万不要使用 sh！）  
	一般情况下输出以下内容：  
	```
		“便捷元素银行-互通兼容可选组件”配置文件自动合并

		使用xxxxxx的 yq：
		yq (https://github.com/mikefarah/yq/) version v4.x
		开始合并...
		操作成功完成。
	```
	(Linux) 如果出现类似“No such file or directory”或“Exec format error”的错误，请手动安装程序“yq” (https://github.com/mikefarah/yq/) 的对应系统环境的版本（Debian Bookworm APT 源中提供的“yq”不是同一程序！）  
	注：自动合并在 Windows 下仅适用于服务端快速部署包，当然也可以直接将部署包中的“tools”文件夹放至现有服务端的根目录下  
	当然如果会 YAML 语法也可以自行手动合并，和自动合并效果一样
3. 安装**便捷元素银行**本体：
   1. 将“[MDLC] 便捷元素银行 v.2024.2.6(1).zip”放至服务端的“world/datapacks”目录下
   2. 启动服务端，以 OP 权限或控制台执行以下命令完成安装：
      - 当然如果你能看到聊天栏安装提示也能直接在聊天栏操作，但前提是你手速快，在服务端启动完毕后 3 秒内进入
      - 启用无消耗元素转换（安装前执行）：scoreboard players set #system element_dlc_optional1 1
      - 禁用无消耗元素转换（安装前执行）：scoreboard players reset #system element_dlc_optional1
      - 开始安装：function element:install
      - 卸载：function element:uninstall
4. 如果您此前已安装“盘灵无界 (DLC 适配)”可选组件，**则请将其卸载**，因为它与本组件不兼容。卸载步骤：（所有操作均在服务端根目录下进行）
   1. 删除“pcub_ext_merge”文件夹
   2. 删除“plugins/Geyser-Spigot/pcub_ext.json”文件
   3. 删除“plugins/Geyser-Spigot/PanlingExtensionPack.zip”文件
5. 大功告成！