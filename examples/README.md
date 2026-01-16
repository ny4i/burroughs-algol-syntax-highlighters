# Burroughs ALGOL Example Code

This directory contains example programs demonstrating various features of Burroughs Extended ALGOL.

## Examples

### hello-world.alg
Basic program demonstrating:
- String manipulation with `replace` statement
- Pointer operations
- Bit field operations `[7:8]`
- For loops with `step until`
- Display output

**Expected Output:**
```
Hello world 1
Hello world 2
Hello world 3
Hello world 4
```

### array-types.alg
Demonstrates the various array types and modifiers:
- Default word arrays (48-bit)
- EBCDIC, ASCII, and HEX character arrays
- Typed arrays (INTEGER, REAL, DOUBLE, LONG, BOOLEAN, POINTER)
- Multi-dimensional arrays
- Array initialization and traversal

**Key Concepts:**
- By default, arrays are word-oriented (48 bits per element)
- Use EBCDIC/ASCII/HEX modifiers for character arrays
- Multi-dimensional array indexing

### procedures.alg
Shows procedure and function definitions:
- Simple procedures without parameters
- Procedures with value parameters
- INTEGER PROCEDURE (returns integer)
- REAL PROCEDURE (returns real)
- BOOLEAN PROCEDURE (returns boolean)
- Function result assignment (assign to function name)
- Label usage and GO statements

**Key Concepts:**
- Parameter passing with `value` declarations
- Type declarations for parameters
- Function return by assigning to function name
- Labels for control flow

### bit-operations.alg
Demonstrates bit field operations:
- Bit field notation: `[start:length]`
- Storing values in specific bit positions
- Extracting bit fields
- Combining multiple bit fields
- Pointer arithmetic
- Word-level data copying

**Key Concepts:**
- `value & data[position:length]` stores data
- `value.[position:length]` extracts data
- 48-bit word architecture
- Pointer manipulation for efficient memory operations

## Running the Examples

These examples are intended to be compiled and run on a Burroughs/Unisys MCP system with a Burroughs ALGOL compiler.

**Typical compilation and execution:**
```
COMPILE <filename>
RUN <programname>
```

**Note:** The exact commands depend on your MCP environment configuration.

## Language Features Demonstrated

- ✅ Variable declarations (INTEGER, REAL, BOOLEAN, ARRAY, POINTER)
- ✅ Array types and modifiers (EBCDIC, ASCII, HEX)
- ✅ Control structures (IF/THEN/ELSE, FOR/DO, WHILE/DO)
- ✅ Procedures and functions with return types
- ✅ Bit field operations (unique to Burroughs)
- ✅ Pointer manipulation
- ✅ String operations with REPLACE
- ✅ Comments (COMMENT...;  and % line comments)
- ✅ Labels and GO statements

## Contributing Examples

If you have interesting Burroughs ALGOL code to share:

1. Keep examples focused on specific language features
2. Add comments explaining what the code demonstrates
3. Include expected output where applicable
4. Test on an actual MCP system if possible
5. Submit via pull request with description

## Additional Resources

- See the main [README.md](../README.md) for language overview
- Refer to Unisys MCP documentation for complete language reference
- Check individual editor directories for syntax highlighting installation
