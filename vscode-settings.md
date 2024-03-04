# VS Code Settings
 
My preferred Visual Studio Code settings and customizations

# Font
* [Monaspace Neon](https://github.com/githubnext/monaspace)

# Extensions
* Theme/Experience
  * Theme: Default Dark Modern
  * Icons: [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
  * [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* Editing
  * [Toggle Quotes](https://marketplace.visualstudio.com/items?itemName=BriteSnow.vscode-toggle-quotes)
* Languages
  * [ES7+ React/Redux/React-Native snippets](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets)
  * [CSS-in-JS](https://marketplace.visualstudio.com/items?itemName=paulmolluzzo.convert-css-in-js)
  * [CSS to JSS](https://marketplace.visualstudio.com/items?itemName=infarkt.css-to-jss)
  * [vscode-styled-components](https://marketplace.visualstudio.com/items?itemName=styled-components.vscode-styled-components)
  * [PostCSS Intellisense and Highlighting](https://marketplace.visualstudio.com/items?itemName=vunguyentuan.vscode-postcss)
  * [XML Tools](https://marketplace.visualstudio.com/items?itemName=DotJoshJohnson.xml)
* Utilities
  * [Thunder Client](https://marketplace.visualstudio.com/items?itemName=rangav.vscode-thunder-client)

## Extension list for quick install
Save the following as file `vscode-ext-install.txt`
```
britesnow.vscode-toggle-quotes
dbaeumer.vscode-eslint
DotJoshJohnson.xml
dsznajder.es7-react-js-snippets
infarkt.css-to-jss
paulmolluzzo.convert-css-in-js
rangav.vscode-thunder-client
styled-components.vscode-styled-components
vunguyentuan.vscode-postcss
```
Then run:
```
cat vscode-ext-install.txt | xargs -L1 code --install-extension
```

# Settings
```json
{
  "workbench.colorTheme": "Default Dark Modern",
  "workbench.iconTheme": "material-icon-theme",
  "workbench.editor.labelFormat": "short",
  "editor.fontFamily": "Monaspace Neon",
  "editor.fontSize": 16,
  "editor.lineHeight": 0,
  "editor.tabSize": 2,
  "editor.formatOnPaste": true,
  "editor.formatOnSave": true,
  "editor.linkedEditing": true,
  "editor.suggestSelection": "first",
  "editor.codeActionsOnSave": [
    "source.fixAll.eslint"
  ],
  "emmet.triggerExpansionOnTab": true,
  "git.enabled": false,
  "eslint.enable": true,
  "eslint.execArgv": null,
  "eslint.validate": [
    "react",
    "typescript",
    "html",
    "javascript"
  ],
  "search.exclude": {
    "**/node_modules": true
  },
  "terminal.integrated.fontSize": 14,
}
```
