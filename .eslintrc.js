module.exports = {
	extends: ["plugin:prettier/recommended"],
	env: {
		browser: true,
		node: true,
		es6: true
	},
	parserOptions: {
		ecmaVersion: 6,
		ecmaFeatures: {
			spread: true,
			experimentalObjectRestSpread: true
		}
	},
};
