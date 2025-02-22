```ada
with Ada.Text_IO; use Ada.Text_IO;
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (others => 0); -- Initialize array
begin
   for I in Arr'Range loop
      Arr(I) := Arr(I) + 1; 
   end loop;
   for J in Arr'Range loop
      Put_Line(Arr(J)'Img); 
   end loop;
exception
   when Constraint_Error =>
      Put_Line("Array index out of bounds");
end Example_Solution;
```