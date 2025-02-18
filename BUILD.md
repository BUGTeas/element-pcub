# 构建说明（便捷元素银行专用 Java - 基岩双端互通套件）

注意：根据实际情况修改并单独制作即可，不是每一项都必需

## 打包数据包

数据包本体为 `DataPack` 目录，将其放入存档中的 `datapacks` 目录下可直接加载。

也可以将**此目录中的所有文件**打包为 Zip 格式使用。在官方版本包中，它被命名为 `element_pcub.zip`



## 打包资源包

将 `ResourcePack` 目录中的所有文件打包为 Zip 格式，改后缀为 `.mcpack` 即可直接导入到基岩版客户端中

如需在服务端加载，将其放入 `plugins/Geyser-Spigot/packs` 目录下即可。在官方版本包中，它被命名为 `ElementDedicatedPack.zip`。

若您正在制作一个独立的修改版，请更改 `manifest.json` 中的所有 UUID，以确保其不会和官方版本冲突。（建议更改资源包的名称以便区分）

元素和箭头的素材可以在 `Design` 目录中找到。

## 配置文件合并

部分功能需要在原有配置文件的基础上进行增添及修改。为了方便部署，修改过的部分被保存为独立的文件，并将它们相对于标准服务端目录结构存放在 `ConfigMerge` 目录下：
```
ConfigMerge
└─plugins
    └─CrossplatForms (CrossPlatForm 配置文件目录)
           bedrock-forms.yml  (新增或覆盖基岩版 Forms 界面)
           config.yml         (增加一些自定义命令)
```
需要注意，这些配置文件不能直接通过文件覆盖合并的方式安装，需要按照 YAML 和 JSON 语法对其进行内容合并。

不过梦盘互通套件中自带了相关工具，只需要按下面步骤操作即可轻松完成：

1. 将 `ConfigMerge` 文件夹放入服务端根目录下，以 `_merge` 为结尾重命名（例如 `element_pcub_merge`）
2. 参照使用说明中的步骤安装即可