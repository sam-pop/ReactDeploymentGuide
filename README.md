# ReactDeploymentGuide

This guide assumes you have a working React app (that was created using `create-react-app`) and you've already set up a github repo that you've pushed your app to.

1. On the _root_ directory of your react app run the following command: `npm install gh-pages --save-dev`.

  Make sure the package is installed without any errors, your should see something similar to this in your terminal:

  [![gh-pages installed screenshot](https://i.postimg.cc/jS3d1HK7/Screenshot-from-2018-10-26-13-11-30.png)](https://postimg.cc/zyWrbRyz)

2. Add the following lines to your **package.json** file (after making the necessary changes):
  - At the top-level:

    `"homepage": "http://<github-user-name>.github.io/<repo-name>"`
  - Under "scripts" add the "predeploy" and "deploy" like this:
  ```
  "scripts": {
  //...
  "predeploy": "npm run build",
  "deploy": "gh-pages -d build"
  }
  ```

3. On the _root_ directory of your react app run the following command: `npm run deploy`

  Make sure the build process is completed without any errors, your should see something similar to this in your terminal:

  [![run deploy screenshot](https://i.postimg.cc/WzPqWGjv/Screenshot-from-2018-10-26-13-15-21.png)](https://postimg.cc/ZBVq0yC7)

To finish the deployment process you'll have to add,commit and push the changes to your github repo:

```
git add .
git commit -m 'gh-pages deployment'
git push
```

Your app should be automatically deployed to GitHub pages at `http://<github-user-name>.github.io/<repo-name>`

### Note:

In order to update your deployed app after making changes to your code you'll have to run `npm run deploy` followed by:
```
git add .
git commit -m 'gh-pages deployment'
git push
```
