# 满足此条件则提示兼容性：(当前版本 > 所需版本 || 最低兼容版本 > 所需版本)
execute unless score #system pcub_api_version matches 6.. run function element_pcub:incompatible_warn
execute unless score #system pcub_api_minVersion matches ..6 run function element_pcub:incompatible_warn