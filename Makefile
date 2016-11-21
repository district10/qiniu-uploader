qiniu: conf.json
	qrsync conf.json

conf.json: conf.json.in
	cat $< | sed -e "s/QiNiuAK/$$QiNiuAK/" | sed -e "s/QiNiuSK/$$QiNiuSK/" > $@

gh:
	git add -A; git commit -m "`date` - `uname`"; git push
