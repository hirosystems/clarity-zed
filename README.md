# Clarity Language Support for Zed

This repository adds Clarity language support to the Zed editor.
Clarity is a decidable, Lisp-like language used for writing smart contracts on the [Stacks Blockchain](https://github.com/stacks-network/stacks-core)

This plugin adds the following:
- Clarity LSP support (Requires [`clarinet`](https://github.com/hirosystems/clarinet) binary in `$PATH`)
- Tree sitter syntax highlighting using https://github.com/xlittlerag/tree-sitter-clarity

## Configuration

The LSP behavior can be customized by adding the following JSON to Zed's `settings.json` file. This example uses the default values:

```json
"lsp": {
  "clarity-lsp": {
    "enable_lsp_tasks": true,
    "initialization_options": {
      "completion": true,
      "completionSmartParenthesisWrap": true,
      "completionIncludeNativePlaceholders": true,
      "documentSymbols": false,
      "formatting": true,
      "goToDefinition": true,
      "hover": true,
      "signatureHelp": true,
      "debugLogging": false
    }
  }
},
```
