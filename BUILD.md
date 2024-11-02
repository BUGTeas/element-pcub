# 自行构建元素银行互通兼容组件

注意：根据实际情况修改并单独制作即可，不是每一项都必需

## 修改数据包

将 `DataPack` 目录中的所有文件打包压缩，建议命名为 `element_pcub.zip`

## 修改资源包

将 `ResourcePack` 目录中的所有文件打包压缩，改后缀为 `.mcpack` 即可直接导入到基岩版客户端中

如需在服务端加载，将其放入 `plugins/Geyser-Spigot/packs` 目录下即可，建议命名为 `ElementDedicatedPack.zip`。

若您正在制作一个独立的修改版，请更改 `manifest.json` 中的 `name` 值以及所有 UUID，以确保这个修改版本不会和原版搞混甚至冲突。

元素和箭头的素材可以在 `Design` 目录中找到。

## 配置文件合并

部分功能需要在原有配置文件的基础上进行增添及修改。为了方便部署，修改过的部分被保存为独立的文件，并将它们相对于标准服务端目录结构存放在 `ConfigMerge` 目录下：
```
ConfigMerge
└─plugins
    ├─CrossplatForms (CrossPlatForm 配置文件目录)
    │      bedrock-forms.yml  (新增或覆盖基岩版 Forms 界面)
    │      config.yml         (增加一些自定义命令)
    │
    └─Geyser-Spigot (Geyser 配置文件目录)
        └─locales/overrides   (需要合并到 Geyser 自定义本地化的 Java 版语言文件)
                *.json  (由构建者手动将“LangFile/output/element/overrides”目录下的文件移动至此)
```

需要注意，这些配置文件不能直接通过文件覆盖合并的方式安装，需要按照 YAML 和 JSON 语法对其进行内容合并。

不过服务端部署包中自带了命令行工具 `yq` 和 `jq`（`tools` 目录下），可以实现自动操作。借助自动合并脚本即可完成安装：
1. 下载自定义配置文件自动合并脚本 (https://github.com/BUGTeas/pcub-merge) 或 (https://gitee.com/BugTeaON/pcub-merge)，得到 `custom_merge` 文件夹 (建议将其更名为 `element_pcub_merge`)，将其放入服务端根目录下
2. 将 `ConfigMerge/plugins` 放入这个目录即可