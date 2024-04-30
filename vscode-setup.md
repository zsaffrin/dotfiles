# VS Code Settings

My preferred Visual Studio Code settings and customizations

# Extensions

- Theme/Experience
  - Theme: Default Dark Modern (included with app)
  - Icons: [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
  - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- Editing
  - [Toggle Quotes](https://marketplace.visualstudio.com/items?itemName=BriteSnow.vscode-toggle-quotes)
- Languages
  - [ES7+ React/Redux/React-Native snippets](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets)
  - [CSS-in-JS](https://marketplace.visualstudio.com/items?itemName=paulmolluzzo.convert-css-in-js)
  - [vscode-styled-components](https://marketplace.visualstudio.com/items?itemName=styled-components.vscode-styled-components)
  - [XML Tools](https://marketplace.visualstudio.com/items?itemName=DotJoshJohnson.xml)
- Utilities
  - [Thunder Client](https://marketplace.visualstudio.com/items?itemName=rangav.vscode-thunder-client)

## Extension list for quick install

_Note: These should already be installed if you used the Brewfile approach described in the [osx-setup](osx-setup.md) guide_

Save the following as file `vscode-ext-install.txt`

```
britesnow.vscode-toggle-quotes
dbaeumer.vscode-eslint
DotJoshJohnson.xml
dsznajder.es7-react-js-snippets
esbenp.prettier-vscode
paulmolluzzo.convert-css-in-js
pkief.material-icon-theme
rangav.vscode-thunder-client
styled-components.vscode-styled-components
```

Then run:

```shell
cat vscode-ext-install.txt | xargs -L1 code --install-extension
```

# Settings

```json
{
  "workbench.colorTheme": "Default Dark Modern",
  "workbench.iconTheme": "material-icon-theme",
  "workbench.editor.showTabs": "single",
  "workbench.editor.labelFormat": "short",
  "workbench.editor.decorations.colors": true,
  "workbench.activityBar.location": "top",
  "workbench.tree.indent": 12,
  "workbench.tree.renderIndentGuides": "always",
  "workbench.tree.enableStickyScroll": true,
  "explorer.compactFolders": false,
  "breadcrumbs.enabled": true,
  "breadcrumbs.filePath": "on",
  "editor.detectIndentation": false,
  "editor.cursorStyle": "line-thin",
  "editor.cursorBlinking": "blink",
  "editor.fontFamily": "'MonaspiceNe Nerd Font', Menlo, Monaco, 'Courier New', monospace",
  "editor.fontSize": 14,
  "editor.lineHeight": 1.5,
  "editor.tabSize": 2,
  "editor.insertSpaces": true,
  "editor.wordWrap": "on",
  "editor.fontLigatures": false,
  "editor.formatOnPaste": true,
  "editor.formatOnSave": true,
  "editor.bracketPairColorization.enabled": true,
  "editor.guides.bracketPairs": "active",
  "editor.linkedEditing": true,
  "editor.stickyScroll.enabled": true,
  "editor.minimap.enabled": true,
  "editor.renderWhitespace": "boundary",
  "editor.suggestSelection": "first",
  "editor.codeActionsOnSave": ["source.fixAll.eslint"],
  "emmet.triggerExpansionOnTab": true,
  "files.trimFinalNewlines": true,
  "eslint.enable": true,
  "eslint.execArgv": null,
  "eslint.validate": [
    "react",
    "typescript",
    "html",
    "javascript",
    "javascriptreact"
  ],
  "javascript.preferences.quoteStyle": "single",
  "search.exclude": {
    "**/node_modules": true
  },
  "git.autofetch": true,
  "git.enableSmartCommit": false,
  "git.confirmSync": false,
  "git.postCommitCommand": "sync",
  "terminal.integrated.fontSize": 14,
  "window.density.editorTabHeight": "compact",
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[markdown]": {
    "editor.unicodeHighlight.invisibleCharacters": true
  },
  "[plaintext]": {
    "editor.unicodeHighlight.invisibleCharacters": true
  }
}
```

# Snippets: Javascript JSX (javascriptreact)

```json
{
  {
    "React Component": {
      "prefix": "rc",
      "body": [
        "const ${TM_FILENAME_BASE} = () => {",
        "\treturn (",
        "\t\t<div>",
        "\t\t\t${TM_FILENAME_BASE}",
        "\t\t</div>",
        "\t);",
        "};",
        "",
        "export default ${TM_FILENAME_BASE};",
        "",
      ],
    },
    "React Component w/ Props": {
      "prefix": "rcp",
      "body": [
        "const ${TM_FILENAME_BASE} = () => {",
        "\treturn (",
        "\t\t<div>",
        "\t\t\t${TM_FILENAME_BASE}",
        "\t\t</div>",
        "\t);",
        "};",
        "${TM_FILENAME_BASE}.propTypes = {};",
        "${TM_FILENAME_BASE}.defaultProps = {};",
        "",
        "export default ${TM_FILENAME_BASE};",
        "",
      ],
    },
    "Styled-component": {
      "prefix": "sc",
      "body": [
        "const StyledDiv = styled.div`",
        "\tpadding: 1em;",
        "`;",
      ],
    },
    "Styled-component w/Theme": {
      "prefix": "sct",
      "body": [
        "const StyledDiv = styled.div(({ theme }) => {",
        "\tconst { space } = theme;",
        "",
        "\treturn `",
        "\t\tpadding: ${space.md};",
        "\t`;",
        "});",
      ],
    },
    "propTypes and defaultProps": {
      "prefix": "pt",
      "body": [
        "${TM_FILENAME_BASE}.propTypes = {};",
        "${TM_FILENAME_BASE}.defaultProps = {};",
      ],
    },
    "propTypes w/ children and defaultProps": {
      "prefix": "ptc",
      "body": [
        "${TM_FILENAME_BASE}.propTypes = {",
        "\tchildren: oneOfType([",
        "\t\tarrayOf(node),",
        "\t\tnode,",
        "\t]),",
        "};",
        "${TM_FILENAME_BASE}.defaultProps = {};",
      ],
    },
    "JSDoc-style Documentation block": {
      "prefix": "jsdoc",
      "body": [
        "/**",
        " * Description of function",
        " * ",
        " * @param {type} name Description of param",
        " * @param {type} name Description of param",
        " * @return {type} Description of return",
        " */",
      ],
    },
    "pre JSON stringify": {
      "prefix": "pj",
      "body": [
        "<pre>{JSON.stringify(value, ' ', 2)}</pre>",
      ],
    },
  }
}
```
