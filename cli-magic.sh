#!/bin/bash
# 🧙 CLI-MAGIC 工具集 主脚本

ARCH=$(uname -m)
echo "🧙 CLI-MAGIC 工具集 | 当前架构：${ARCH}"

MODULE="$1"
if [[ -z "$MODULE" ]]; then
  echo "用法: $0 <模块名称>"
  echo "例如: $0 ipinfo"
  exit 1
fi

MODULE_PATH="./modules/${MODULE}.sh"
if [[ ! -f "$MODULE_PATH" ]]; then
  echo "❌ 错误：模块 '$MODULE' 不存在"
  exit 1
fi

# 运行模块脚本
bash "$MODULE_PATH"
