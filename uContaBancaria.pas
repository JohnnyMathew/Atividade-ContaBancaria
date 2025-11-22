unit uContaBancaria;

interface

type
  TContaBancaria = class
  private
    FNumeroConta: string;
    FTitular: string;
    FSaldo: Double;
  public
    constructor Create(ANumeroConta, ATitular: string);
    procedure Depositar(Valor: Double);
    function Sacar(Valor: Double): Boolean;
    function ExibirSaldo: Double;

    property NumeroConta: string read FNumeroConta;
    property Titular: string read FTitular;
    property Saldo: Double read FSaldo;
  end;

implementation

{ TContaBancaria }

constructor TContaBancaria.Create(ANumeroConta, ATitular: string);
begin
  FNumeroConta := ANumeroConta;
  FTitular := ATitular;
  FSaldo := 0.00; // saldo inicial
end;

procedure TContaBancaria.Depositar(Valor: Double);
begin
  if Valor > 0 then
    FSaldo := FSaldo + Valor;
end;

function TContaBancaria.Sacar(Valor: Double): Boolean;
begin
  if (Valor > 0) and (Valor <= FSaldo) then
  begin
    FSaldo := FSaldo - Valor;
    Result := True;
  end
  else
    Result := False;
end;

function TContaBancaria.ExibirSaldo: Double;
begin
  Result := FSaldo;
end;

end.
