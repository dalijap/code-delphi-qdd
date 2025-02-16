unit UnitBar;

interface

function BarBranch(Value: Integer): Integer;

implementation

function BarBranch(Value: Integer): Integer;
begin
  if Value > 0 then
    Result := Value * 2
  else
    Result := Value * (-1);
end;

initialization

var v: integer;
v := 0;

end.
