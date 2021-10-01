unit uMain;

interface

uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
   FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
   FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
   FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
   FireDAC.DApt, FireDAC.VCLUI.Wait, Vcl.StdCtrls, FireDAC.Comp.UI,
   FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
   Datasnap.DBClient,
   System.Variants,
   System.Classes,
   System.JSON,
   DataSet.Serialize;

type
   TFrmFBtoJSON = class(TForm)
      DBCon: TFDConnection;
      FDQuery: TFDQuery;
      FBDriverLink: TFDPhysFBDriverLink;
      WaitCursor: TFDGUIxWaitCursor;
      MemoQuery: TMemo;
      Label1: TLabel;
      MemoJson: TMemo;
      Label2: TLabel;
      BtnGenJson: TButton;
      DSCustom: TClientDataSet;
      procedure FormCreate(Sender: TObject);
      procedure BtnGenJsonClick(Sender: TObject);
   private
      { Private declarations }
   public
      { Public declarations }
      procedure GenerateJson;
   end;

var
   FrmFBtoJSON: TFrmFBtoJSON;

implementation

{$R *.dfm}

procedure TFrmFBtoJSON.BtnGenJsonClick(Sender: TObject);
begin
   GenerateJson;
end;

procedure TFrmFBtoJSON.FormCreate(Sender: TObject);
begin
   DBCon.Connected := true;
end;

procedure TFrmFBtoJSON.GenerateJson;
var
   JsonArray: TJSONArray;
begin
   FDQuery.Active := false;
   FDQuery.SQL := MemoQuery.Lines;
   FDQuery.Active := true;

   JsonArray := FDQuery.ToJSONArray();
   MemoJson.Lines.Text := JsonArray.Format;
end;

end.
