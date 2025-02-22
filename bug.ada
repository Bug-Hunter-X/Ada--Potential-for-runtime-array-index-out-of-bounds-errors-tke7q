```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (others => 0); -- Initialize array
begin
   for I in Arr'Range loop
      Arr(I) := Arr(I) + 1; 
      --Error prone if range is dynamic and not handled correctly
   end loop;
   for J in Arr'Range loop
      Put_Line(Arr(J)'Img); -- potential error here
   end loop;
end Example;
```