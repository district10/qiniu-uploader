qiniu: conf.json publish
	qrsync conf.json

publish:
	mkdir $@

conf.json: conf.json.in
	cat $< | sed -e "s/QiNiuAK/$$QiNiuAK/" | sed -e "s/QiNiuSK/$$QiNiuSK/" > $@

gh:
	git add -A; git commit -m "`date` - `uname`"; git push
