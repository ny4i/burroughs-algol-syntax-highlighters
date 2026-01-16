BEGIN
COMMENT
  Demonstrates different array types and modifiers
  Burroughs ALGOL arrays are word-oriented by default
;

% Default array: 48-bit words
array wordArray[0:9];

% Character arrays with different encodings
EBCDIC ARRAY ebcdicChars[0:99];
ASCII ARRAY asciiChars[0:99];
HEX ARRAY hexData[0:255];

% Typed arrays
integer intArray[0:49];
real realArray[0:49];
DOUBLE doubleArray[0:24];
LONG longArray[0:24];
BOOLEAN boolArray[0:99];
pointer ptrArray[0:9];

% Multi-dimensional arrays
array matrix[0:9, 0:9];
integer table[1:10, 1:10, 1:5];

% Demonstration
integer i, j;
real sum;

% Initialize word array
for i := 0 step 1 until 9 do
   wordArray[i] := i * 100;

% Initialize integer array
for i := 0 step 1 until 49 do
   intArray[i] := i;

% Matrix initialization
for i := 0 step 1 until 9 do
   for j := 0 step 1 until 9 do
      matrix[i,j] := i * 10 + j;

% Calculate sum of reals
sum := 0.0;
for i := 0 step 1 until 49 do
   begin
   realArray[i] := i * 1.5;
   sum := sum + realArray[i];
   end;

display sum;

END.
