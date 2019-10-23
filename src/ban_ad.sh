# ban ad
if [[ $ban_ad ]]; then
	ban_ad_file="/etc/v2ray/masteen/v2ray/config/server/include/ad.json"
	sed -i "/\/\/include_ban_ad/r $ban_ad_file" $v2ray_server_config
	sed -i "s#//include_ban_ad#,#" $v2ray_server_config
fi
