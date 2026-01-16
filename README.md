# Burroughs ALGOL Syntax Highlighters

Syntax highlighting for Burroughs Extended ALGOL (Unisys MCP systems) across multiple text editors and IDEs.

## About Burroughs ALGOL

Burroughs Extended ALGOL is a dialect of ALGOL 60 with extensions for systems programming on Burroughs mainframe computers (now Unisys MCP). Despite being a legacy language from the 1960s-1980s, approximately 200 developers worldwide still actively use it to maintain critical systems.

### Language Features

- **Word-oriented architecture**: Arrays are 48-bit words by default
- **Array modifiers**: EBCDIC, ASCII, HEX for character arrays
- **Bit field operations**: `[7:8]` syntax for bit manipulation
- **Pointer manipulation**: Native pointer support with `pointer()` function
- **String operations**: `replace` statement for string manipulation
- **500+ built-in functions**: Database, I/O, math, transaction control

## Supported Editors

| Editor | Platform | Status | Installation |
|--------|----------|--------|--------------|
| **TextPad** | Windows | ✅ Complete | [Instructions](textpad/) |
| **Notepad++** | Windows | ✅ Complete | [Instructions](notepad-plus-plus/) |
| **BBEdit** | macOS | ✅ Complete | [Instructions](bbedit/) |
| **VS Code** | All | ✅ Complete | [Instructions](vscode/) |

## Quick Start

### TextPad (Windows)
```bash
# Copy to TextPad syntax directory
copy textpad\ALGOL.syn "C:\Program Files\TextPad\Samples"
```

### Notepad++ (Windows)
1. Open Notepad++
2. Language → User Defined Language → Define your language → Import
3. Select `notepad-plus-plus/burroughs-algol.xml`

### BBEdit (macOS)
```bash
# Install to Language Modules directory
cp "bbedit/Burroughs ALGOL.plist" ~/Library/Application\ Support/BBEdit/Language\ Modules/
```

### VS Code (All Platforms)
```bash
# Copy to VS Code extensions directory
cp -r vscode ~/.vscode/extensions/burroughs-algol
```

## Example Code

```algol
BEGIN
define MAXLENV = 100#;
integer i;
real r;
array a[0:MAXLENV-1];  % Array of 48-bit words
pointer pa;

pa := pointer(a);
replace pa:pa by "Hello world ";

r := 0 & 4[7:8];  % Bit field operation
for i := 1 step 1 until r.[7:8] do
   begin
   replace pa by i for * digits,NUL;
   display (pointer(a));
   end;
END.
```

See the [examples/](examples/) directory for more code samples.

## Features

All syntax highlighters support:

- ✅ Case-insensitive keyword matching (ALGOL convention)
- ✅ 46 core keywords (BEGIN, END, ARRAY, POINTER, etc.)
- ✅ 500+ built-in functions organized by category
- ✅ Preprocessor directives ($INCLUDE, $CODE, $SET, etc.)
- ✅ Block comments: `COMMENT...;`
- ✅ Line comments: `%`
- ✅ String literals: `"..."`
- ✅ Bit field notation: `[7:8]`
- ✅ Operators and assignments (`:=`, `&`, etc.)

## Contributing

Contributions welcome! If you:

- Find missing keywords or built-in functions
- Want to add support for another editor
- Have improvements to existing highlighters
- Can provide example code or documentation

Please open an issue or submit a pull request.

### Adding a New Editor

To add support for a new editor:

1. Create a directory: `editor-name/`
2. Convert the keyword list (see `textpad/ALGOL.syn` for reference)
3. Add installation instructions in `editor-name/README.md`
4. Update this main README with the new editor
5. Test with example files from `examples/`

## Community

Approximately 200 developers worldwide still use Burroughs ALGOL. If you're one of them:

- Share this repository with your colleagues
- Contribute example code to help document the language
- Report issues or suggest improvements

## License

MIT License - See [LICENSE](LICENSE) file for details.

## Acknowledgments

- Original TextPad syntax by Tom Schaefer (toms@xmission.com)
- Conversions and additional editor support by the community

## Resources

- [Unisys MCP Documentation](https://www.unisys.com) (official vendor)
- Example code in the [examples/](examples/) directory
- Active Burroughs ALGOL community (~200 users worldwide)

---

**Maintained by the Burroughs ALGOL community**

*Preserving access to legacy languages for critical systems maintenance*
