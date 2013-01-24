echo -e "Current repo: $TRAVIS_REPO_SLUG\n"

if [ "$TRAVIS_PULL_REQUEST" == "false" ] &&  [ "$TRAVIS_REPO_SLUG" == "wet-boew/wet-boew-xsl" ]; then

	#Set git user
	git config --global user.email "travis@travis-ci.org"
	git config --global user.name "Travis"

	#Set upstream remote
	git remote add upstream https://${GH_TOKEN}@github.com/wet-boew/wet-boew-xsl.git > /dev/null

	git fetch -qn upstream > /dev/null

	#Update working example
	if [ "$TRAVIS_BRANCH" == "build" ]; then
		echo -e "Updating working examples...\n"

		git add -f demos/.
		git stash
		git checkout gh-pages
		git rebase --committer-date-is-author-date master
		git rm -r dist/.
		git stash pop
		git add -f demos/.
		git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages"
		git push -fq upstream gh-pages > /dev/null

		echo -e "Finished updating the working examples\n"
	fi
fi