# 便捷元素银行-互通兼容选装组件
v2024.11.2 正式版（适用于便捷元素银行 v2024.7.24 ~ v2024.7.28）

## 注意事项

1. 本选装组件提供给需要在盘灵无界互通方案中使用 **便捷元素银行** 的玩家，修复其在基岩版上出现的问题。
2. 您可以使用本方案进行任何自由创作，但严禁作为任何商业用途，以及在**与「盘灵古域」地图无关的场景**使用本压缩档中的任何文件
3. 因使用此组件造成的任何 Bug，请通过群聊向我反馈
4. 请尊重原作者，本组件不集成 DLC 本体，请自行下载



## 主要功能

元素银行菜单书的基岩版 Form 适配



## 依赖关系（需要依赖的部分 -> 被依赖的部分）

便捷元素银行 -> 便捷元素银行-互通兼容  
便捷元素银行-互通兼容 -> 盘灵无界-基础必要组件 (最低版本 v1.1)  
不兼容：盘灵无界 (DLC 适配) (已过时)  



## 安装/更新本组件

1. 将本压缩档中的 `PanGuContinentUnbounded-server` 目录与现有的服务端根目录合并，  
	注意是合并，而不是把 `PanGuContinentUnbounded-server` 文件夹放到服务端根目录下！
2. 本组件对需要对部分插件的配置文件进行内容附加，如果使用服务端部署包 v1.4 或更高版本，则在启动前会自动完成。  
   否则您还需要使用 `element_pcub_merge` 目录下的 `auto_merge.bat` (Windows) 或 `auto_merge.sh` (Linux) 脚本进行半自动操作，或者**对应目录结构**，根据 YAML 或者 JSON 语法手动合并其中的配置文件中的内容。  
   注：在 Windows 下使用脚本操作需要服务端部署包中的“tools”文件夹  
   Linux 常见错误：
      - `Permission denied`：请使用 chmod 为脚本设置可执行权限，或使用 bash 执行（千万不要使用 sh！）
      - `No such file or directory` 或 `Exec format error`：请手动安装程序 `jq` (https://jqlang.github.io/jq/) 及 `yq` (https://github.com/mikefarah/yq/) 的对应系统环境的版本
3. 大功告成！



## 安装/卸载 DLC 本体

1. 将数据包本体 `[MDLC] 便捷元素银行 v.2024.7.28(2).zip` 放至服务端的 `world/datapacks` 目录下
2. 启动服务端，任一 Java 版玩家进服（基岩版无法操作），然后在控制台或以管理权限执行 `/minecraft:reload` 命令，之后便会在玩家的聊天栏中弹出安装选项，根据需求配置安装即可。一定要加上 `minecraft:` 前缀，**不要直接 /reload**！否则在插件服上会出现很多问题！
3. 如有不解请自行查阅 DLC 原作者的说明



## 卸载本组件

您可以手动在服务端目录下，删除以下文件完成卸载：
- element_pcub_merge
- plugins/Geyser-Spigot/packs/ElementDedicatedPack.zip
- world/datapacks/element_pcub.zip

但之后服务端仍残留有部分功能，如需彻底卸载，需要更新基础必要组件（不推荐使用旧版覆盖安装，因为说明文档往往根据最新版本进行编写），之后基岩版玩家将彻底回到组件安装前的状态。

### 正在使用旧版 (v1.3.x 或更旧) 服务端部署包或基础必要组件的请注意，否则会导致彻底卸载后其他组件的附加配置失效：

- 如果正在使用旧版服务端部署包，则需要逐个将以 `_merge` 结尾的目录下的半自动合并脚本 `auto_merge.sh` (Linux) 或 `auto_merge.bat` (Windows) 都运行一遍；
- 如果正在使用旧版基础必要组件，但正在使用新版服务端部署包 (v1.4 或更高)，则需要将服务端目录下的一键合并脚本 `auto_merge_all.sh` (Linux) 或 `auto_merge_all.bat` (Windows) 运行一遍。