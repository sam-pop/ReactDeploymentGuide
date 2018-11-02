cd ..
ECHO Running deployment script:
ECHO ==========================
npm run deploy
ECHO
ECHO git add, commit and push:
ECHO =========================
git add .
git commit -m 'gh-pages deployment'
git push
ECHO
ECHO
ECHO ~~~ DONE! check for any errors above ^^^ ~~~
