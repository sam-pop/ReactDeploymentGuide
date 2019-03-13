# React/gh-pages Deployment Guide

> [Read the 'Medium' article](https://medium.com/@poplovitch.samuel/guide-deploying-a-react-app-to-github-pages-the-simple-way-525799daa726)

This guide assumes you have a working React app (that was created using `create-react-app`) and you've already set up a GitHub repo that you've pushed your app to.

[Click here to jump to the TL;DR version](#tldr)

Table of Contents:
- [Instructions](#instructions)
- [Update](#update)
- [Troubleshooting](#trouble)
- [Scripts](#bonus)

## <a name="instructions"></a>Instructions

1. In the _root_ directory of your react app run the following command: `npm install gh-pages --save-dev`.

  Make sure the package is installed without any errors, your should see something similar to this in your terminal:

  [![gh-pages installed screenshot](https://i.postimg.cc/9MTMg8sp/Screenshot-from-2018-10-31-11-02-41.png)](https://postimg.cc/FdrN7Zrd)

2. Add the following lines to your **package.json** file (after making the necessary changes):
    - At the top-level:

      `"homepage": "http://<github-user-name>.github.io/<repo-name>"`

    - Under "scripts" add "predeploy" and "deploy":

      ```
      "scripts": {
      //...
      "predeploy": "npm run build",
      "deploy": "gh-pages -d build"
      }
      ```

3. In the _root_ directory of your react app run the following command: `npm run deploy`

  Make sure the build process is completed without any errors, your should see something similar to this in your terminal:

  [![run deploy screenshot](https://i.postimg.cc/WzPqWGjv/Screenshot-from-2018-10-26-13-15-21.png)](https://postimg.cc/ZBVq0yC7)

4. To finish the deployment process you'll have to add, commit and push the changes to your GitHub repo:

  ```
  git add .
  git commit -m 'gh-pages deployment'
  git push
  ```

5. Your app should be automatically deployed to GitHub pages at `http://<github-user-name>.github.io/<repo-name>`

### <a name="update"></a>Update

In order to update your deployed app after making changes to your code you'll have to run `npm run deploy` followed by:
```
git add .
git commit -m 'gh-pages deployment'
git push
```

## <a name="trouble"></a>Troubleshooting

- This process (completed without any errors) should have automatically created a new _remote_ branch in your GitHub repo called **gh-pages**. This branch should (more or less) look like this:

  [![branch screenshot](https://i.postimg.cc/qBhGmrVJ/Screenshot-from-2018-10-26-13-40-15.png)](https://postimg.cc/Cd0D1WxX)

- If after following the above steps you get the README.md file displayed on your GitHub pages instead of your app - _delete the gh-pages branch_.
  After deleting the branch create a new _remote_ branch named `gh-pages` on your repo and go through steps 3-5 again.

- Make sure that your folder structure is correct and follows this basic convention:
  ```
  my-app
  ├── /node_modules
  ├── /src
  ├── /public
  ├── README.md
  ├── package.json
  └── .gitignore
  ```

___

## <a name="tldr"></a> TL;DR

1. In the _root_ folder: `npm install gh-pages --save-dev`

2. Add to **package.json**:

    - At the top-level:

      `"homepage": "http://<github-user-name>.github.io/<repo-name>"`

    - Under "scripts":

      ```
      "scripts": {
      //...
      "predeploy": "npm run build",
      "deploy": "gh-pages -d build"
      }
      ```

3. In the _root_ folder: `npm run deploy`

4. Add, commit, push:
```
git add .
git commit -m 'gh-pages deployment'
git push
```

5. Your app is deployed to GitHub-Pages!

## <a name="bonus"></a> Bonus - Scripts!

You can use the bash/batch scripts that are attached in the SCRIPTS folder to automate the redeployment process after your initial successful deployment (update the deployed app).

### How to use

Copy the [SCRIPTS](https://github.com/sam-pop/ReactDeploymentGuide/tree/master/SCRIPTS) folder to your app _root_ folder, navigate to the SCRIPTS folder and run the appropriate script.

- For **Mac/Linux** users: `sh mac_linux.sh`

- For **Windows** users: `windows.bat` (double click the BAT file or run `windows.bat`)

**Note:** If working with your console/terminal make sure your path is inside the SCRIPTS folder before running the scripts.
