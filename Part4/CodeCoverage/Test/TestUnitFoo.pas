unit TestUnitFoo;

interface

uses
  TestFramework,
  UnitFoo;

type
  TestStandalone = class(TTestCase)
  published
    procedure TestFooDouble;
  end;

implementation

procedure TestStandalone.TestFooDouble;
var
  ReturnValue: Integer;
  Value: Integer;
begin
  Value := 2;
  ReturnValue := FooDouble(Value);
  CheckEquals(4, ReturnValue);
end;

initialization

  RegisterTest(TestStandalone.Suite);

end.

