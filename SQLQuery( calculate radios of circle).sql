create or alter function circle_area ( @radios numeric (10, 2))
returns numeric (8, 2)
as
begin 

declare @v_pi numeric(8, 2) = pi();
declare @v_area numeric(8, 2);

set @v_area = @v_pi * power( @radios , 2 );

return @v_area;
end;

select dbo.circle_area(4) as area;

