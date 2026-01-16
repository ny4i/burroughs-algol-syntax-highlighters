# BBEdit Syntax Highlighter

## Installation

1. Download `Burroughs ALGOL.plist`
2. Install to BBEdit's language modules directory:
   ```bash
   cp "Burroughs ALGOL.plist" "~/Library/Application Support/BBEdit/Language Modules/"
   ```
3. Create the directory if it doesn't exist:
   ```bash
   mkdir -p "~/Library/Application Support/BBEdit/Language Modules/"
   ```
4. Restart BBEdit
5. Files with `.alg` or `.algol` extensions will automatically use the syntax highlighter

## Features

- Case-insensitive keyword matching
- All 500+ keywords and built-in functions
- Preprocessor directive highlighting ($INCLUDE, $CODE, etc.)
- Block comments: `COMMENT...;`
- Line comments: `%`
- String literals: `"..."`
- Function scanning (appears in function popup menu)
- Recognizes procedure definitions

## Function Navigation

The syntax module identifies procedure definitions and adds them to BBEdit's function popup menu for easy navigation:
- `PROCEDURE name`
- `INTEGER PROCEDURE name`
- `REAL PROCEDURE name`

## Manual Installation via BBEdit UI

Alternatively, you can install via BBEdit's preferences:
1. Open BBEdit Preferences
2. Go to **Languages**
3. Click the **+** button to add a custom language module
4. Select `Burroughs ALGOL.plist`
