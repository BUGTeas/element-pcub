# 自行构建元素银行互通兼容组件

注意：根据实际情况修改并单独制作即可，不是每一项都必需

## 修改数据包

将 `DataPack` 目录中的数据包打包，命名为 `element_pcub.zip`

## 修改语言文件：

如果您希望对游戏内的本地化文本进行修改，你可能需要修改语言文件。

在互通服中，原先由 JE 资源包加载的本地化文本都需要合并为单个 JSON 后由 Geyser 加载。但 UI 界面是个例外，需要使用资源包进行加载。

元素银行在游戏内没有本地化文本，这也是它不需要 JE 客户端安装资源包的原因。同样，默认情况下生成的 Geyser 语言文件也是空白的，除非您对 patch 文件做了某些修改。

**环境要求:** Node.js

1. 安装依赖项：
   - (必要) `npm install git+https://gitee.com/BugTeaON/pcub-locale#v1.0.1` 或 `npm install git+https://github.com/BUGTeas/pcub-locale#v1.0.1`
   - (可选) 如果需要繁体转换，还需安装 [OpenCC](https://github.com/BYVoid/OpenCC) 转换器，否则输出的繁体文件（“zh_tw”及“zh_hk”）都将是简体内容：`npm install opencc`（安装条件较为苛刻，若无经验建议跳过）
2. 执行命令 `node index.js` 开始生成
3. 在“output/panling”目录下会出现以下文件夹：
   - assets（为 Java 客户端资源包语言文件，“.json”格式，可为 Java 版提供繁体支持）
   - overrides（为 Geyser 自定义语言文件，“.json”格式，放至 Geyser 配置目录的“locales”目录下）
   - texts（由基岩客户端资源包加载，“.lang”格式，通常用于显示 UI 内容）

## 修改资源包

资源包属于人工手动移植，没有生成的途径，故不提供源代码，可以直接从发布了的成品中薅过来。您可以在 `PanGuContinentUnbounded-server/plugins/Geyser-Spigot/packs` 中找到它们，虽然是 zip 格式，但其内部是标准的基岩版资源包结构。

## 配置文件

在源码文件夹中还包含有已经调整好的一些插件配置文件，它们都在 `ConfigMerge` 目录下，且相对于标准服务端目录结构存放：
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

不过服务端部署包中自带了命令行工具 `yq` 和 `jq`（`tools` 目录下），可以实现自动合并。借助自动合并脚本即可完成安装：
1. 解压合并成品包得到 `element_pcub_merge` 文件夹，或者下载通用自定义合并脚本 (https://github.com/BUGTeas/pcub-merge) 或 (https://gitee.com/BugTeaON/pcub-merge)，得到 `custom_merge` 文件夹，在接下来的步骤中我将其称作**自动合并目录**，且应位于服务端根目录下
2. 将 `ConfigMerge/plugins` 复制到自动合并目录下，之后就可以像使用说明步骤那样进行自动合并了