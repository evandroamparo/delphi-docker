unit UTestCalculadora;

interface

uses
  TestFramework, UCalculadora;

type
   TTestCalculadora = class(TTestCase)
   private
      FCalculadora: TCalculadora;
   protected
      procedure SetUp; override;
      procedure TearDown; override;
   published
      procedure Somar;
   end;

implementation

{ TTestCalculadora }

procedure TTestCalculadora.SetUp;
begin
  inherited;
  FCalculadora := TCalculadora.Create;
end;

procedure TTestCalculadora.Somar;
begin
   CheckEquals(4, FCalculadora.Somar(2, 2));
end;

procedure TTestCalculadora.TearDown;
begin
   FCalculadora.Free;
  inherited;

end;

initialization
   RegisterTest(TTestCalculadora.Suite);

end.
