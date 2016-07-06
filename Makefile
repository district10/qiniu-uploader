conf: conf.json
conf.json:
	cat conf.json.in | sed -e "s/QiNiuAK/$$QiNiuAK/" | sed -e "s/QiNiuSK/$$QiNiuSK/" > conf.json

qiniu: conf.json
	qrsync conf.json

gh:
	git add -A; git commit -m "`date` - `uname`"; git push
