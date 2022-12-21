{ ************************************************************************************************************************* }
{ }
{ XML Data Binding }
{ }
{ Generated on: 2017-10-10 20:20:31 }
{ Generated from: C:\Users\peho\Documents\Projekt\AMEK\Ängelholms Mek 2007 - Aktuell version\IntersystemOrder.xml }
{ Settings stored in: C:\Users\peho\Documents\Projekt\AMEK\Ängelholms Mek 2007 - Aktuell version\IntersystemOrder.xdb }
{ }
{ ************************************************************************************************************************* }

unit IntersystemOrder;

interface

uses xmldom, XMLDoc, XMLIntf, system.Variants;

type

  { Forward Decls }

  IXMLORDERS420Type = interface;
  IXMLOrderType = interface;
  IXMLHeadType = interface;
  IXMLSupplierType = interface;
  IXMLBuyerType = interface;
  IXMLReferencesType = interface;
  IXMLGoodsLabelingType = interface;
  IXMLDeliveryAddressType = interface;
  IXMLTermsType = interface;
  IXMLDeliveryTermsType = interface;
  IXMLPaymentTermsType = interface;
  IXMLExportType = interface;
  IXMLRowsType = interface;
  IXMLRowType = interface;
  IXMLPartType = interface;

  { IXMLORDERS420Type }

  IXMLORDERS420Type = interface(IXMLNode)
    ['{2785F704-3CCA-4337-8C6E-ACFEDAD02220}']
    { Property Accessors }
    function Get_SoftwareManufacturer: UnicodeString;
    function Get_SoftwareName: UnicodeString;
    function Get_SoftwareVersion: UnicodeString;
    function Get_Order: IXMLOrderType;
    { Methods & Properties }
    property SoftwareManufacturer: UnicodeString read Get_SoftwareManufacturer;
    property SoftwareName: UnicodeString read Get_SoftwareName;
    property SoftwareVersion: UnicodeString read Get_SoftwareVersion;
    property Order: IXMLOrderType read Get_Order;
  end;

  { IXMLOrderType }

  IXMLOrderType = interface(IXMLNode)
    ['{87E303BF-09B0-436B-92F9-55087BD571C9}']
    { Property Accessors }
    function Get_OrderNumber: String;
    function Get_Head: IXMLHeadType;
    function Get_Rows: IXMLRowsType;
    { Methods & Properties }
    property OrderNumber: String read Get_OrderNumber;
    property Head: IXMLHeadType read Get_Head;
    property Rows: IXMLRowsType read Get_Rows;
  end;

  { IXMLHeadType }

  IXMLHeadType = interface(IXMLNode)
    ['{A12E39C7-4782-4D02-B101-67CEAE07567C}']
    { Property Accessors }
    function Get_Supplier: IXMLSupplierType;
    function Get_Buyer: IXMLBuyerType;
    function Get_References: IXMLReferencesType;
    function Get_DeliveryAddress: IXMLDeliveryAddressType;
    function Get_Terms: IXMLTermsType;
    function Get_Export: IXMLExportType;
    { Methods & Properties }
    property Supplier: IXMLSupplierType read Get_Supplier;
    property Buyer: IXMLBuyerType read Get_Buyer;
    property References: IXMLReferencesType read Get_References;
    property DeliveryAddress: IXMLDeliveryAddressType read Get_DeliveryAddress;
    property Terms: IXMLTermsType read Get_Terms;
    property Export: IXMLExportType read Get_Export;
  end;

  { IXMLSupplierType }

  IXMLSupplierType = interface(IXMLNode)
    ['{07B50E84-F35A-409F-A4A6-34B989E036B7}']
    { Property Accessors }
    function Get_SupplierCodeEdi: Integer;
    function Get_Name: String;
    function Get_StreetBox1: UnicodeString;
    function Get_StreetBox2: UnicodeString;
    function Get_ZipCity1: UnicodeString;
    function Get_ZipCity2: UnicodeString;
    function Get_Country: UnicodeString;
    { Methods & Properties }
    property SupplierCodeEdi: Integer read Get_SupplierCodeEdi;
    property Name: UnicodeString read Get_Name;
    property StreetBox1: UnicodeString read Get_StreetBox1;
    property StreetBox2: UnicodeString read Get_StreetBox2;
    property ZipCity1: UnicodeString read Get_ZipCity1;
    property ZipCity2: UnicodeString read Get_ZipCity2;
    property Country: UnicodeString read Get_Country;
  end;

  { IXMLBuyerType }

  IXMLBuyerType = interface(IXMLNode)
    ['{AED6CC69-DB87-4857-A4CD-B8F0C96B6EDF}']
    { Property Accessors }
    function Get_BuyerCodeEdi: Integer;
    function Get_Name: UnicodeString;
    function Get_StreetBox1: UnicodeString;
    function Get_StreetBox2: UnicodeString;
    function Get_ZipCity1: UnicodeString;
    function Get_ZipCity2: UnicodeString;
    function Get_Country: UnicodeString;
    { Methods & Properties }
    property BuyerCodeEdi: Integer read Get_BuyerCodeEdi;
    property Name: UnicodeString read Get_Name;
    property StreetBox1: UnicodeString read Get_StreetBox1;
    property StreetBox2: UnicodeString read Get_StreetBox2;
    property ZipCity1: UnicodeString read Get_ZipCity1;
    property ZipCity2: UnicodeString read Get_ZipCity2;
    property Country: UnicodeString read Get_Country;
  end;

  { IXMLReferencesType }

  IXMLReferencesType = interface(IXMLNode)
    ['{463A39A8-0850-4B78-A41C-E2945279E9C1}']
    { Property Accessors }
    function Get_BuyerReference: String;
    function Get_BuyerComment: UnicodeString;
    function Get_GoodsLabeling: IXMLGoodsLabelingType;
    { Methods & Properties }
    property BuyerReference: String read Get_BuyerReference;
    property BuyerComment: UnicodeString read Get_BuyerComment;

    property GoodsLabeling: IXMLGoodsLabelingType read Get_GoodsLabeling;
  end;

  { IXMLGoodsLabelingType }

  IXMLGoodsLabelingType = interface(IXMLNode)
    ['{DCA0D38E-E25B-4835-8068-724DB63FF0AF}']
    { Property Accessors }
    function Get_Row1: UnicodeString;
    function Get_Row2: UnicodeString;
    { Methods & Properties }

    property Row1: UnicodeString read Get_Row1;
    property Row2: UnicodeString read Get_Row2;
  end;

  { IXMLDeliveryAddressType }

  IXMLDeliveryAddressType = interface(IXMLNode)
    ['{2947AD99-E9DA-4259-926C-06FC206F4813}']
    { Property Accessors }
    function Get_Name: String;
    function Get_StreetBox1: UnicodeString;
    function Get_StreetBox2: UnicodeString;
    function Get_ZipCity1: UnicodeString;
    function Get_ZipCity2: UnicodeString;
    function Get_Country: UnicodeString;
    function Get_CompanyAdressFlag: Integer;
    { Methods & Properties }
    property Name: UnicodeString read Get_Name;
    property StreetBox1: UnicodeString read Get_StreetBox1;
    property StreetBox2: UnicodeString read Get_StreetBox2;
    property ZipCity1: UnicodeString read Get_ZipCity1;
    property ZipCity2: UnicodeString read Get_ZipCity2;
    property Country: UnicodeString read Get_Country;
    property CompanyAdressFlag: Integer read Get_CompanyAdressFlag;

  end;

  { IXMLTermsType }

  IXMLTermsType = interface(IXMLNode)
    ['{F624520E-F8BA-4B99-96D5-EF266596D429}']
    { Property Accessors }
    function Get_DeliveryTerms: IXMLDeliveryTermsType;
    function Get_CustomerInvoiceCode: Integer;
    function Get_OrderDate: UnicodeString;
    function Get_PaymentTerms: IXMLPaymentTermsType;
    { Methods & Properties }
    property DeliveryTerms: IXMLDeliveryTermsType read Get_DeliveryTerms;
    property CustomerInvoiceCode: Integer read Get_CustomerInvoiceCode;
    property OrderDate: UnicodeString read Get_OrderDate;
    property PaymentTerms: IXMLPaymentTermsType read Get_PaymentTerms;
  end;

  { IXMLDeliveryTermsType }

  IXMLDeliveryTermsType = interface(IXMLNode)
    ['{ADEF959A-EA48-4E2B-AC87-D7BA1EB0BD3A}']
    { Property Accessors }
    function Get_IncoTermCombiTerm: UnicodeString;
    function Get_DeliveryMethod: UnicodeString;
    function Get_TransportPayer: Integer;
    function Get_CustomerTransportTimeDays: Integer;
    { Methods & Properties }
    property IncoTermCombiTerm: UnicodeString read Get_IncoTermCombiTerm;
    property DeliveryMethod: UnicodeString read Get_DeliveryMethod;

    property TransportPayer: Integer read Get_TransportPayer;
    property CustomerTransportTimeDays: Integer read Get_CustomerTransportTimeDays;
  end;

  { IXMLPaymentTermsType }

  IXMLPaymentTermsType = interface(IXMLNode)
    ['{5505D569-162E-44D5-B571-AC00AC9A6502}']
    { Property Accessors }
    function Get_TermsOfPaymentDays: Integer;
    { Methods & Properties }
    property TermsOfPaymentDays: Integer read Get_TermsOfPaymentDays;

  end;

  { IXMLExportType }

  IXMLExportType = interface(IXMLNode)
    ['{3FED540C-64C8-4F50-BC2F-5F96B074F7EA}']
    { Property Accessors }
    function Get_Currency: Integer;
    { Methods & Properties }
    property Currency: Integer read Get_Currency;
  end;

  { IXMLRowsType }

  IXMLRowsType = interface(IXMLNodeCollection)
    ['{92DC6310-2DF3-4289-87E4-CA65112970D3}']
    { Property Accessors }
    function Get_Row(Index: Integer): IXMLRowType;
    { Methods & Properties }
    function Add: IXMLRowType;
    function Insert(const Index: Integer): IXMLRowType;
    property Row[Index: Integer]: IXMLRowType read Get_Row; default;
  end;

  { IXMLRowType }

  IXMLRowType = interface(IXMLNode)
    ['{C85C55DC-3309-4EDE-B213-A56558B94A78}']
    { Property Accessors }
    function Get_RowNumber: Integer;
    function Get_RowType: Integer;
    function Get_Part: IXMLPartType;
    function Get_Text: String;
    function Get_ReferenceNumber: UnicodeString;
    function Get_Quantity: Integer;
    function Get_Unit_: String;
    function Get_DeliveryPeriod: TDateTime;
    function Get_Each: Integer;
    function Get_Discount: Word;
    function Get_Setup: Integer;
    function Get_Alloy: Integer;
    { Methods & Properties }
    property RowNumber: Integer read Get_RowNumber;
    property RowType: Integer read Get_RowType;
    property Part: IXMLPartType read Get_Part;
    property Text: String read Get_Text;
    property ReferenceNumber: UnicodeString read Get_ReferenceNumber;
    property Quantity: Integer read Get_Quantity;
    property Unit_: String read Get_Unit_;
    property DeliveryPeriod: TDateTime read Get_DeliveryPeriod;
    property Each: Integer read Get_Each;
    property Discount: Word read Get_Discount;
    property Setup: Integer read Get_Setup;
    property Alloy: Integer read Get_Alloy;
  end;

  { IXMLPartType }

  IXMLPartType = interface(IXMLNode)
    ['{33866D3C-0931-4879-B2E6-18BDC67B7285}']
    { Property Accessors }
    function Get_PartNumber: String;
    function Get_SupplierPartNumber: UnicodeString;
    function Get_Revision: UnicodeString;
    { Methods & Properties }
    property PartNumber: String read Get_PartNumber;
    property SupplierPartNumber: UnicodeString read Get_SupplierPartNumber;
    property Revision: UnicodeString read Get_Revision;
  end;

  { Forward Decls }

  TXMLORDERS420Type = class;
  TXMLOrderType = class;
  TXMLHeadType = class;
  TXMLSupplierType = class;
  TXMLBuyerType = class;
  TXMLReferencesType = class;
  TXMLGoodsLabelingType = class;
  TXMLDeliveryAddressType = class;
  TXMLTermsType = class;
  TXMLDeliveryTermsType = class;
  TXMLPaymentTermsType = class;
  TXMLExportType = class;
  TXMLRowsType = class;
  TXMLRowType = class;
  TXMLPartType = class;

  { TXMLORDERS420Type }

  TXMLORDERS420Type = class(TXMLNode, IXMLORDERS420Type)
  protected
    { IXMLORDERS420Type }
    function Get_SoftwareManufacturer: String;
    function Get_SoftwareName: String;
    function Get_SoftwareVersion: String;
    function Get_Order: IXMLOrderType;
  public
    procedure AfterConstruction; override;
  end;

  { TXMLOrderType }

  TXMLOrderType = class(TXMLNode, IXMLOrderType)
  protected
    { IXMLOrderType }
    function Get_OrderNumber: String;
    function Get_Head: IXMLHeadType;
    function Get_Rows: IXMLRowsType;
  public
    procedure AfterConstruction; override;
  end;

  { TXMLHeadType }

  TXMLHeadType = class(TXMLNode, IXMLHeadType)
  protected
    { IXMLHeadType }
    function Get_Supplier: IXMLSupplierType;
    function Get_Buyer: IXMLBuyerType;
    function Get_References: IXMLReferencesType;
    function Get_DeliveryAddress: IXMLDeliveryAddressType;
    function Get_Terms: IXMLTermsType;
    function Get_Export: IXMLExportType;
  public
    procedure AfterConstruction; override;
  end;

  { TXMLSupplierType }

  TXMLSupplierType = class(TXMLNode, IXMLSupplierType)
  protected
    { IXMLSupplierType }
    function Get_SupplierCodeEdi: Integer;
    function Get_Name: UnicodeString;
    function Get_StreetBox1: UnicodeString;
    function Get_StreetBox2: UnicodeString;
    function Get_ZipCity1: UnicodeString;
    function Get_ZipCity2: UnicodeString;
    function Get_Country: UnicodeString;
  end;

  { TXMLBuyerType }

  TXMLBuyerType = class(TXMLNode, IXMLBuyerType)
  protected
    { IXMLBuyerType }
    function Get_BuyerCodeEdi: Integer;
    function Get_Name: UnicodeString;
    function Get_StreetBox1: UnicodeString;
    function Get_StreetBox2: UnicodeString;
    function Get_ZipCity1: UnicodeString;
    function Get_ZipCity2: UnicodeString;
    function Get_Country: UnicodeString;
  end;

  { TXMLReferencesType }

  TXMLReferencesType = class(TXMLNode, IXMLReferencesType)
  protected
    { IXMLReferencesType }
    function Get_BuyerReference: UnicodeString;
    function Get_BuyerComment: UnicodeString;
    function Get_GoodsLabeling: IXMLGoodsLabelingType;
  public
    procedure AfterConstruction; override;
  end;

  { TXMLGoodsLabelingType }

  TXMLGoodsLabelingType = class(TXMLNode, IXMLGoodsLabelingType)
  protected
    { IXMLGoodsLabelingType }
    function Get_Row1: UnicodeString;
    function Get_Row2: UnicodeString;
  end;

  { TXMLDeliveryAddressType }

  TXMLDeliveryAddressType = class(TXMLNode, IXMLDeliveryAddressType)
  protected
    { IXMLDeliveryAddressType }
    function Get_Name: UnicodeString;
    function Get_StreetBox1: UnicodeString;
    function Get_StreetBox2: UnicodeString;
    function Get_ZipCity1: UnicodeString;
    function Get_ZipCity2: UnicodeString;
    function Get_Country: UnicodeString;
    function Get_CompanyAdressFlag: Integer;
  end;

  { TXMLTermsType }

  TXMLTermsType = class(TXMLNode, IXMLTermsType)
  protected
    { IXMLTermsType }
    function Get_DeliveryTerms: IXMLDeliveryTermsType;
    function Get_CustomerInvoiceCode: Integer;
    function Get_OrderDate: UnicodeString;
    function Get_PaymentTerms: IXMLPaymentTermsType;
  public
    procedure AfterConstruction; override;
  end;

  { TXMLDeliveryTermsType }

  TXMLDeliveryTermsType = class(TXMLNode, IXMLDeliveryTermsType)
  protected
    { IXMLDeliveryTermsType }
    function Get_IncoTermCombiTerm: UnicodeString;
    function Get_DeliveryMethod: UnicodeString;
    function Get_TransportPayer: Integer;
    function Get_CustomerTransportTimeDays: Integer;
  end;

  { TXMLPaymentTermsType }

  TXMLPaymentTermsType = class(TXMLNode, IXMLPaymentTermsType)
  protected
    { IXMLPaymentTermsType }
    function Get_TermsOfPaymentDays: Integer;
  end;

  { TXMLExportType }

  TXMLExportType = class(TXMLNode, IXMLExportType)
  protected
    { IXMLExportType }
    function Get_Currency: Integer;
  end;

  { TXMLRowsType }

  TXMLRowsType = class(TXMLNodeCollection, IXMLRowsType)
  protected
    { IXMLRowsType }
    function Get_Row(Index: Integer): IXMLRowType;
    function Add: IXMLRowType;
    function Insert(const Index: Integer): IXMLRowType;
  public
    procedure AfterConstruction; override;
  end;

  { TXMLRowType }

  TXMLRowType = class(TXMLNode, IXMLRowType)
  protected
    { IXMLRowType }
    function Get_RowNumber: Integer;
    function Get_RowType: Integer;
    function Get_Part: IXMLPartType;
    function Get_Text: UnicodeString;
    function Get_ReferenceNumber: UnicodeString;
    function Get_Quantity: Integer;
    function Get_Unit_: UnicodeString;
    function Get_DeliveryPeriod: TDateTime;
    function Get_Each: Integer;
    function Get_Discount: Word;
    function Get_Setup: Integer;
    function Get_Alloy: Integer;
  public
    procedure AfterConstruction; override;
  end;

  { TXMLPartType }

  TXMLPartType = class(TXMLNode, IXMLPartType)
  protected
    { IXMLPartType }
    function Get_PartNumber: UnicodeString;
    function Get_SupplierPartNumber: UnicodeString;
    function Get_Revision: UnicodeString;
  end;

  { Global Functions }

function GetORDERS420(Doc: IXMLDocument): IXMLORDERS420Type;
function LoadORDERS420(const FileName: string): IXMLORDERS420Type;
function NewORDERS420: IXMLORDERS420Type;
function VarStrEmpty(v: Variant): Boolean;

const
  TargetNamespace = '';

implementation

function VarStrEmpty(v: Variant): Boolean;
var
  data: PVarData;
begin
  data := FindVarData(v);
  case data^.VType of
    varOleStr:
      result := (data^.VOleStr^ = #0);
    varString:
      result := (data^.VString = nil);
    varUString:
      result := (data^.VUString = nil);
  else
    result := false;
  end;
end;

{ Global Functions }

function GetORDERS420(Doc: IXMLDocument): IXMLORDERS420Type;
begin
  result := Doc.GetDocBinding('ORDERS420', TXMLORDERS420Type, TargetNamespace) as IXMLORDERS420Type;
end;

function LoadORDERS420(const FileName: string): IXMLORDERS420Type;
begin
  result := LoadXMLDocument(FileName).GetDocBinding('ORDERS420', TXMLORDERS420Type, TargetNamespace)
    as IXMLORDERS420Type;
end;

function NewORDERS420: IXMLORDERS420Type;
begin
  result := NewXMLDocument.GetDocBinding('ORDERS420', TXMLORDERS420Type, TargetNamespace) as IXMLORDERS420Type;
end;

{ TXMLORDERS420Type }

procedure TXMLORDERS420Type.AfterConstruction;
begin
  RegisterChildNode('Order', TXMLOrderType);
  inherited;
end;

function TXMLORDERS420Type.Get_SoftwareManufacturer: String;
begin
  result := AttributeNodes['SoftwareManufacturer'].NodeValue;
end;

function TXMLORDERS420Type.Get_SoftwareName: String;
begin
  result := AttributeNodes['SoftwareName'].NodeValue;
end;

function TXMLORDERS420Type.Get_SoftwareVersion: String;
begin
  result := AttributeNodes['SoftwareVersion'].NodeValue;
end;

function TXMLORDERS420Type.Get_Order: IXMLOrderType;
begin
  result := ChildNodes['Order'] as IXMLOrderType;
end;

{ TXMLOrderType }

procedure TXMLOrderType.AfterConstruction;
begin
  RegisterChildNode('Head', TXMLHeadType);
  RegisterChildNode('Rows', TXMLRowsType);
  inherited;
end;

function TXMLOrderType.Get_OrderNumber: String;
begin
  result := AttributeNodes['OrderNumber'].NodeValue;
end;

function TXMLOrderType.Get_Head: IXMLHeadType;
begin
  result := ChildNodes['Head'] as IXMLHeadType;
end;

function TXMLOrderType.Get_Rows: IXMLRowsType;
begin
  result := ChildNodes['Rows'] as IXMLRowsType;
end;

{ TXMLHeadType }

procedure TXMLHeadType.AfterConstruction;
begin
  RegisterChildNode('Supplier', TXMLSupplierType);
  RegisterChildNode('Buyer', TXMLBuyerType);
  RegisterChildNode('References', TXMLReferencesType);
  RegisterChildNode('DeliveryAddress', TXMLDeliveryAddressType);
  RegisterChildNode('Terms', TXMLTermsType);
  RegisterChildNode('Export', TXMLExportType);
  inherited;
end;

function TXMLHeadType.Get_Supplier: IXMLSupplierType;
begin
  result := ChildNodes['Supplier'] as IXMLSupplierType;
end;

function TXMLHeadType.Get_Buyer: IXMLBuyerType;
begin
  result := ChildNodes['Buyer'] as IXMLBuyerType;
end;

function TXMLHeadType.Get_References: IXMLReferencesType;
begin
  result := ChildNodes['References'] as IXMLReferencesType;
end;

function TXMLHeadType.Get_DeliveryAddress: IXMLDeliveryAddressType;
begin
  result := ChildNodes['DeliveryAddress'] as IXMLDeliveryAddressType;
end;

function TXMLHeadType.Get_Terms: IXMLTermsType;
begin
  result := ChildNodes['Terms'] as IXMLTermsType;
end;

function TXMLHeadType.Get_Export: IXMLExportType;
begin
  result := ChildNodes['Export'] as IXMLExportType;
end;

{ TXMLSupplierType }

function TXMLSupplierType.Get_SupplierCodeEdi: Integer;
begin
  result := AttributeNodes['SupplierCodeEdi'].NodeValue;
end;

function TXMLSupplierType.Get_Name: UnicodeString;
begin
  result := ChildNodes['Name'].NodeValue;
end;

function TXMLSupplierType.Get_StreetBox1: UnicodeString;
begin
  result := ChildNodes['StreetBox1'].NodeValue;
end;

function TXMLSupplierType.Get_StreetBox2: UnicodeString;
begin
  result := ChildNodes['StreetBox2'].Text;
end;

function TXMLSupplierType.Get_ZipCity1: UnicodeString;
begin
  result := ChildNodes['ZipCity1'].NodeValue;
end;

function TXMLSupplierType.Get_ZipCity2: UnicodeString;
begin
  result := ChildNodes['ZipCity2'].Text;
end;

function TXMLSupplierType.Get_Country: UnicodeString;
begin
  result := ChildNodes['Country'].NodeValue;
end;

{ TXMLBuyerType }

function TXMLBuyerType.Get_BuyerCodeEdi: Integer;
begin
  result := AttributeNodes['BuyerCodeEdi'].NodeValue;
end;

function TXMLBuyerType.Get_Name: UnicodeString;
begin
  result := ChildNodes['Name'].NodeValue;
end;

function TXMLBuyerType.Get_StreetBox1: UnicodeString;
begin
  result := ChildNodes['StreetBox1'].NodeValue;
end;

function TXMLBuyerType.Get_StreetBox2: UnicodeString;
begin
  result := ChildNodes['StreetBox2'].Text;
end;

function TXMLBuyerType.Get_ZipCity1: UnicodeString;
begin
  result := ChildNodes['ZipCity1'].NodeValue;
end;

function TXMLBuyerType.Get_ZipCity2: UnicodeString;
begin
  result := ChildNodes['ZipCity2'].Text;
end;

function TXMLBuyerType.Get_Country: UnicodeString;
begin
  result := ChildNodes['Country'].NodeValue;
end;

{ TXMLReferencesType }

procedure TXMLReferencesType.AfterConstruction;
begin
  RegisterChildNode('GoodsLabeling', TXMLGoodsLabelingType);
  inherited;
end;

function TXMLReferencesType.Get_BuyerReference: String;
begin
//    result := ChildNodes['BuyerReference'].NodeValue;
    result := ChildNodes['BuyerReference'].Text;
end;

function TXMLReferencesType.Get_BuyerComment: UnicodeString;
begin
  result := ChildNodes['BuyerComment'].Text;
end;

function TXMLReferencesType.Get_GoodsLabeling: IXMLGoodsLabelingType;
begin
  result := ChildNodes['GoodsLabeling'] as IXMLGoodsLabelingType;
end;

{ TXMLGoodsLabelingType }

function TXMLGoodsLabelingType.Get_Row1: UnicodeString;
begin
  result := ChildNodes['Row1'].Text;
end;

function TXMLGoodsLabelingType.Get_Row2: UnicodeString;
begin
  result := ChildNodes['Row2'].Text;
end;

{ TXMLDeliveryAddressType }

function TXMLDeliveryAddressType.Get_Name: UnicodeString;
begin
  result := ChildNodes['Name'].Text;
end;

function TXMLDeliveryAddressType.Get_StreetBox1: UnicodeString;
begin
  result := ChildNodes['StreetBox1'].Text;
end;

function TXMLDeliveryAddressType.Get_StreetBox2: UnicodeString;
begin
  result := ChildNodes['StreetBox2'].Text;
end;

function TXMLDeliveryAddressType.Get_ZipCity1: UnicodeString;
begin
  result := ChildNodes['ZipCity1'].Text;
end;

function TXMLDeliveryAddressType.Get_ZipCity2: UnicodeString;
begin
  result := ChildNodes['ZipCity2'].Text;
end;

function TXMLDeliveryAddressType.Get_Country: UnicodeString;
begin
  result := ChildNodes['Country'].Text;
end;

function TXMLDeliveryAddressType.Get_CompanyAdressFlag: Integer;
begin
  result := ChildNodes['CompanyAdressFlag'].NodeValue;
end;

{ TXMLTermsType }

procedure TXMLTermsType.AfterConstruction;
begin
  RegisterChildNode('DeliveryTerms', TXMLDeliveryTermsType);
  RegisterChildNode('PaymentTerms', TXMLPaymentTermsType);
  inherited;
end;

function TXMLTermsType.Get_DeliveryTerms: IXMLDeliveryTermsType;
begin
  result := ChildNodes['DeliveryTerms'] as IXMLDeliveryTermsType;
end;

function TXMLTermsType.Get_CustomerInvoiceCode: Integer;
begin
  result := ChildNodes['CustomerInvoiceCode'].NodeValue;
end;

function TXMLTermsType.Get_OrderDate: UnicodeString;
begin
  result := ChildNodes['OrderDate'].NodeValue;
end;

function TXMLTermsType.Get_PaymentTerms: IXMLPaymentTermsType;
begin
  result := ChildNodes['PaymentTerms'] as IXMLPaymentTermsType;
end;

{ TXMLDeliveryTermsType }

function TXMLDeliveryTermsType.Get_IncoTermCombiTerm: UnicodeString;
begin
  result := ChildNodes['IncoTermCombiTerm'].Text;
end;

function TXMLDeliveryTermsType.Get_DeliveryMethod: UnicodeString;
begin
  result := ChildNodes['DeliveryMethod'].Text;
end;

function TXMLDeliveryTermsType.Get_TransportPayer: Integer;
begin
  result := ChildNodes['TransportPayer'].NodeValue;
end;

function TXMLDeliveryTermsType.Get_CustomerTransportTimeDays: Integer;
begin
  result := ChildNodes['CustomerTransportTimeDays'].NodeValue;
end;

{ TXMLPaymentTermsType }

function TXMLPaymentTermsType.Get_TermsOfPaymentDays: Integer;
begin
  result := ChildNodes['TermsOfPaymentDays'].NodeValue;
end;

{ TXMLExportType }

function TXMLExportType.Get_Currency: Integer;
begin
  result := ChildNodes['Currency'].NodeValue;
end;

{ TXMLRowsType }

procedure TXMLRowsType.AfterConstruction;
begin
  RegisterChildNode('Row', TXMLRowType);
  ItemTag := 'Row';
  ItemInterface := IXMLRowType;
  inherited;
end;

function TXMLRowsType.Get_Row(Index: Integer): IXMLRowType;
begin
  result := List[Index] as IXMLRowType;
end;

function TXMLRowsType.Add: IXMLRowType;
begin
  result := AddItem(-1) as IXMLRowType;
end;

function TXMLRowsType.Insert(const Index: Integer): IXMLRowType;
begin
  result := AddItem(Index) as IXMLRowType;
end;

{ TXMLRowType }

procedure TXMLRowType.AfterConstruction;
begin
  RegisterChildNode('Part', TXMLPartType);
  inherited;
end;

function TXMLRowType.Get_RowNumber: Integer;
begin
  result := AttributeNodes['RowNumber'].NodeValue;
end;

function TXMLRowType.Get_RowType: Integer;
begin
  result := AttributeNodes['RowType'].NodeValue;
end;

function TXMLRowType.Get_Part: IXMLPartType;
begin
  result := ChildNodes['Part'] as IXMLPartType;
end;

function TXMLRowType.Get_Text: String;
begin
  IF VARTOSTRDEF(ChildNodes['Text'].NodeValue, '') <> '' then
    result := ChildNodes['Text'].NodeValue
  else
    result := '';
end;

function TXMLRowType.Get_ReferenceNumber: UnicodeString;
begin
  result := ChildNodes['ReferenceNumber'].Text;
end;

function TXMLRowType.Get_Quantity: Integer;
begin
  result := ChildNodes['Quantity'].NodeValue;
end;

function TXMLRowType.Get_Unit_: String;
begin
  result := ChildNodes['Unit'].NodeValue;
end;

function TXMLRowType.Get_DeliveryPeriod: TDateTime;
begin
  result := VarToDateTime(ChildNodes['DeliveryPeriod'].NodeValue);
end;

function TXMLRowType.Get_Each: Integer;
begin
  result := ChildNodes['Each'].NodeValue;
end;

function TXMLRowType.Get_Discount: Word;
begin
  result := ChildNodes['Discount'].NodeValue;
end;

function TXMLRowType.Get_Setup: Integer;
begin
  result := ChildNodes['Setup'].NodeValue;
end;

function TXMLRowType.Get_Alloy: Integer;
begin
  result := ChildNodes['Alloy'].NodeValue;
end;

{ TXMLPartType }

function TXMLPartType.Get_PartNumber: String;
begin
  result := AttributeNodes['PartNumber'].NodeValue;
end;

function TXMLPartType.Get_SupplierPartNumber: UnicodeString;
begin
  result := AttributeNodes['SupplierPartNumber'].Text;
end;

function TXMLPartType.Get_Revision: UnicodeString;
begin
  result := AttributeNodes['Revision'].Text;
end;

end.
