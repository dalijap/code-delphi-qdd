unit TestUnits;

interface

uses
  TestFramework,
  UnitFoo,
  UnitBar;

type
  TestStandalone = class(TTestCase)
  published
    procedure TestFooDouble;
    procedure TestBarBranchZero;
    procedure TestBarBranchPositive;
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

procedure TestStandalone.TestBarBranchZero;
var
  ReturnValue: Integer;
  Value: Integer;
begin
  Value := 0;
  ReturnValue := BarBranch(Value);
  CheckEquals(0, ReturnValue);
end;

procedure TestStandalone.TestBarBranchPositive;
var
  ReturnValue: Integer;
  Value: Integer;
begin
  Value := 2;
  ReturnValue := BarBranch(Value);
  CheckEquals(4, ReturnValue);
end;

initialization

  RegisterTest(TestStandalone.Suite);

end.

