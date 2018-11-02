cd ..
echo "Running scripts..."
echo "=================="
echo " "
echo "installing gh-pages:"
echo " "
npm install gh-pages --save-dev
echo " "
echo "running deployment:"
echo " "
npm run deploy
echo " "
echo "git add, commit and push:"
echo " "
git add .
git commit -m 'gh-pages deployment'
git push
echo " "
echo "DONE! check for any errors above ^^^"
