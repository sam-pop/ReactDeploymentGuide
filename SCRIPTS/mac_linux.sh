cd ..
echo "Running deployment script:"
echo "=========================="
npm run deploy
echo " "
echo "git add, commit and push:"
echo "========================="
git add .
git commit -m 'gh-pages deployment'
git push
echo " "
echo " "
echo "~~~ DONE! check for any errors above ^^^ ~~~"
