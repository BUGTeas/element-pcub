# 满足此条件则提示兼容性：(当前版本 > 所需版本 || 最低兼容版本 > 所需版本)
execute unless score #system pcub_api_version matches 6.. run say [元素银行互通套件] 当前梦盘互通套件版本低于 v1.6.0，这将导致重领的菜单无法在基岩版使用，请将其升级
execute unless score #system pcub_api_minVersion matches ..6 run say [元素银行互通套件] 本套件版本过低，与当前梦盘互通套件版本存在兼容性问题，请升级