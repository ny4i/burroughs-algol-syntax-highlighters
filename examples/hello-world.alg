BEGIN
COMMENT
  Simple Hello World demonstration
  Shows basic string manipulation and display operations
;

define MAXLENV = 100#;
integer i;
real r;
array a[0:MAXLENV-1];  % Array of 48-bit words
pointer pa;

pa := pointer(a);
replace pa:pa by "Hello world ";  % Set string prefix
display pointer(a);

% Use bit field operation to set loop counter
r := 0 & 4[7:8];  % Store 4 in bits 7-8

% Loop and display with counter suffix
for i := 1 step 1 until r.[7:8] do
   begin
   replace pa by i for * digits,NUL;  % Append counter
   display (pointer(a));
   end;
END.
