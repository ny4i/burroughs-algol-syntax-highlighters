BEGIN
COMMENT
  Demonstrates procedures and functions in Burroughs ALGOL
  Shows various procedure types and calling conventions
;

% Simple procedure
procedure displayMessage;
   begin
   display "Procedure called";
   end;

% Procedure with parameters
procedure printSum(a, b);
   value a, b;
   integer a, b;
   begin
   integer result;
   result := a + b;
   display result;
   end;

% Integer function (returns integer)
integer procedure factorial(n);
   value n;
   integer n;
   begin
   integer result, i;
   result := 1;
   for i := 2 step 1 until n do
      result := result * i;
   factorial := result;  % Assign to function name
   end;

% Real function (returns real)
real procedure average(data, count);
   value count;
   integer count;
   array data;
   begin
   real sum;
   integer i;
   sum := 0.0;
   for i := 0 step 1 until count-1 do
      sum := sum + data[i];
   average := sum / count;
   end;

% Boolean function
boolean procedure isPrime(n);
   value n;
   integer n;
   begin
   integer i;
   boolean prime;
   if n <= 1 then
      prime := FALSE
   else
      begin
      prime := TRUE;
      for i := 2 step 1 until n-1 do
         if n mod i = 0 then
            begin
            prime := FALSE;
            go exit;  % Early exit
            end;
      exit: % Label
      end;
   isPrime := prime;
   end;

% Main program
integer x, y, fact;
array numbers[0:4];
real avg;
boolean result;

% Call procedures
displayMessage;
printSum(10, 20);

% Call functions
fact := factorial(5);
display fact;  % Should display 120

% Setup array for average
numbers[0] := 10;
numbers[1] := 20;
numbers[2] := 30;
numbers[3] := 40;
numbers[4] := 50;

avg := average(numbers, 5);
display avg;  % Should display 30.0

% Test prime checker
result := isPrime(17);
if result then
   display "17 is prime"
else
   display "17 is not prime";

END.
