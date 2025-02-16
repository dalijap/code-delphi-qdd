program CodeLibTests;

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

{$STRONGLINKTYPES ON}

uses
  DUnitTestRunner,
  TestUnits in 'TestUnits.pas',
  UnitFoo in '..\UnitFoo.pas',
  UnitBar in '..\UnitBar.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

