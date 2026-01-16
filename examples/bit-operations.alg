BEGIN
COMMENT
  Demonstrates bit field operations and pointer manipulation
  Unique features of Burroughs ALGOL's 48-bit word architecture
;

integer value, masked, shifted;
real bitfield;
array data[0:9];
pointer p, q;

% Bit field notation: [start:length]
% Extracts 'length' bits starting at position 'start'

% Store value in specific bit field
bitfield := 0 & 255[40:8];  % Store 255 in bits 40-47 (rightmost byte)

% Extract bit fields
value := bitfield.[40:8];  % Extract bits 40-47
display value;  % Should be 255

% More bit field examples
bitfield := 0 & 15[44:4];   % Store 15 in 4 bits
value := bitfield.[44:4];   % Extract those 4 bits

% Combining bit fields
bitfield := 0 & 255[40:8] & 127[32:8] & 63[24:8];
% Now we have: bits 40-47 = 255, 32-39 = 127, 24-31 = 63

% Extract each field
integer byte1, byte2, byte3;
byte1 := bitfield.[40:8];  % 255
byte2 := bitfield.[32:8];  % 127
byte3 := bitfield.[24:8];  % 63

display byte1;
display byte2;
display byte3;

% Pointer manipulation
p := pointer(data);        % Point to start of array
data[0] := 100;
data[1] := 200;

% Use pointer arithmetic
q := p + 1;               % Point to next word

% Replace operations with pointers
replace p by "First";
replace q by "Second";

display pointer(data);

% Copy data between arrays
array source[0:4];
array dest[0:4];
pointer src, dst;
integer i;

for i := 0 step 1 until 4 do
   source[i] := i * 10;

src := pointer(source);
dst := pointer(dest);

% Copy using pointers
for i := 0 step 1 until 4 do
   begin
   replace dst by src for 1 words;  % Copy one word
   src := src + 1;
   dst := dst + 1;
   end;

% Verify copy
for i := 0 step 1 until 4 do
   display dest[i];

END.
