
{$APPTYPE GUI}
{$WARNINGS OFF}

program KOLTest;

uses
  Windows, KOL;
  
type

  TTestClass = class
    private
      Edit1, Btn1: PControl;
      FClickCounter: Integer;
      
      procedure _onClick(Sender: PObj);
    public
      constructor Create;
      destructor Destroy; override;
  end;





var
  TestClass: TTestClass;

constructor TTestClass.Create;
begin
  inherited;
  
  Edit1 := NewEditBox(Applet, []);
  with Edit1^ do
  begin
    Left := 30;
    Top := 20;
    Width := 100;
    Height := 25;
    Visible := True;
    Color := clWindow;
  end;
  
  Btn1 := NewButton(Applet, 'Button');
  with Btn1^ do
  begin
    Left := 30;
    Top := 50;
    Width := 80;
    Height := 25;
    Visible := True;
    OnClick := _onClick;
  end;

end;

destructor TTestClass.Destroy;
begin
  //Edit1.Free;
  //Btn1.Free;
  inherited;
end;

procedure TTestClass._onClick(Sender: PObj);
begin
  Inc(FClickCounter);
  Edit1.Text := 'Clicked ' + Int2Str(FClickCounter);
end;



begin
  Applet := NewForm( nil, 'KOL test form');
  Applet.Width := 400;
  Applet.Height := 300;

  TestClass := TTestClass.Create;
  
  Run(Applet);

  TestClass.Free;
end.
