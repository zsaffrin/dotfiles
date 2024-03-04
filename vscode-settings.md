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
pkief.material-icon-theme
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
  "editor.detectIndentation": false,
  "editor.cursorStyle": "line-thin",
  "editor.cursorBlinking": "blink",
  "editor.fontFamily": "Monaspace Neon, Menlo, Monaco, 'Courier New', monospace",
  "editor.fontSize": 16,
  "editor.lineHeight": 0,
  "editor.tabSize": 2,
  "editor.wordWrap": "on",
  "editor.fontLigatures": false,
  "editor.formatOnPaste": true,
  "editor.formatOnSave": true,
  "editor.bracketPairColorization.enabled": true,
  "editor.guides.bracketPairs": "active",
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
    "javascript",
    "javascriptreact"
  ],
  "javascript.preferences.quoteStyle": "single",
  "search.exclude": {
    "**/node_modules": true
  },
  "terminal.integrated.fontSize": 14,
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