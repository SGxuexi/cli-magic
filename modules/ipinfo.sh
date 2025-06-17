#!/bin/bash
# 模块：ipinfo - 获取公网 IP（多接口兜底）

get_ip_info() {
  for url in \
    "https://ifconfig.me" \
    "https://ip.3322.net" \
    "https://ident.me"
  do
    ip=$(curl -s --max-time 3 "$url")
    if [[ -n "$ip" ]]; then
      echo "🌍 公网 IP：$ip"
      return
    fi
  done

  echo "❌ 获取失败，接口全部不可用"
}

echo "🌐 正在获取公网 IP 信息..."
get_ip_info
