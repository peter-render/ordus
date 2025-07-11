{TEditN, TMEditN, TDBEditN

 - First Author : Jose Maria Gias
 - email        : sigekom@arrakis.es
 - Home         : http://www.arrakis.es/~sigecom
 - Version      : 2.5 Delphi 2-3-4-5
 - Date         : 10/31/1999
 - Type         : FreeWare

 The source code of this component is the sum of the work of many
 developers. To see the information and comments in file ReadENew.Txt

 If you carry out an improvement, please send it to the first author
 that will add it in next versions. It is necessary to maintain the names,
 properties and procedures of previous versions for compatibility of
 EditNew. Please, all the text messages in English
 }
unit MinaEgna;

interface

uses
  {$IFDEF WIN32}Windows,{$ELSE}Winprocs,{$ENDIF}
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls;

const
  {Background for Text Hints. It could be also clInfoBk}
  clNewInfoBk = TColor($FFFF00);

type
  TEditTypes = (etString, etInteger, etFloat,etDate,etTime);
  TEditAlign = (etAlignRight, etAlignLeft, etAlignCenter, etAlignNone, etAlignValue);
  TInsertKeyStates = (iksInsert, iksOverWrite);

  TEditN = class(TEdit)
  private
    { Private declarations }
    FOnEnter      : TNotifyEvent;
    FOnExit       : TNotifyEvent;
    FOnChange     : TNotifyEvent;
    I_Color       : TColor;
    E_Color       : TColor;
    FI_Color      : TColor;
    FE_Color      : TColor;
    FO_Color      : TColor;
    TipoEdit      : TEditTypes;
    TipoAlign     : TEditAlign;
    KeyTab        : Char;
    LongAlign     : Integer;
    ValInteger    : Integer;
    ValFloat      : Double;
    SDecimal      : Char;
    EPrecision    : Integer;
    FUpper        : Boolean;
    FUpperList    : String;
    ValTemp       : Extended;
    TxtConvert    : String;
    FWidthOnFocus : Integer;
    iWidth        : Integer;
    TextAtEnter   : String;
    PtrToData     : Pointer;
    sDate         : Char;
    sTime         : Char;
    FSeconds      : Boolean;
    ValDate       : TDateTime;
    ValTime       : TDateTime;
    FInsertKeyState : boolean;
    FTextHint     : Boolean;
    procedure WMChar(var Msg: TWMKey); message WM_Char;
    procedure DoMouseLeave(var Msg: TMessage); message CM_MOUSELEAVE;
  protected
    {Protected declarations}
    procedure FormatDate;
    procedure FormatTime;
    function  GetInsertKeyState: TInsertKeyStates;
    procedure WndProc(var Message: TMessage); override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure SetTypeAlign(Value: TEditAlign);
    function  HintProc(CurPos: TPoint): Boolean; virtual;
  public
    procedure KeyPress(var Key: Char); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure DoEnter; override;
    procedure DoExit; override;
    procedure Change; override;
    procedure SetInteger(VInteger : Integer);
    procedure SetFloat(VFloat : Double);
    procedure SetPtrToData(DataPtr:Pointer);
    procedure Update; // Not declare override because make stack overflow
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    property InsertKeyState: TInsertKeyStates read GetInsertKeyState;
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
  published
    property OnEnter: TNotifyEvent read FOnEnter write FOnEnter;
    property OnExit : TNotifyEvent read FOnExit  write FOnExit;
    property OnChange : TNotifyEvent read FOnChange  write FOnChange;
    property ColorOnFocus : TColor read I_Color write I_Color;
    property ColorOnNotFocus : TColor read E_Color write E_Color;
    property FontColorOnFocus : TColor read FI_Color write FI_Color;
    property FontColorOnNotFocus : TColor read FE_Color write FE_Color;
    property FontColorOnOverWrite : TColor read FO_Color write FO_Color;
    property EditType : TEditTypes read TipoEdit write TipoEdit;
    property EditKeyByTab : Char read KeyTab write KeyTab;
    property EditAlign : TEditAlign read TipoAlign write SetTypeAlign;
    property EditLengthAlign : Integer read LongAlign write LongAlign;
    property EditPrecision : Integer read EPrecision write EPrecision;
    property ValueFloat : Double read ValFloat write ValFloat;
    property ValueInteger : Integer read ValInteger write ValInteger;
    property ValueDate : TDateTime read ValDate write ValDate;
    property ValueTime : TDateTime read ValTime write ValTime;
    property TimeSeconds : Boolean read FSeconds write FSeconds;
    property FirstCharUpper : Boolean read FUpper write FUpper;
    property FirstCharUpList : String read FUpperList write FUpperList;
    property WidthOnFocus : Integer read FWidthOnFocus write FWidthOnFocus;
    property TextHint: Boolean read FTextHint write FTextHint;
  end;

// Generic button for use on a DBCtrlGrid
TYPE

  TDB_mcButton = class(TButton)
  public
    constructor Create(AOwner: TComponent); override;
  end;

  // Generic button for use on a DBCtrlGrid - smaller size, shows 3 dots
  TDB_mc3DotButton = class(TButton)
  public
    constructor Create(AOwner: TComponent); override;
  end;



type
  TMEditN = class(TMaskEdit)
  private
    { Private declarations }
    FOnEnter      : TNotifyEvent;
    FOnExit       : TNotifyEvent;
    I_Color       : TColor;
    E_Color       : TColor;
    FI_Color      : TColor;
    FE_Color      : TColor;
    FO_Color      : TColor;
    FKeyTab       : Char;
    FWidthOnFocus : Integer;
    iWidth        : Integer;
    FTextHint     : Boolean;
    procedure DoMouseLeave(var Msg: TMessage); message CM_MOUSELEAVE;
    procedure WMChar(var Msg: TWMKey); message WM_Char;
  protected
    { Protected declarations }
    function HintProc(CurPos: TPoint): Boolean; virtual;
    function GetInsertKeyState: TInsertKeyStates;
    procedure WndProc(var Message: TMessage); override;
  public
    { Public declarations }
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure DoEnter; override;
    procedure DoExit ; override;
    property  InsertKeyState: TInsertKeyStates read GetInsertKeyState;
    constructor Create(AOwner : TComponent); override;
    destructor  Destroy; override;
  published
    { Published declarations }
    property  OnEnter: TNotifyEvent read FOnEnter write FOnEnter;
    property  OnExit : TNotifyEvent read FOnExit  write FOnExit;
    property  ColorOnFocus : TColor read I_Color write I_Color;
    property  ColorOnNotFocus : TColor read E_Color write E_Color;
    property  FontColorOnFocus : TColor read FI_Color write FI_Color;
    property  FontColorOnNotFocus : TColor read FE_Color write FE_Color;
    property  FontColorOnOverWrite : TColor read FO_Color write FO_Color;
    property  EditKeyByTab : Char read FKeyTab write FKeyTab;
    property  WidthOnFocus : Integer read FWidthOnFocus write FWidthOnFocus;
    property  TextHint : Boolean read FTextHint write FTextHint;
  end;

type
  TDBEditN = class(TDBEdit)
  private
    { Private declarations }
    FOnEnter      : TNotifyEvent;
    FOnExit       : TNotifyEvent;
    I_Color       : TColor;
    E_Color       : TColor;
    FI_Color      : TColor;
    FE_Color      : TColor;
    FO_Color      : TColor;
    FKeyTab       : Char;
    FWidthOnFocus : Integer;
    iWidth        : Integer;
    FUpper        : Boolean;
    FUpperList    : String;
    FTextHint     : Boolean;
    procedure WMChar(var Msg: TWMKey); message WM_Char;
  protected
    { Protected declarations }
    function HintProc(CurPos: TPoint): Boolean; virtual;
    function GetInsertKeyState: TInsertKeyStates;
    procedure WndProc(var Message: TMessage); override;
    procedure DoMouseLeave(var Msg: TMessage); message CM_MOUSELEAVE;
  public
    { Public declarations }
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure DoEnter; override;
    procedure DoExit ; override;
    property  InsertKeyState: TInsertKeyStates read GetInsertKeyState;
    constructor Create(AOwner : TComponent); override;
    destructor  Destroy; override;
  published
    { Published declarations }
    property OnEnter: TNotifyEvent read FOnEnter write FOnEnter;
    property OnExit : TNotifyEvent read FOnExit  write FOnExit;
    property ColorOnFocus : TColor read I_Color write I_Color;
    property ColorOnNotFocus : TColor read E_Color write E_Color;
    property FontColorOnFocus : TColor read FI_Color write FI_Color;
    property FontColorOnNotFocus : TColor read FE_Color write FE_Color;
    property FontColorOnOverWrite : TColor read FO_Color write FO_Color;
    property EditKeyByTab : Char read FKeyTab write FKeyTab;
    property FirstCharUpper : Boolean read FUpper write FUpper;
    property FirstCharUpList : String read FUpperList write FUpperList;
    property WidthOnFocus : Integer read FWidthOnFocus write FWidthOnFocus;
    property TextHint: Boolean read FTextHint write FTextHint;
  end;

  { Hint on clipped Text}
type
  THintProc = function(CurPos: TPoint): Boolean of object;
  PHintProc = ^THintProc;

  THintProcList = class(TList)
  private
    function GetItem(Index: Integer): THintProc;
    procedure SetItem(Index: Integer; Item: THintProc);
  public
    procedure Add(Item: THintProc);
    destructor Destroy; override;
    property Items[Idx: Integer]: THintProc read GetItem write SetItem;
  end;

{$IFNDEF WIN32}
  { Design Notes :
       The only way I found to make it work under D1 was to recreate a new
       HintWindow from the D2 Source Code ........ The following TzHintWindow
       is this new THintWindow. If someone has a better idea !
       }
  TzHintWindow = class(TCustomControl)
  private
    procedure WMNCHitTest(var Message: TWMNCHitTest); message WM_NCHITTEST;
    procedure WMNCPaint(var Message: TMessage); message WM_NCPAINT;
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure ActivateHint(Rect: TRect; const AHint: String); virtual;
    procedure ActivateHintData(Rect: TRect; const AHint: String; AData: Pointer); virtual;
    function CalcHintRect(MaxWidth: Integer; const AHint: String;
      AData: Pointer): TRect; virtual;
    function IsHintMsg(var Msg: TMsg): Boolean; virtual;
    procedure ReleaseHandle;
    property Caption;
    property Color;
    property Canvas;
  end;
{$ENDIF}

{$IFNDEF WIN32}
  THintController = class(TzHintWindow)
{$ELSE}
  THintController = class(THintWindow)
{$ENDIF}
  private
{$IFDEF WIN32}
    procedure WMNCPaint(var Message: TMessage); message WM_NCPAINT;
{$ENDIF}
    procedure LeftMouseDown(var Msg: TMessage); message WM_MOUSEMOVE;
  protected
    Controls: TList;
    HintProcs: THintProcList;
    Timer: TTimer;
    Counter: Integer;
    procedure AddControl(Control: TControl; HintProc: THintProc);
    procedure RemoveControl(Control: TControl);
    procedure DoTimer(Sender: TObject);
    procedure DisplayHint(Control: TControl);
{$IFDEF WIN32}
    procedure Paint; override;
{$ENDIF}
  public
    Captive: TControl;
    CurStatus: Integer;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ResetCaptive;
    procedure CheckMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  end;

procedure Register;

var
  BaseShowHintDelay: Integer;
  Controller: THintController;

implementation

{$R EdNew32.res}


constructor TDB_mcButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csReplicatable];
end;

constructor TDB_mc3DotButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csReplicatable];
  Caption := '...';
  Height  := 19;
  Width   := 19;
end;


constructor TEditN.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  ColorOnFocus         := clWhite;
  ColorOnNotFocus      := clSilver;
  Color                := ColorOnNotFocus;
  FontColorOnFocus     := clRed;
  FontColorOnNotFocus  := clBlack;
  FontColorOnOverWrite := clBlue;
  TipoEdit             := etString;
  TipoAlign            := etAlignNone;
  LongAlign            := 0;
  KeyTab               := #9;        // #13 for Return by Tab
  ValInteger           := 0;
  ValFloat             := 0;
  EPrecision           := 0;
  SDecimal             := Formatsettings.DecimalSeparator;
  FUpper               := False;
  FUpperList           := ' (';
  FWidthOnFocus        := 0;
  TextAtEnter          := '';
  PtrToData            := nil;
  sDate                := Formatsettings.DateSeparator;   // Windows Default
  sTime                := Formatsettings.TimeSeparator;   // Windows Default
  FSeconds             := False;           // etTime with seconds
  ValDate              := Date;
  ValTime              := Time;
  // Hint on clipped Text
  Controller.AddControl(Self, HintProc);
  FTextHint            := True;

end;

destructor TEditN.Destroy;
begin
  {Hint on clipped Text}
  Controller.RemoveControl(Self);
  inherited;
end;

procedure TEditN.SetPtrToData(DataPtr:Pointer);
begin
 PtrToData := DataPtr;
 Update;
end;

procedure TEditN.Update;
begin
 if Assigned(PtrToData) then begin
  if EditType = etString  then Text := string(PtrToData^);
  if EditType = etInteger then Text := IntToStr(Integer(PtrToData^));
  if EditType = etFloat   then Text := FloatToStrF(Double(PtrToData^),ffgeneral,15,4);
  if EditType = etDate    then Text := DateToStr(TDateTime(PtrToData^));
  if EditType = etTime    then Text := TimeToStr(TDateTime(PtrToData^));
 end;
 Refresh;
 inherited Update;
end;

procedure TEditN.KeyDown(var Key: Word; Shift: TShiftState);
begin
 {Hint on clipped Text}
 if (Controller.Captive = Self) then Controller.ResetCaptive;
 if Key <> 0 then inherited KeyDown(Key,Shift);
end;

procedure TEditN.KeyPress(var Key: Char);
var
 {$IFDEF VER90}
  FEditTemp : TForm;       {For Delphi 2}
 {$ELSE}
  FEditTemp : TCustomForm; {For Delphi 3-4-5}
 {$ENDIF}
 C         : String;
begin

 if Key = EditKeyByTab then begin
  FEditTemp := GetParentForm(Self);
  SendMessage(FEditTemp.Handle, WM_NEXTDLGCTL, 0, 0);
  Key := #0;
 end else begin
  // If ESC is pressed during edit, all changes are cancelled
  // Si se ha pulsado escape, se anulan los cambios
  if Key = #27 then begin
   Text := TextAtEnter;
   Key  := #15;
  end;

  if InsertKeyState = iksOverWrite // New in Version 2.3
   then Font.Color := FontColorOnOverWrite
   else Font.Color := FontColorOnFocus;

  //Permitted characters in function of type
  // Caracteres permitidos en funci�n del tipo
  Case EditType of
   etString :
    if FUpper then begin // Capital letter  - Ma�usculas
     if (Length(Text) = 0) or
        (SelText = Text) or
        (Pos(Text[Length(Text)],FUpperList) > 0) then begin
      C   := AnsiUpperCase(Key);
      Key := C[1];
     end;
    end;

   etInteger :
    begin
     if (SelLength = 0) or ((SelLength > 0) and (SelStart > 0)) then begin
      if ((Pos('-',Text) > 0) or (Key = '-')) and (MaxLength = 0)
       then MaxLength := 11;

      if (not (Key in ['0'..'9','-',#8,#13,#35,#36,#37,#39])) or
         (Key = #32) or // To eliminate the introduction from spaces
         ((Key = '-') and (Pos('-',Text) > 0)) // To verify that alone is introduce a negative sign.
       then Key := #15;
     end;
    end;

   etFloat :
    begin
     if (SelLength = 0) or ((SelLength > 0) and (SelStart > 0)) then begin
      if (not (Key in ['0'..'9',',','.','-',#8,#13,#35,#36,#37,#39])) or
         (Key = #32) or // To eliminate the spaces introduction
         ((Key = '-') and (Pos('-',Text) > 0)) // To verify that alone is introduce a negative sign.
       then Key := #15;

      if (Key = ',') or (Key = '.') then
       if (Pos(',',Text) > 0) or (Pos('.',Text) > 0)
        then Key := #15
        else Key := Formatsettings.DecimalSeparator;
     end;
    end;

   etDate, etTime :
    if not (Key in ['0'..'9',#8,#13,#35,#36,#37,#39])
     then Key := #15;

  end; // Case EditType of
 end;  // if Key <> EditKeyByTab

 if Key <> #0 then inherited KeyPress(Key);

end;

procedure TEditN.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  {Hint on clipped Text}
  if (Controller.Captive = Self) then
    Controller.ResetCaptive;
  inherited;
end;

procedure TEditN.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  {Hint on clipped Text}
  if TextHint and
    (Shift = []) and
    not Focused then
    Controller.CheckMouseMove(Self, Shift, X, Y);
  inherited;
end;

procedure TEditN.DoMouseLeave(var Msg: TMessage);
begin
  {Hint on clipped Text}
  if (Controller.Captive = Self) then
    Controller.ResetCaptive;
  inherited;
end;

function TEditN.HintProc(CurPos: TPoint): Boolean;
{Hint on clipped Text}

function Clipped(Text: String): Boolean;
  var
    Modifier: Integer;
  begin
    Controller.Canvas.Font.Assign(Font);
    if BorderStyle = bsNone then
      Modifier := 0
    else if Ctl3D then
      Modifier := 6
    else
      Modifier := 4;
    Result := Controller.Canvas.TextWidth(Text) > (Width - Modifier);
  end;

var
  Text: String;
  Rect: TRect;
begin
  CurPos := ScreenToClient(CurPos);
  Text := Self.Text;
  Result := Clipped(Text);
  if Result then begin
    Controller.Canvas.Font.Assign(Font);
    CurPos := Point(0, 0);

    with Rect do begin
      TopLeft := ClientToScreen(CurPos);
      Right := CurPos.X + Controller.Canvas.TextWidth(Text) + 5;
      BottomRight := ClientToScreen(BottomRight);
      Bottom := Top + Height - 4;
{$IFDEF WIN32}
      if (Ctl3D = True) and (BorderStyle = bsSingle) then begin
        Dec(Top, 1);
        Dec(Left, 1);
        Dec(Bottom, 3);
      end;
{$ENDIF}
      if BorderStyle = bsNone then begin
        Dec(Top, 2);
        Dec(Left, 2);
        Dec(Right, 2);
      end;
    end;
    Controller.ActivateHint(Rect, Text);
  end;
end;

procedure TEditN.DoEnter;
begin
 // To assign the Color upon receiving the focus
 if (EditType = etFloat) and (MaxLength = 0) then MaxLength := 16;
 Color       := ColorOnFocus;
 Font.Color  := FontColorOnFocus;
 TextAtEnter := Text;

 if WidthOnFocus > 0 then begin
  iWidth := Width;
  Width  := FWidthOnFocus;
 end;

 // If a connection to a variable exists, Update the contents of the field with
 // the contents of the connected variable in case the variable has changed.
 if Assigned(PtrToData) then Update;

 if EditType = etDate then MaxLength := 10;

 if EditType = etTime then
  if TimeSeconds then MaxLength := 8
                 else MaxLength := 5;

 if Assigned(FOnEnter) then FOnEnter(Self);
end;

procedure TEditN.DoExit;
var
 k : Integer;
 s : String;
begin

 // To return the color of the fund upon leaving and losing the focus
 Color      := ColorOnNotFocus;
 Font.Color := FontColorOnNotFocus;

 if WidthOnFocus > 0 then Width := iWidth;

 if (EditType = etString) and (Length(Text) > 0) then begin

  if FUpper then begin
   if Length(Text) = 1 then Text := AnsiUpperCase(Text);
   if Length(Text) > 1 then Text := AnsiUpperCase(Text[1]) + Copy(Text,2,Length(Text)-1);
  end;

  if (EditAlign <> etAlignNone) and (EditLengthAlign > 0) then begin // With Alignment

   // The length of the chain is < that that of Align.
   if (EditLengthAlign > Length(Text)) then
    Case EditAlign of
     etAlignLeft  :
      begin
       while Text[1] = ' ' do Text := Copy(Text,2,Length(Text)-1);
       for k := 1 to EditLengthAlign - Length(Text) do Text := Text + ' ';
      end;

     etAlignRight :
      begin
       for k:= 1 to EditLengthAlign - Length(Text) do Text := ' ' + Text;
      end;

     etAlignCenter:
      begin
       for k := 1 to Round((EditLengthAlign - Length(Text))/2) do Text := ' ' + Text;
       for k := Length(Text) to EditLengthAlign do Text := Text + ' ';
      end;

    end; // Case EditAlign
  end; // if (EditLengthAlign > Length(Text))
 end; // if (EditAlign <> etAlignNone) and (EditLengthAlign > 0)

 // To align a string Integer, filling with zeroes, if it has been indicated.
 // The negative sign if exists, counts it as a digit but
 if (EditType = etInteger) and
    (EditAlign = etAlignValue) and
    (EditLengthAlign > 0) then
  if Length(Text) < EditLengthAlign then
   for k := Length(Text) to EditLengthAlign - 1 do Text := '0' + Text;

 // To put the negative sign to the beginning of the chain. It has been designed
 // so that the negative sign could be introduced in any place, and here we happen
 // it to the beginning
 if ((EditType = etInteger) or (EditType = etFloat)) and (Pos('-',Text) > 1) then
  if Length(Text) = Pos('-',Text)
   then Text := '-' + Copy(Text,1,Pos('-',Text)-1)
   else Text := '-' +
                Copy(Text,1,Pos('-',Text)-1) +
                Copy(Text,Pos('-',Text) + 1,Length(Text) - Pos('-',Text));

 // If it has been defined precision, gives format  to the string
 if (EditType = etFloat) and (EditPrecision > 0) then begin
  if Length(Text) = 0 then Text := '0';
  SDecimal := Formatsettings.DecimalSeparator;
  if Pos(SDecimal,Text) = 0 then begin
   Text := Text + SDecimal;
   for k := 1 to EditPrecision do Text := Text + '0';
  end else begin
   if Length(Text) - Pos(SDecimal,Text) > EditPrecision then
    Text := Copy(Text,1,Pos(SDecimal,Text) + EditPrecision);
   if Length(Text) - Pos(SDecimal,Text) < EditPrecision then
    for k := Length(Text) - Pos(SDecimal,Text) + 1 to EditPrecision do Text := Text + '0';
  end;
 end;

 // To align a string Float, filling of zeroes, if it has been indicated.
 // The negative sign if exists and the separating decimal, the account as a digit but
 if (EditType = etFloat) and
    (EditAlign = etAlignValue) and
    (EditLengthAlign > 0) then
  if Length(Text) < EditLengthAlign then
   for k := Length(Text) to EditLengthAlign - 1 do Text := '0' + Text;

 if EditType = etDate then FormatDate;

 if EditType = etTime then FormatTime;

 // Update the connected variable with the current value
 if Assigned(PtrToData) then begin
  if EditType = etInteger then Move(ValueInteger, PtrToData^, Sizeof(ValueInteger));
  if EditType = etFloat   then Move(ValueFloat,   PtrToData^, Sizeof(ValueFloat));
  if EditType = etDate    then Move(ValueDate,    PtrToData^, Sizeof(ValueDate));
  if EditType = etTime    then Move(ValueTime,    PtrToData^, Sizeof(ValueTime));
  if EditType = etString  then begin
   s := Text;
   Move(s, PtrToData^, Sizeof(s));
  end;
 end;

  {Hint on clipped Text}
  if (Controller.Captive = Self) then Controller.ResetCaptive;

 if Assigned(FOnExit) then FOnExit(Self);

 inherited;

end;

procedure TEditN.Change;
var
 i : Integer;
 C : String;
begin
 // To convert the chain if it is numerical,to return a value
 if ((EditType = etInteger) or (EditType = etFloat)) and
    (Length(Text) > 0) then begin

  if EditType = etInteger then begin
   for i := 1 to Length(Text) do begin
    if Text[i] in ['0'..'9','-','+'] then C := C + Text[i]
   end;
   Text := C;
  end;

  if EditType = etFloat then begin
   for i := 1 to Length(Text) do begin
    if Text[i] in ['0'..'9',',','.','-','+'] then C := C + Text[i]
   end;
   Text := C;
  end;

  if Length(Text) = 0 then begin
   if Assigned(FOnChange) then FOnChange(Self);
   Exit;
  end;

  try
   ValueFloat   := 0;
   ValueInteger := 0;

   // Eliminar caracteres no permitidos y cambiar el signo - al comienzo para
   //  que no de error de conversi�n
   i := 1;
   while i <= Length(Text) do
    if not (Text[i] in ['0'..'9',',','.','-'])
     then Text := Copy(Text,1,i-1) + Copy(Text,i+1,Length(Text)-i)
     else i := i + 1;

   // Si solo tenemos el signo negativo, dar�a error
   if (Pos('-',Text) = 1) and (Length(Text) = 1) then Exit;

   // Temporary variable to accomplish the conversion
   TxtConvert := Text;

   // To put the negative sign to the beginning
   if (EditType <> etString) and (Pos('-',TxtConvert) > 1) then
    if Length(TxtConvert) = Pos('-',TxtConvert)
     then TxtConvert := '-' + Copy(TxtConvert,1,Pos('-',TxtConvert)-1)
     else TxtConvert := '-' +
                        Copy(TxtConvert,1,Pos('-',TxtConvert)-1) +
                        Copy(TxtConvert,Pos('-',TxtConvert) + 1,Length(TxtConvert) - Pos('-',TxtConvert));

   if EditType = etInteger then begin
    // Range control of Integer
    ValTemp := StrToFloat(TxtConvert);
    if (ValTemp > 2147483647) or (ValTemp < -2147483647) then begin
     ShowMessage('Range Max. : -2147483647 <-> 2147483647');
     ValueInteger := 0;
    end else begin
     ValueInteger := StrToInt(TxtConvert);
     ValueFloat   := StrToFloat(TxtConvert + sDecimal + '0'); {New in Version 2.0}
    end;
   end;

   // El tipo Float - Double, permite valores hasta 5.0 * 10e-324 .. 1.7 * 10e308
   // con 15-16 digitos significativos, por lo que solamente controlamos que el total
   // no pase de 16 digitos. Hasta la fecha no he experimentado con valores Float tan
   // altos, por lo que no me atrevo a condicionar algo que no conozco con exactitud.}
   if EditType = etFloat then begin
    ValueFloat   := StrToFloat(TxtConvert);
    ValueInteger := Trunc(ValueFloat);
   end;

  except
   on EConvertError do begin
     ShowMessage('Range Max. :' + #13 +
                 ' - Integer : -2147483647 <-> 2147483647' + #13 +
                 ' - Float   : 5.0e-324 <-> 1.7e+308');
     ValueInteger := 0;
     ValueFloat   := 0;
   end;
  end;
 end;

 if Assigned(FOnChange) then FOnChange(Self);

 inherited;

end;

procedure TEditN.SetInteger(VInteger : Integer);
begin
 if EditType = etInteger then Text := IntToStr(VInteger);
end;

procedure TEditN.SetFloat(VFloat : Double);
begin
 if EditType = etFloat then Text := FloatToStr(VFloat);
end;

{Compiler acuses 'Value assigned to dDate
 never used'...}
{$HINTS OFF}
procedure TEditN.FormatDate;
var
 Temp,vDate,vMonth,vYear : String;
 dDate   : TDateTime;
 ilength : Integer;
begin
 // Decode the Date
  Temp    := '';
// vDate   := FormatDateTime('dd' + sDate + 'mm' + sDate + 'yyyy',Date);
 vDate   := FormatDateTime('yyyy'+ sdate + 'mm' + sDate + 'dd',Date);
 vMonth  := Copy(vDate,6,2);
 vYear   := Copy(vDate,1,4);

 // Quitar separador de fecha si existe
 if Length(Text) > 0 then
  for iLength := 1 to Length(Text) do
   if Text[iLength] in ['0'..'9']
    then Temp := Temp + Text[iLength];

 // Completar la fecha con separadores
 iLength := Length(Temp);
 Case iLength of
  0 :       Temp := vDate;
  1 :       Temp := vYear + sDate + vMonth + sDate + '0'+Temp;
  2 :       Temp := vYear + sDate + vMonth + sDate + Temp;
  3 :       Temp := Copy(Temp,1,4) + sDate + '0' + Temp[3] + sDate + vYear;
  4 :       Temp := Copy(Temp,1,4) + sDate + Copy(Temp,5,2) + sDate + vYear;
  5 :       Temp := Copy(Temp,1,4) + sDate + Copy(Temp,5,2) + sDate + Copy(vYear,1,3) + Temp[5];
  6:        Temp := Copy(Temp,1,4) + sDate + Copy(Temp,5,2) + sDate + Copy(vYear,1,2) + Copy(Temp,5,2);
  7 :       Temp := Copy(Temp,1,4) + sDate + Copy(Temp,5,2) + sDate + vYear[1] + Copy(Temp,5,3);
  8,9,10 :  Temp := Copy(Temp,1,4) + sDate + Copy(Temp,5,2) + sDate + Copy(Temp,7,4);
 end;

 // Test of correct Date
 try
  dDate := StrToDate(Temp);
 except
  ShowMessage('Date incorrect');
  // On error, the Date is actually for default
  ValueDate    := Date;
  ValueFloat   := Date; // TDateTime : Double;
  ValueInteger := Trunc(Date);
  Exit;
 end;

 // The Date is correct. Assign value
 Text         := Temp;
 ValueDate    := StrToDate(Temp);
 ValueFloat   := ValueDate; // TDateTime : Double;
 ValueInteger := Trunc(ValueDate);
end;
{$HINTS ON}

{Compiler acuses 'Value assigned to tTime
 never used'...}
{$HINTS OFF}
procedure TEditN.FormatTime;
var
 Temp,vTime,vMin,vSec,MskTime : String;
 iLength : Integer;
 tTime   : TDateTime;
begin
 Temp    := '';
 MskTime := '00' + sTime + '00' + sTime + '00';
 vTime   := FormatDateTime('hh:mm:ss',Time);
 vMin    := Copy(vTime,4,2);
 vSec    := Copy(vTime,7,2);

 // Quitar separadores si los hay
 if Length(Text) > 0 then
  for iLength := 1 to Length(Text) do
   if Text[iLength] in ['0'..'9'] then Temp := Temp + Text[iLength];

 // Formatear el tiempo
 iLength := Length(Temp);
 if TimeSeconds then begin // Con segundos
   Case iLength of
//    0 : Temp := vTime; --peho
    0 : Temp := '';
    1 : Temp := '0' + Temp[1] + Copy(MskTime,3,6);
    2 : Temp := Temp + Copy(MskTime,3,6);
    3 : Temp := Copy(Temp,1,2) + sTime + '0' + Temp[3] + Copy(MskTime,6,3);
    4 : Temp := Copy(Temp,1,2) + sTime  + Copy(Temp,3,2) + Copy(MskTime,6,3);
    5 : Temp := Copy(Temp,1,2) + sTime  + Copy(Temp,3,2) + sTime + '0' + Temp[5];
    6,7,8 : Temp := Copy(Temp,1,2) + sTime  + Copy(Temp,3,2) + sTime + Copy(Temp,5,2);
   end;
 end else begin // Sin segundos
   Case iLength of
    0 : Temp := '';
//    0 : Temp := vTime;
    1 : Temp := '0' + Temp[1] + Copy(MskTime,3,3);
    2 : Temp := Temp + Copy(MskTime,3,3);
    3 : Temp := Copy(Temp,1,2) + sTime + '0' + Temp[3];
    4,5 : Temp := Copy(Temp,1,2) + sTime  + Copy(Temp,3,2);
   end;
 end;

 // Test of string-time
 try
  if temp <> '' then
    tTime := StrToTime(Temp);

 except
  ShowMessage('Time incorrect');
  if TimeSeconds then Text := vTime else Text := Copy(vTime,1,5);
  ValueTime  := Time;
  ValueFloat := ValueTime;
  Exit;
 end;
  // The time is correct
  if temp <> '' then
  begin
  Text       := Temp;
  ValueTime  := StrToTime(Temp);
  ValueFloat := ValueTime;
  end;
end;

// Add for Jos� R. Caama�o
function TEditN.GetInsertKeyState: TInsertKeyStates;
begin
 if GetKeyState(VK_INSERT) = 0
  then Result := iksInsert
  else Result := iksOverWrite;
end;
{$HINTS ON}

// Add for Jos� R. Caama�o
procedure TEditN.WMChar(var Msg: TWMKey);
begin
 // if Overwrite state and user select nothing
 if (InsertKeyState = iksOverWrite) and (SelLength = 0) and (SelStart < GetTextLen)
  then SelLength := 1;
 inherited;
end;

// Add for Jos� R. Caama�o
{$ifdef Win32}
procedure TEditN.WndProc(var Message: TMessage);
begin
  { solve problem of the IME wouldn't appear in browse mode }
  if (Message.Msg = WM_SETFOCUS) or (Message.Msg = WM_MOUSEACTIVATE)
   then SendMessage(Handle, EM_SETREADONLY, 0, 0);
  inherited WndProc(Message);
end;
{$endif}

procedure TEditN.CreateParams(var Params: TCreateParams);
begin
  inherited;
  case TipoAlign of
    etAlignCenter : Inc(Params.Style, ES_MULTILINE + ES_CENTER);
    etAlignRight  : Inc(Params.Style, ES_MULTILINE + ES_RIGHT);
  end;
end;

procedure TEditN.SetTypeAlign(Value: TEditAlign);
begin
  if TipoAlign <> Value then begin
    TipoAlign := Value;
    RecreateWnd;
  end;
end;

{***************************************************************************}
constructor TMEditN.Create(AOwner : TComponent);
begin
 inherited Create(AOwner);
 ColorOnFocus         := clWhite;
 ColorOnNotFocus      := clSilver;
 Color                := ColorOnNotFocus;
 FontColorOnFocus     := clBlack;
 FontColorOnNotFocus  := clBlack;
 FontColorOnOverWrite := clBlue;
 FWidthOnFocus        := 0;
 FKeyTab              := #9;
 {Hint on clipped Text}
 Controller.AddControl(Self, HintProc);
 FTextHint := True;
end;

destructor TMEditN.Destroy;
begin
 {Hint on clipped Text}
 Controller.RemoveControl(Self);
 inherited;
end;

procedure TMEditN.KeyDown(var Key: Word; Shift: TShiftState);
begin
 {Hint on clipped Text}
 if (Controller.Captive = Self) then
   Controller.ResetCaptive;
 inherited;
end;

procedure TMEditN.KeyPress(var Key: Char);
var
 {$IFDEF VER90}
  FEditTemp : TForm;       {For Delphi 2}
 {$ELSE}
  FEditTemp : TCustomForm; {For Delphi 3-4-5}
 {$ENDIF}

begin
 if Key = EditKeyByTab then begin
  FEditTemp := GetParentForm(Self);
  SendMessage(FEditTemp.Handle, WM_NEXTDLGCTL, 0, 0);
  Key := #0;
 end;

 if InsertKeyState = iksOverWrite // New in Version 2.3
  then Font.Color := FontColorOnOverWrite
  else Font.Color := FontColorOnFocus;

 if Key <> #0 then inherited KeyPress(Key);
end;

procedure TMEditN.DoEnter;
begin
 // To assign the Color upon receiving the focus
 Color       := ColorOnFocus;
 Font.Color  := FontColorOnFocus;
 if WidthOnFocus > 0 then begin
  iWidth := Width;
  Width  := FWidthOnFocus;
 end;

 if Assigned(FOnEnter) then FOnEnter(Self);
 inherited;
end;

procedure TMEditN.DoExit;
begin
 // To return the color of the fund upon leaving and losing the focus
 Color      := ColorOnNotFocus;
 Font.Color := FontColorOnNotFocus;
 if WidthOnFocus > 0 then Width := iWidth;

 {Hint on clipped Text}
 if (Controller.Captive = Self) then
   Controller.ResetCaptive;

 if Assigned(FOnExit) then FOnExit(Self);
 inherited;
end;

// Add for Jos� R. Caama�o
function TMEditN.GetInsertKeyState: TInsertKeyStates;
begin
 if GetKeyState(VK_INSERT) = 0
  then Result := iksInsert
  else Result := iksOverWrite;
end;

// Add for Jos� R. Caama�o
procedure TMEditN.WMChar(var Msg: TWMKey);
begin
 // if Overwrite state and user select nothing
 if (InsertKeyState = iksOverWrite) and (SelLength = 0) and (SelStart < GetTextLen)
  then SelLength := 1;
 inherited;
end;

// Add for Jos� R. Caama�o
{$ifdef Win32}
procedure TMEditN.WndProc(var Message: TMessage);
begin
  { solve problem of the IME wouldn't appear in browse mode }
  if (Message.Msg = WM_SETFOCUS) or (Message.Msg = WM_MOUSEACTIVATE)
   then SendMessage(Handle, EM_SETREADONLY, 0, 0);
  inherited WndProc(Message);
end;
{$endif}

procedure TMEditN.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  {Hint on clipped Text}
  if (Controller.Captive = Self) then
    Controller.ResetCaptive;
  inherited;
end;

procedure TMEditN.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  {Hint on clipped Text}
  if TextHint and
    (Shift = []) and
    not Focused then
    Controller.CheckMouseMove(Self, Shift, X, Y);
  inherited;
end;

procedure TMEditN.DoMouseLeave(var Msg: TMessage);
begin
  {Hint on clipped Text}
  if (Controller.Captive = Self) then
    Controller.ResetCaptive;
  inherited;
end;

function TMEditN.HintProc(CurPos: TPoint): Boolean;
{Hint on clipped Text}

function Clipped(Text: String): Boolean;
  var
    Modifier: Integer;
  begin
    Controller.Canvas.Font.Assign(Font);
    if BorderStyle = bsNone then
      Modifier := 0
    else if Ctl3D then
      Modifier := 6
    else
      Modifier := 4;
    Result := Controller.Canvas.TextWidth(Text) > (Width - Modifier);
  end;

var
  Text: String;
  Rect: TRect;
begin
  CurPos := ScreenToClient(CurPos);
  Text := Self.Text;
  Result := Clipped(Text);
  if Result then begin
    Controller.Canvas.Font.Assign(Font);
    CurPos := Point(0, 0);

    with Rect do begin
      TopLeft := ClientToScreen(CurPos);
      Right := CurPos.X + Controller.Canvas.TextWidth(Text) + 5;
      BottomRight := ClientToScreen(BottomRight);
      Bottom := Top + Height - 4;
{$IFDEF WIN32}
      if (Ctl3D = True) and (BorderStyle = bsSingle) then begin
        Dec(Top, 1);
        Dec(Left, 1);
        Dec(Bottom, 3);
      end;
{$ENDIF}
      if BorderStyle = bsNone then begin
        Dec(Top, 2);
        Dec(Left, 2);
        Dec(Right, 2);
      end;
    end;
    Controller.ActivateHint(Rect, Text);
  end;
end;

{***************************************************************************}
constructor TDBEditN.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  ColorOnFocus         := clWhite;
  ColorOnNotFocus      := clSilver;
  Color                := ColorOnNotFocus;
  FontColorOnFocus     := clRed;
  FontColorOnNotFocus  := clBlack;
  FontColorOnOverWrite := clBlue;
  FUpper               := False;
  FUpperList           := ' (';
  FWidthOnFocus        := 0;
  FKeyTab              := #9;
  {Hint on clipped Text}
  Controller.AddControl(Self, HintProc);
  FTextHint            := True;
end;

destructor TDBEditN.Destroy;
begin
  {Hint on clipped Text}
  Controller.RemoveControl(Self);
  inherited;
end;

procedure TDBEditN.KeyDown(var Key: Word; Shift: TShiftState);
begin
  {Hint on clipped Text}
  if (Controller.Captive = Self) then
    Controller.ResetCaptive;
  inherited;
end;

procedure TDBEditN.KeyPress(var Key: Char);
var
 {$IFDEF VER90}
  FEditTemp : TForm;       {For Delphi 2}
 {$ELSE}
  FEditTemp : TCustomForm; {For Delphi 3-4-5}
 {$ENDIF}

 c : String;
begin
 if Key = EditKeyByTab then begin
  FEditTemp := GetParentForm(Self);
  SendMessage(FEditTemp.Handle, WM_NEXTDLGCTL, 0, 0);
  Key := #0;
 end;

 if InsertKeyState = iksOverWrite // New in Version 2.3
  then Font.Color := FontColorOnOverWrite
  else Font.Color := FontColorOnFocus;

 if FUpper then begin // Capital letter  - Ma�usculas
  if (Length(Text) = 0) or
     (SelText = Text) or
     (Pos(Text[Length(Text)],FUpperList) > 0) then begin
   C   := AnsiUpperCase(Key);
   Key := C[1];
  end;
 end;

 if Key <> #0 then inherited KeyPress(Key);
end;

procedure TDBEditN.DoEnter;
begin
 // To assign the Color upon receiving the focus
 Color       := ColorOnFocus;
 Font.Color  := FontColorOnFocus;
 if WidthOnFocus > 0 then begin
  iWidth := Width;
  Width  := FWidthOnFocus;
 end;

 if Assigned(FOnEnter) then FOnEnter(Self);
end;

procedure TDBEditN.DoExit;
begin
 // To return the color of the back upon leaving and losing the focus
 Color      := ColorOnNotFocus;
 Font.Color := FontColorOnNotFocus;
 if WidthOnFocus > 0 then Width := iWidth;

 {Hint on clipped Text}
 if (Controller.Captive = Self) then
   Controller.ResetCaptive;

 if Assigned(FOnExit) then FOnExit(Self);
end;

// Add for Jos� R. Caama�o
function TDBEditN.GetInsertKeyState: TInsertKeyStates;
begin
 if GetKeyState(VK_INSERT) = 0
  then Result := iksInsert
  else Result := iksOverWrite;
end;

// Add for Jos� R. Caama�o
procedure TDBEditN.WMChar(var Msg: TWMKey);
begin
 // if Overwrite state and user select nothing
 if (InsertKeyState = iksOverWrite) and (SelLength = 0) and (SelStart < GetTextLen)
  then SelLength := 1;
 inherited;
end;

// Add for Jos� R. Caama�o
{$ifdef Win32}
procedure TDBEditN.WndProc(var Message: TMessage);
begin
  { Solve problem of the IME wouldn't appear in browse mode }
  if (Message.Msg = WM_SETFOCUS) or (Message.Msg = WM_MOUSEACTIVATE)
   then SendMessage(Handle, EM_SETREADONLY, 0, 0);
  inherited WndProc(Message);
end;
{$endif}

procedure TDBEditN.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  {Hint on clipped Text}
  if (Controller.Captive = Self) then
    Controller.ResetCaptive;
  inherited;
end;

procedure TDBEditN.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  {Hint on clipped Text}
  if TextHint and
    (Shift = []) and
    not Focused then
    Controller.CheckMouseMove(Self, Shift, X, Y);
  inherited;
end;

procedure TDBEditN.DoMouseLeave(var Msg: TMessage);
begin
  {Hint on clipped Text}
  if (Controller.Captive = Self) then
    Controller.ResetCaptive;
  inherited;
end;

function TDBEditN.HintProc(CurPos: TPoint): Boolean;
{Hint on clipped Text}

function Clipped(Text: String): Boolean;
  var
    Modifier: Integer;
  begin
    Controller.Canvas.Font.Assign(Font);
    if BorderStyle = bsNone then
      Modifier := 0
    else if Ctl3D then
      Modifier := 6
    else
      Modifier := 4;
    Result := Controller.Canvas.TextWidth(Text) > (Width - Modifier);
  end;

var
  Text: String;
  Rect: TRect;
begin
  CurPos := ScreenToClient(CurPos);
  Text := Self.Text;
  Result := Clipped(Text);
  if Result then begin
    Controller.Canvas.Font.Assign(Font);
    CurPos := Point(0, 0);

    with Rect do begin
      TopLeft := ClientToScreen(CurPos);
      Right := CurPos.X + Controller.Canvas.TextWidth(Text) + 5;
      BottomRight := ClientToScreen(BottomRight);
      Bottom := Top + Height - 4;
{$IFDEF WIN32}
      if (Ctl3D = True) and (BorderStyle = bsSingle) then begin
        Dec(Top, 1);
        Dec(Left, 1);
        Dec(Bottom, 3);
      end;
{$ENDIF}
      if BorderStyle = bsNone then begin
        Dec(Top, 2);
        Dec(Left, 2);
        Dec(Right, 2);
      end;
    end;
    Controller.ActivateHint(Rect, Text);
  end;
end;

{*************************************************************************}

{=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-}
{ FOLLOWS IMPLEMENTATION OF HINT ON CLIPPED TEXT FUNCTIONS }
{=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-}

{ THintProcList }

procedure THintProcList.Add(Item: THintProc);
begin
  inherited Add(Nil);
  SetItem(Count - 1, Item);
end;

function THintProcList.GetItem(Index: Integer): THintProc;
begin
  Result := PHintProc(inherited Items[Index])^;
end;

procedure THintProcList.SetItem(Index: Integer; Item: THintProc);
var
  P: PHintProc;
begin
  New(P);
  try
    P^ := Item;
    inherited Items[Index] := P;
  except
    Dispose(P);
    raise;
  end;
end;

destructor THintProcList.Destroy;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    Dispose(PHintProc(inherited Items[I]));
end;

{ THintController }

procedure THintController.DoTimer(Sender: TObject);
var
  Point: TPoint;
begin
  GetCursorPos(Point);
  Point := Captive.ScreenToClient(Point);
  { If it is not showing and it is time to show, we show }
  if (CurStatus = 1) and (Counter > 0) then
    DisplayHint(Captive)
      { If it is not showing and it is not time to show, we Inc(Counter) }
  else if CurStatus = 1 then
    Inc(Counter);
end;

procedure THintController.DisplayHint(Control: TControl);
var
  Point: TPoint;
  Proc: THintProc;
begin
  Counter := 0;
  Proc := HintProcs.Items[Controls.IndexOf(Control)];
  GetCursorPos(Point);
  { Check if we must go to Mode 2 }
  if Proc(Point) then
    CurStatus := 2
  else { If not hint required, we reset }
    ResetCaptive;
end;

procedure THintController.ResetCaptive;
begin
  Timer.Enabled := False;
  Timer.Interval := BaseShowHintDelay;
  Counter := 0;
  if CurStatus = 2 then ReleaseHandle;
  Captive := Nil;
  CurStatus := 0;
end;

procedure THintController.CheckMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if Captive <> Sender then ResetCaptive; { I doubt it can happen with use of CMMouseLeave }
  if Captive = Nil then begin
    Captive := TControl(Sender);
    CurStatus := 1;
    Timer.Enabled := True;
  end;
end;

procedure THintController.AddControl(Control: TControl; HintProc: THintProc);
begin
  Controls.Add(Control);
  HintProcs.Add(HintProc);
end;

procedure THintController.RemoveControl(Control: TControl);
var
  Idx: Integer;
begin
  if Control = Captive then ResetCaptive;
  Idx := Controls.IndexOf(Control);
  Controls.Delete(Idx);
  HintProcs.Delete(Idx);
end;

procedure THintController.LeftMouseDown(var Msg: TMessage);
begin
  ResetCaptive;
  inherited;
end;

constructor THintController.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF WIN32}Color := clNewInfoBk;
{$ENDIF}
  Controls := TList.Create;
  HintProcs := THintProcList.Create;
  Timer := TTimer.Create(Self);
  ResetCaptive;
  Timer.OnTimer := DoTimer;
end;

destructor THintController.Destroy;
begin
  Timer.Free;
  HintProcs.Free;
  Controls.Free;
  inherited Destroy;
end;

{$IFDEF WIN32}
{ Note : these repaint functions allow the window to be more beautiful :
      a full black rectangle instead of an half white/half black one }

procedure THintController.WMNCPaint(var Message: TMessage);
var
  R: TRect;
begin
  Canvas.Handle := GetWindowDC(Handle);
  with Canvas do try
    R := Rect(0, 0, Width, Height);
    Rectangle(0, 0, Width, Height);
  finally
    Canvas.Handle := 0;
  end;
end;

procedure THintController.Paint;
var
  R: TRect;
  C: PChar;
begin
  R := ClientRect;
  Inc(R.Left, 1);
  Inc(R.Top, 1);
  Dec(R.Right, 1);
  Dec(R.Bottom, 1);
  Canvas.Font.Color := clBlack;
  GetMem(C, Length(Caption) + 1);
  DrawText(Canvas.Handle, StrPCopy(C, Caption), -1, R, DT_LEFT or DT_NOPREFIX or
    DT_WORDBREAK);
  FreeMem(C, Length(Caption) + 1);
end;
{$ENDIF}

procedure Register;
begin
  RegisterComponents('Egna', [TEditN]);
  RegisterComponents('Egna', [TMEditN]);
  RegisterComponents('Egna', [TDBEditN]);
  RegisterComponents('Egna', [TDB_mcButton, TDB_mc3DotButton]);

end;

initialization
  begin
    BaseShowHintDelay := 300;
    Controller := THintController.Create(Nil);
{$IFNDEF WIN32}
    AddExitProc(FreeAll);
{$ENDIF}
  end;

{$IFDEF WIN32}
finalization
  begin
    Controller.Free;
  end;
{$ENDIF}

end.

