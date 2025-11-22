unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uContaBancaria;

type
  TForm1 = class(TForm)
    edtNumeroConta: TEdit;
    edtTitular: TEdit;
    edtValor: TEdit;
    btnCriarConta: TButton;
    btnDepositar: TButton;
    btnSacar: TButton;
    btnExibirSaldo: TButton;
    lblSaldo: TLabel;
    lblNumeroConta: TLabel;
    lblTitular: TLabel;
    lblValor: TLabel;
    lblStatusCriar: TLabel;

    procedure btnCriarContaClick(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
    procedure btnSacarClick(Sender: TObject);
    procedure btnExibirSaldoClick(Sender: TObject);
  private
    Conta: TContaBancaria;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCriarContaClick(Sender: TObject);
begin
  if (edtNumeroConta.Text = '') or (edtTitular.Text = '') then
  begin
    lblStatusCriar.Caption := 'Informe o número da conta e o nome do titular.';
    Exit;
  end;

  Conta := TContaBancaria.Create(edtNumeroConta.Text, edtTitular.Text);

  lblStatusCriar.Caption := 'Conta criada com sucesso!';
  lblSaldo.Caption := 'Saldo atual: R$ 0,00';
end;

procedure TForm1.btnDepositarClick(Sender: TObject);
var
  Valor: Double;
begin
  if Conta = nil then
  begin
    lblSaldo.Caption := 'Crie uma conta primeiro.';
    Exit;
  end;

  if not TryStrToFloat(edtValor.Text, Valor) or (Valor <= 0) then
  begin
    lblSaldo.Caption := 'Digite um valor válido para depósito.';
    Exit;
  end;

  Conta.Depositar(Valor);
  lblSaldo.Caption := 'Depósito realizado! Saldo atual: R$ ' +
    FormatFloat('0.00', Conta.ExibirSaldo);
end;

procedure TForm1.btnSacarClick(Sender: TObject);
var
  Valor: Double;
begin
  if Conta = nil then
  begin
    lblSaldo.Caption := 'Crie uma conta primeiro.';
    Exit;
  end;

  if not TryStrToFloat(edtValor.Text, Valor) or (Valor <= 0) then
  begin
    lblSaldo.Caption := 'Digite um valor válido para saque.';
    Exit;
  end;

  if Conta.Sacar(Valor) then
    lblSaldo.Caption := 'Saque realizado! Saldo atual: R$ ' +
      FormatFloat('0.00', Conta.ExibirSaldo)
  else
    lblSaldo.Caption := 'Saldo insuficiente!';
end;

procedure TForm1.btnExibirSaldoClick(Sender: TObject);
begin
  if Conta = nil then
  begin
    lblSaldo.Caption := 'Crie uma conta primeiro.';
    Exit;
  end;

  lblSaldo.Caption := 'Saldo atual: R$ ' + FormatFloat('0.00', Conta.ExibirSaldo);
end;

end.
