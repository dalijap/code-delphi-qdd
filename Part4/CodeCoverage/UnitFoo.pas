unit UnitFoo;

interface

function FooDouble(Value: Integer): Integer;

implementation

function FooDouble(Value: Integer): Integer;
begin
  Result := Value * 2;
end;

end.
