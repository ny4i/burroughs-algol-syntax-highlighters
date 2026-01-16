# VS Code Syntax Highlighter

## Installation

### Option 1: Install from VSIX (Recommended)
1. Download the `.vsix` file (coming soon)
2. Open VS Code
3. Go to Extensions view (Ctrl+Shift+X / Cmd+Shift+X)
4. Click the "..." menu at the top
5. Select "Install from VSIX..."
6. Choose the downloaded `.vsix` file

### Option 2: Install Manually (Development)
1. Clone this repository
2. Copy the `vscode` folder to your VS Code extensions directory:
   - **Windows**: `%USERPROFILE%\.vscode\extensions\burroughs-algol`
   - **macOS**: `~/.vscode/extensions/burroughs-algol`
   - **Linux**: `~/.vscode/extensions/burroughs-algol`
3. Restart VS Code
4. Open any `.alg` or `.algol` file

## Building VSIX Package

To create a distributable `.vsix` file:

```bash
# Install vsce (VS Code Extension Manager)
npm install -g @vscode/vsce

# Navigate to the vscode directory
cd vscode

# Package the extension
vsce package
```

This will create a `burroughs-algol-1.0.0.vsix` file you can share.

## Features

- Syntax highlighting for all Burroughs ALGOL keywords and functions
- Case-insensitive matching
- Block comments: `COMMENT...;`
- Line comments: `%`
- String literals with escape sequences
- Bit field notation: `[7:8]`
- Preprocessor directives: `$INCLUDE`, `$CODE`, etc.
- Auto-closing brackets and quotes
- Code folding for BEGIN/END and PROCEDURE blocks

## Supported File Extensions

- `.alg`
- `.algol`

## Language Features

- **Keyword highlighting**: Core language constructs (BEGIN, END, IF, THEN, etc.)
- **Type highlighting**: Data types (INTEGER, REAL, ARRAY, POINTER, etc.)
- **Function highlighting**: 500+ built-in functions
- **Operator highlighting**: Logical (AND, OR, NOT) and comparison operators
- **Preprocessor highlighting**: Compiler directives ($INCLUDE, $SET, etc.)

## Theme Compatibility

The syntax highlighter uses standard TextMate scopes and works with all VS Code themes. Colors will vary based on your selected theme.

## Troubleshooting

**Files not being recognized:**
- Check file extension is `.alg` or `.algol`
- Right-click the file → "Change Language Mode" → Select "Burroughs ALGOL"

**Syntax not highlighting:**
- Reload VS Code window (Cmd+R / Ctrl+R)
- Check VS Code version is 1.60.0 or higher
