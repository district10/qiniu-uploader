conf:
	cat conf.json.in | sed -e "s/QiNiuAK/$$QiNiuAK/" | sed -e "s/QiNiuSK/$$QiNiuSK/" > conf.json

