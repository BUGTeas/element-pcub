# 便捷元素银行-互通兼容选装组件
v2024.7.11 正式版（适用于便捷元素银行 v2024.2.6）

## 注意事项

1. 本选装组件提供给需要在盘灵无界互通方案中使用 **便捷元素银行** 的玩家，修复其在基岩版上出现的问题。
2. 您可以使用本方案进行任何自由创作，但严禁作为任何商业用途，以及在**与「盘灵古域」地图无关的场景**使用本压缩档中的任何文件
3. 因使用此组件造成的任何 Bug，请通过群聊向我反馈
4. 请尊重原作者，本方案所有组件均不集成 DLC 本体，请自行下载

## 主要功能

元素银行菜单书的基岩版 Form 适配

## 依赖关系（需要依赖的部分 -> 被依赖的部分）

便捷元素银行 -> 便捷元素银行-互通兼容  
便捷元素银行-互通兼容 -> 盘灵无界-基础必要组件  
不兼容：盘灵无界 (DLC 适配) (已过时)  

## 安装/更新步骤

1. 将本压缩档中的 `PanGuContinentUnbounded-server` 目录与现有的服务端根目录合并，  
	注意是合并，而不是把 `PanGuContinentUnbounded-server` 文件夹放到服务端根目录下！
2. 合并配置文件，最简单的方法是使用目录下的自动合并脚本，打开 `element_pcub_merge` 文件夹，Windows 双击 `auto_merge.bat` 即可，Linux 在终端下执行 `./auto_merge.sh`，如果报权限不足（Permission denied）请使用 chmod 设置可执行权限，或使用 bash 执行（千万不要使用 sh！）  
	如果一切顺利，大概会输出以下内容：  
	```
		使用xxxxxx的 jq: jq-x.x
		使用xxxxxx的 yq: yq (https://github.com/mikefarah/yq/) version v4.x
		正在合并：xxxxxx 完成
		正在合并：xxxxxx 完成
		......
		操作成功完成。
	```
	(Linux) 如果出现类似 `No such file or directory` 或 `Exec format error` 的错误，请手动安装程序 `jq` (https://jqlang.github.io/jq/) 及 `yq` (https://github.com/mikefarah/yq/) 的对应系统环境的版本（Debian Bookworm APT 源中提供的 `yq` 不是同一程序！）  
	注：自动合并在 Windows 下仅适用于服务端部署包，当然也可以直接将部署包中的“tools”文件夹放至现有服务端的根目录下  
	当然如果会相关配置文件的语法也可以自行手动合并，和自动合并效果一样
3. 安装**便捷元素银行**本体：
   1. 将 `[MDLC] 便捷元素银行 v.2024.2.6(1).zip` 放至服务端的 `world/datapacks` 目录下
   2. 启动服务端，以 OP 权限或控制台通过以下命令安装：
      - 启用无消耗元素转换（安装前执行）：`scoreboard players set #system element_dlc_optional1 1`
      - 禁用无消耗元素转换（安装前执行）：`scoreboard players reset #system element_dlc_optional1`
      - 开始安装：`function element:install`
      - 当然如果你能看到聊天栏安装提示也可以直接在聊天栏操作，但前提是你手速快，在服务端启动完毕后 3 秒内进入
4. 如果您此前已安装“盘灵无界 (DLC 适配)”可选组件，**则请将其相关文件删除以卸载**，因为它与本组件不兼容。需要删除的文件如下：（均在服务端根目录下进行）
   - pcub_ext_merge
   - plugins/Geyser-Spigot/custom_mappings/pcub_ext.json
   - plugins/Geyser-Spigot/packs/PanlingExtensionPack.zip
   - world/datapacks/pcub_ext.zip
5. 大功告成！

## 卸载

您可以手动在服务端目录下，删除以下文件完成卸载：
- element_pcub_merge
- plugins/Geyser-Spigot/custom_mappings/element_pcub.json
- plugins/Geyser-Spigot/packs/ElementDedicatedPack.zip
- world/datapacks/element_pcub.zip

卸载完成后，基岩版玩家将无法使用便捷元素银行相关功能，如果您想彻底卸载便捷元素银行，需以 OP 权限或控制台执行命令 `function element:uninstall`，在提示信息弹出后，关闭服务端并删除数据包即可完成卸载。

但此时服务端仍然保留一部分配置，不过没有任何影响。但如需彻底卸载，需要先覆盖安装（或者更新）基础核心组件，然后再重新合并其它选装组件的配置文件。