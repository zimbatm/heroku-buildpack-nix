test-heroku-16:
	@echo "Running tests in docker (heroku-16)..."
	@docker run --cap-add SYS_USER_NS -v $(shell pwd):/buildpack:ro --rm -it -e "STACK=heroku-16" heroku/heroku:16 bash -c 'cp -r /buildpack /buildpack_test; cd /buildpack_test/; test/run;'
