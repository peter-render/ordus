
{*********************************************************************************************************************************}
{                                                                                                                                 }
{                                                        XML Data Binding                                                         }
{                                                                                                                                 }
{         Generated on: 2018-11-21 23:42:13                                                                                       }
{       Generated from: C:\Users\Peter Holzer\Documents\Projekt\AMEK\Ängelholms Mek 2007 - Aktuell version\XML\Invoic416_V4.xsd   }
{   Settings stored in: C:\Users\Peter Holzer\Documents\Projekt\AMEK\Ängelholms Mek 2007 - Aktuell version\XML\Invoic416_V4.xdb   }
{                                                                                                                                 }
{*********************************************************************************************************************************}

unit Invoic416_V4;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLINVOIC416 = interface;
  IXMLInvoice = interface;
  IXMLHead = interface;
  IXMLBuyer = interface;
  IXMLInvoiceAddress = interface;
  IXMLDeliveryAddress = interface;
  IXMLSeller = interface;
  IXMLPostalAddress = interface;
  IXMLVisitingAddress = interface;
  IXMLFactoring = interface;
  IXMLRows = interface;
  IXMLRow = interface;

{ IXMLINVOIC416 }

  IXMLINVOIC416 = interface(IXMLNode)
    ['{75066F94-C8C7-4453-93DD-B79317CDFD83}']
    { Property Accessors }
    function Get_SoftwareManufacturer: String;
    function Get_SoftwareName: String;
    function Get_SoftwareVersion: String;
    function Get_Invoice: IXMLInvoice;
    function Get_Head: IXMLHead;
    function Get_Rows: IXMLRows;
    procedure Set_SoftwareManufacturer(Value: String);
    procedure Set_SoftwareName(Value: String);
    procedure Set_SoftwareVersion(Value: String);
    { Methods & Properties }
    property SoftwareManufacturer: String read Get_SoftwareManufacturer write Set_SoftwareManufacturer;
    property SoftwareName: String read Get_SoftwareName write Set_SoftwareName;
    property SoftwareVersion: String read Get_SoftwareVersion write Set_SoftwareVersion;
    property Invoice: IXMLInvoice read Get_Invoice;
    property Head: IXMLHead read Get_Head;
    property Rows: IXMLRows read Get_Rows;
  end;

{ IXMLInvoice }

  IXMLInvoice = interface(IXMLNode)
    ['{9491DFBB-BA31-4933-96DA-5531C001ADF2}']
    { Property Accessors }
    function Get_InvoiceNumber: String;
    function Get_InvoiceType: Integer;
    procedure Set_InvoiceNumber(Value: String);
    procedure Set_InvoiceType(Value: Integer);
    { Methods & Properties }
    property InvoiceNumber: String read Get_InvoiceNumber write Set_InvoiceNumber;
    property InvoiceType: Integer read Get_InvoiceType write Set_InvoiceType;
  end;

{ IXMLHead }

  IXMLHead = interface(IXMLNode)
    ['{127B0498-9C1F-4B32-B27A-D59D9F00C845}']
    { Property Accessors }
    function Get_SellersOrderNumber: String;
    function Get_OrderDate: String;
    function Get_BuyersOrderNumber: String;
    function Get_DebitInvoiceNumber: String;
    function Get_InvoiceDate: String;
    function Get_LanguageNameCode: String;
    function Get_Buyer: IXMLBuyer;
    function Get_Seller: IXMLSeller;
    function Get_InvoiceCurrency: String;
    function Get_PaymentDueDate: String;
    function Get_CurrencyExchangeRate: String;
    function Get_RateOfExchangeDate: String;
    function Get_EuVatText: String;
    function Get_GodsLabelLine1: String;
    function Get_GodsLabelLine2: String;
    function Get_HomeCurrency: String;
    function Get_TermsOfPayment: String;
    function Get_TermsOfPaymentNoOfDays: Integer;
    function Get_BankName: String;
    function Get_AccountNumber: String;
    function Get_SwiftAddress: String;
    function Get_BankGiroNumber: String;
    function Get_PlusGiroNumber: String;
    function Get_Factoring: IXMLFactoring;
    function Get_AlloyCost: String;
    function Get_FreightCost: String;
    function Get_PackingCost: String;
    function Get_InsuranceCost: String;
    function Get_NetAmountInInvoiceCurrency: String;
    function Get_InvoicingCharge: String;
    function Get_VatAmountInInvoiceCurrency: String;
    function Get_Equalization: String;
    function Get_PayableAmountInInvoiceCurrency: String;
    procedure Set_SellersOrderNumber(Value: String);
    procedure Set_OrderDate(Value: String);
    procedure Set_BuyersOrderNumber(Value: String);
    procedure Set_DebitInvoiceNumber(Value: String);
    procedure Set_InvoiceDate(Value: String);
    procedure Set_LanguageNameCode(Value: String);
    procedure Set_InvoiceCurrency(Value: String);
    procedure Set_PaymentDueDate(Value: String);
    procedure Set_CurrencyExchangeRate(Value: String);
    procedure Set_RateOfExchangeDate(Value: String);
    procedure Set_EuVatText(Value: String);
    procedure Set_GodsLabelLine1(Value: String);
    procedure Set_GodsLabelLine2(Value: String);
    procedure Set_HomeCurrency(Value: String);
    procedure Set_TermsOfPayment(Value: String);
    procedure Set_TermsOfPaymentNoOfDays(Value: Integer);
    procedure Set_BankName(Value: String);
    procedure Set_AccountNumber(Value: String);
    procedure Set_SwiftAddress(Value: String);
    procedure Set_BankGiroNumber(Value: String);
    procedure Set_PlusGiroNumber(Value: String);
    procedure Set_AlloyCost(Value: String);
    procedure Set_FreightCost(Value: String);
    procedure Set_PackingCost(Value: String);
    procedure Set_InsuranceCost(Value: String);
    procedure Set_NetAmountInInvoiceCurrency(Value: String);
    procedure Set_InvoicingCharge(Value: String);
    procedure Set_VatAmountInInvoiceCurrency(Value: String);
    procedure Set_Equalization(Value: String);
    procedure Set_PayableAmountInInvoiceCurrency(Value: String);
    { Methods & Properties }
    property SellersOrderNumber: String read Get_SellersOrderNumber write Set_SellersOrderNumber;
    property OrderDate: String read Get_OrderDate write Set_OrderDate;
    property BuyersOrderNumber: String read Get_BuyersOrderNumber write Set_BuyersOrderNumber;
    property DebitInvoiceNumber: String read Get_DebitInvoiceNumber write Set_DebitInvoiceNumber;
    property InvoiceDate: String read Get_InvoiceDate write Set_InvoiceDate;
    property LanguageNameCode: String read Get_LanguageNameCode write Set_LanguageNameCode;
    property Buyer: IXMLBuyer read Get_Buyer;
    property Seller: IXMLSeller read Get_Seller;
    property InvoiceCurrency: String read Get_InvoiceCurrency write Set_InvoiceCurrency;
    property PaymentDueDate: String read Get_PaymentDueDate write Set_PaymentDueDate;
    property CurrencyExchangeRate: String read Get_CurrencyExchangeRate write Set_CurrencyExchangeRate;
    property RateOfExchangeDate: String read Get_RateOfExchangeDate write Set_RateOfExchangeDate;
    property EuVatText: String read Get_EuVatText write Set_EuVatText;
    property GodsLabelLine1: String read Get_GodsLabelLine1 write Set_GodsLabelLine1;
    property GodsLabelLine2: String read Get_GodsLabelLine2 write Set_GodsLabelLine2;
    property HomeCurrency: String read Get_HomeCurrency write Set_HomeCurrency;
    property TermsOfPayment: String read Get_TermsOfPayment write Set_TermsOfPayment;
    property TermsOfPaymentNoOfDays: Integer read Get_TermsOfPaymentNoOfDays write Set_TermsOfPaymentNoOfDays;
    property BankName: String read Get_BankName write Set_BankName;
    property AccountNumber: String read Get_AccountNumber write Set_AccountNumber;
    property SwiftAddress: String read Get_SwiftAddress write Set_SwiftAddress;
    property BankGiroNumber: String read Get_BankGiroNumber write Set_BankGiroNumber;
    property PlusGiroNumber: String read Get_PlusGiroNumber write Set_PlusGiroNumber;
    property Factoring: IXMLFactoring read Get_Factoring;
    property AlloyCost: String read Get_AlloyCost write Set_AlloyCost;
    property FreightCost: String read Get_FreightCost write Set_FreightCost;
    property PackingCost: String read Get_PackingCost write Set_PackingCost;
    property InsuranceCost: String read Get_InsuranceCost write Set_InsuranceCost;
    property NetAmountInInvoiceCurrency: String read Get_NetAmountInInvoiceCurrency write Set_NetAmountInInvoiceCurrency;
    property InvoicingCharge: String read Get_InvoicingCharge write Set_InvoicingCharge;
    property VatAmountInInvoiceCurrency: String read Get_VatAmountInInvoiceCurrency write Set_VatAmountInInvoiceCurrency;
    property Equalization: String read Get_Equalization write Set_Equalization;
    property PayableAmountInInvoiceCurrency: String read Get_PayableAmountInInvoiceCurrency write Set_PayableAmountInInvoiceCurrency;
  end;

{ IXMLBuyer }

  IXMLBuyer = interface(IXMLNode)
    ['{A4C99DD9-209C-4133-B519-D75A65E10979}']
    { Property Accessors }
    function Get_BuyerCode: String;
    function Get_BuyerName: String;
    function Get_BuyerVATRegistrationNumber: String;
    function Get_BuyerReference: String;
    function Get_BuyerReferencePhone: String;
    function Get_BuyerReferenceFax: String;
    function Get_BuyerReferenceEmail: String;
    function Get_InvoiceAddress: IXMLInvoiceAddress;
    function Get_DeliveryAddress: IXMLDeliveryAddress;
    procedure Set_BuyerCode(Value: String);
    procedure Set_BuyerName(Value: String);
    procedure Set_BuyerVATRegistrationNumber(Value: String);
    procedure Set_BuyerReference(Value: String);
    procedure Set_BuyerReferencePhone(Value: String);
    procedure Set_BuyerReferenceFax(Value: String);
    procedure Set_BuyerReferenceEmail(Value: String);
    { Methods & Properties }
    property BuyerCode: String read Get_BuyerCode write Set_BuyerCode;
    property BuyerName: String read Get_BuyerName write Set_BuyerName;
    property BuyerVATRegistrationNumber: String read Get_BuyerVATRegistrationNumber write Set_BuyerVATRegistrationNumber;
    property BuyerReference: String read Get_BuyerReference write Set_BuyerReference;
    property BuyerReferencePhone: String read Get_BuyerReferencePhone write Set_BuyerReferencePhone;
    property BuyerReferenceFax: String read Get_BuyerReferenceFax write Set_BuyerReferenceFax;
    property BuyerReferenceEmail: String read Get_BuyerReferenceEmail write Set_BuyerReferenceEmail;
    property InvoiceAddress: IXMLInvoiceAddress read Get_InvoiceAddress;
    property DeliveryAddress: IXMLDeliveryAddress read Get_DeliveryAddress;
  end;

{ IXMLInvoiceAddress }

  IXMLInvoiceAddress = interface(IXMLNode)
    ['{CA08E707-9AED-4FC3-9922-93521F4D7D0B}']
    { Property Accessors }
    function Get_InvoiceAddressName: String;
    function Get_InvoiceAddressStreetBox1: String;
    function Get_InvoiceAddressStreetBox2: String;
    function Get_InvoiceAddressZipCity1: String;
    function Get_InvoiceAddressZipCity2: String;
    function Get_InvoiceAddressCountry: String;
    procedure Set_InvoiceAddressName(Value: String);
    procedure Set_InvoiceAddressStreetBox1(Value: String);
    procedure Set_InvoiceAddressStreetBox2(Value: String);
    procedure Set_InvoiceAddressZipCity1(Value: String);
    procedure Set_InvoiceAddressZipCity2(Value: String);
    procedure Set_InvoiceAddressCountry(Value: String);
    { Methods & Properties }
    property InvoiceAddressName: String read Get_InvoiceAddressName write Set_InvoiceAddressName;
    property InvoiceAddressStreetBox1: String read Get_InvoiceAddressStreetBox1 write Set_InvoiceAddressStreetBox1;
    property InvoiceAddressStreetBox2: String read Get_InvoiceAddressStreetBox2 write Set_InvoiceAddressStreetBox2;
    property InvoiceAddressZipCity1: String read Get_InvoiceAddressZipCity1 write Set_InvoiceAddressZipCity1;
    property InvoiceAddressZipCity2: String read Get_InvoiceAddressZipCity2 write Set_InvoiceAddressZipCity2;
    property InvoiceAddressCountry: String read Get_InvoiceAddressCountry write Set_InvoiceAddressCountry;
  end;

{ IXMLDeliveryAddress }

  IXMLDeliveryAddress = interface(IXMLNode)
    ['{E0FBA149-71A5-4B20-9EF7-C8B96B375EC3}']
    { Property Accessors }
    function Get_DeliveryAddressName: String;
    function Get_DeliveryAddressStreetBox1: String;
    function Get_DeliveryAddressStreetBox2: String;
    function Get_DeliveryAddressZipCity1: String;
    function Get_DeliveryAddressZipCity2: String;
    function Get_DeliveryAddressCountry: String;
    procedure Set_DeliveryAddressName(Value: String);
    procedure Set_DeliveryAddressStreetBox1(Value: String);
    procedure Set_DeliveryAddressStreetBox2(Value: String);
    procedure Set_DeliveryAddressZipCity1(Value: String);
    procedure Set_DeliveryAddressZipCity2(Value: String);
    procedure Set_DeliveryAddressCountry(Value: String);
    { Methods & Properties }
    property DeliveryAddressName: String read Get_DeliveryAddressName write Set_DeliveryAddressName;
    property DeliveryAddressStreetBox1: String read Get_DeliveryAddressStreetBox1 write Set_DeliveryAddressStreetBox1;
    property DeliveryAddressStreetBox2: String read Get_DeliveryAddressStreetBox2 write Set_DeliveryAddressStreetBox2;
    property DeliveryAddressZipCity1: String read Get_DeliveryAddressZipCity1 write Set_DeliveryAddressZipCity1;
    property DeliveryAddressZipCity2: String read Get_DeliveryAddressZipCity2 write Set_DeliveryAddressZipCity2;
    property DeliveryAddressCountry: String read Get_DeliveryAddressCountry write Set_DeliveryAddressCountry;
  end;

{ IXMLSeller }

  IXMLSeller = interface(IXMLNode)
    ['{723F1856-68DB-4278-A18D-947393F409FF}']
    { Property Accessors }
    function Get_SellerSuplierCode: String;
    function Get_SellerName: String;
    function Get_SellerReference: String;
    function Get_SellerReferencePhone: String;
    function Get_SellerReferenceFax: String;
    function Get_SellerReferenceEmail: String;
    function Get_SellerOrigin: String;
    function Get_SellerWeb: String;
    function Get_SellerPhone: String;
    function Get_SellerFax: String;
    function Get_SellerRegistrationNumber: String;
    function Get_SellerVatRegistrationNumber: String;
    function Get_PostalAddress: IXMLPostalAddress;
    function Get_VisitingAddress: IXMLVisitingAddress;
    procedure Set_SellerSuplierCode(Value: String);
    procedure Set_SellerName(Value: String);
    procedure Set_SellerReference(Value: String);
    procedure Set_SellerReferencePhone(Value: String);
    procedure Set_SellerReferenceFax(Value: String);
    procedure Set_SellerReferenceEmail(Value: String);
    procedure Set_SellerOrigin(Value: String);
    procedure Set_SellerWeb(Value: String);
    procedure Set_SellerPhone(Value: String);
    procedure Set_SellerFax(Value: String);
    procedure Set_SellerRegistrationNumber(Value: String);
    procedure Set_SellerVatRegistrationNumber(Value: String);
    { Methods & Properties }
    property SellerSuplierCode: String read Get_SellerSuplierCode write Set_SellerSuplierCode;
    property SellerName: String read Get_SellerName write Set_SellerName;
    property SellerReference: String read Get_SellerReference write Set_SellerReference;
    property SellerReferencePhone: String read Get_SellerReferencePhone write Set_SellerReferencePhone;
    property SellerReferenceFax: String read Get_SellerReferenceFax write Set_SellerReferenceFax;
    property SellerReferenceEmail: String read Get_SellerReferenceEmail write Set_SellerReferenceEmail;
    property SellerOrigin: String read Get_SellerOrigin write Set_SellerOrigin;
    property SellerWeb: String read Get_SellerWeb write Set_SellerWeb;
    property SellerPhone: String read Get_SellerPhone write Set_SellerPhone;
    property SellerFax: String read Get_SellerFax write Set_SellerFax;
    property SellerRegistrationNumber: String read Get_SellerRegistrationNumber write Set_SellerRegistrationNumber;
    property SellerVatRegistrationNumber: String read Get_SellerVatRegistrationNumber write Set_SellerVatRegistrationNumber;
    property PostalAddress: IXMLPostalAddress read Get_PostalAddress;
    property VisitingAddress: IXMLVisitingAddress read Get_VisitingAddress;
  end;

{ IXMLPostalAddress }

  IXMLPostalAddress = interface(IXMLNode)
    ['{BAD81FAF-7B30-46CC-B546-592350F8CEFA}']
    { Property Accessors }
    function Get_PostalAddressStreetBox1: String;
    function Get_PostalAddressStreetBox2: String;
    function Get_PostalAddressZipCity1: String;
    function Get_PostalAddressZipCity2: String;
    function Get_PostalAddressCountry: String;
    procedure Set_PostalAddressStreetBox1(Value: String);
    procedure Set_PostalAddressStreetBox2(Value: String);
    procedure Set_PostalAddressZipCity1(Value: String);
    procedure Set_PostalAddressZipCity2(Value: String);
    procedure Set_PostalAddressCountry(Value: String);
    { Methods & Properties }
    property PostalAddressStreetBox1: String read Get_PostalAddressStreetBox1 write Set_PostalAddressStreetBox1;
    property PostalAddressStreetBox2: String read Get_PostalAddressStreetBox2 write Set_PostalAddressStreetBox2;
    property PostalAddressZipCity1: String read Get_PostalAddressZipCity1 write Set_PostalAddressZipCity1;
    property PostalAddressZipCity2: String read Get_PostalAddressZipCity2 write Set_PostalAddressZipCity2;
    property PostalAddressCountry: String read Get_PostalAddressCountry write Set_PostalAddressCountry;
  end;

{ IXMLVisitingAddress }

  IXMLVisitingAddress = interface(IXMLNode)
    ['{F6AEA6EE-DF6A-410F-A86A-AD7469354DE6}']
    { Property Accessors }
    function Get_VisitingAddressStreetBox1: String;
    function Get_VisitingAddressStreetBox2: String;
    function Get_VisitingAddressZipCity1: String;
    function Get_VisitingAddressZipCity2: String;
    function Get_VisitingAddressCountry: String;
    procedure Set_VisitingAddressStreetBox1(Value: String);
    procedure Set_VisitingAddressStreetBox2(Value: String);
    procedure Set_VisitingAddressZipCity1(Value: String);
    procedure Set_VisitingAddressZipCity2(Value: String);
    procedure Set_VisitingAddressCountry(Value: String);
    { Methods & Properties }
    property VisitingAddressStreetBox1: String read Get_VisitingAddressStreetBox1 write Set_VisitingAddressStreetBox1;
    property VisitingAddressStreetBox2: String read Get_VisitingAddressStreetBox2 write Set_VisitingAddressStreetBox2;
    property VisitingAddressZipCity1: String read Get_VisitingAddressZipCity1 write Set_VisitingAddressZipCity1;
    property VisitingAddressZipCity2: String read Get_VisitingAddressZipCity2 write Set_VisitingAddressZipCity2;
    property VisitingAddressCountry: String read Get_VisitingAddressCountry write Set_VisitingAddressCountry;
  end;

{ IXMLFactoring }

  IXMLFactoring = interface(IXMLNode)
    ['{A8B2DDCE-D489-49A6-943F-12993240CEC0}']
    { Property Accessors }
    function Get_FactoringSetting: Integer;
    function Get_FactoringBankName: String;
    function Get_FactoringAccountNumber: String;
    function Get_FactoringSwiftAddress: String;
    function Get_FactoringBankGiroNumber: String;
    function Get_FactoringPlusGiroNumber: String;
    procedure Set_FactoringSetting(Value: Integer);
    procedure Set_FactoringBankName(Value: String);
    procedure Set_FactoringAccountNumber(Value: String);
    procedure Set_FactoringSwiftAddress(Value: String);
    procedure Set_FactoringBankGiroNumber(Value: String);
    procedure Set_FactoringPlusGiroNumber(Value: String);
    { Methods & Properties }
    property FactoringSetting: Integer read Get_FactoringSetting write Set_FactoringSetting;
    property FactoringBankName: String read Get_FactoringBankName write Set_FactoringBankName;
    property FactoringAccountNumber: String read Get_FactoringAccountNumber write Set_FactoringAccountNumber;
    property FactoringSwiftAddress: String read Get_FactoringSwiftAddress write Set_FactoringSwiftAddress;
    property FactoringBankGiroNumber: String read Get_FactoringBankGiroNumber write Set_FactoringBankGiroNumber;
    property FactoringPlusGiroNumber: String read Get_FactoringPlusGiroNumber write Set_FactoringPlusGiroNumber;
  end;

{ IXMLRows }

  IXMLRows = interface(IXMLNodeCollection)
    ['{C0CAE775-950A-42C7-AAF7-15EFB963B47C}']
    { Property Accessors }
    function Get_Row(Index: Integer): IXMLRow;
    { Methods & Properties }
    function Add: IXMLRow;
    function Insert(const Index: Integer): IXMLRow;
    property Row[Index: Integer]: IXMLRow read Get_Row; default;
  end;

{ IXMLRow }

  IXMLRow = interface(IXMLNode)
    ['{113962BF-165F-48DF-9517-2ECEFFC4CE72}']
    { Property Accessors }
    function Get_RowNumber: Integer;
    function Get_RowType: Integer;
    function Get_RowPosition: Integer;
    function Get_CostType: Integer;
    function Get_BuyersPartNumber: String;
    function Get_SellersPartNumber: String;
    function Get_PartDescription: String;
    function Get_DeliveryDate: String;
    function Get_Quantity: String;
    function Get_Unit_: String;
    function Get_Each: Integer;
    function Get_Discount: String;
    function Get_Price: String;
    function Get_RowSum: String;
    function Get_BuyersOrderNumber: String;
    function Get_SellersOrderNumber: String;
    function Get_CountryOfOriginCode: String;
    procedure Set_RowNumber(Value: Integer);
    procedure Set_RowType(Value: Integer);
    procedure Set_RowPosition(Value: Integer);
    procedure Set_CostType(Value: Integer);
    procedure Set_BuyersPartNumber(Value: String);
    procedure Set_SellersPartNumber(Value: String);
    procedure Set_PartDescription(Value: String);
    procedure Set_DeliveryDate(Value: String);
    procedure Set_Quantity(Value: String);
    procedure Set_Unit_(Value: String);
    procedure Set_Each(Value: Integer);
    procedure Set_Discount(Value: String);
    procedure Set_Price(Value: String);
    procedure Set_RowSum(Value: String);
    procedure Set_BuyersOrderNumber(Value: String);
    procedure Set_SellersOrderNumber(Value: String);
    procedure Set_CountryOfOriginCode(Value: String);
    { Methods & Properties }
    property RowNumber: Integer read Get_RowNumber write Set_RowNumber;
    property RowType: Integer read Get_RowType write Set_RowType;
    property RowPosition: Integer read Get_RowPosition write Set_RowPosition;
    property CostType: Integer read Get_CostType write Set_CostType;
    property BuyersPartNumber: String read Get_BuyersPartNumber write Set_BuyersPartNumber;
    property SellersPartNumber: String read Get_SellersPartNumber write Set_SellersPartNumber;
    property PartDescription: String read Get_PartDescription write Set_PartDescription;
    property DeliveryDate: String read Get_DeliveryDate write Set_DeliveryDate;
    property Quantity: String read Get_Quantity write Set_Quantity;
    property Unit_: String read Get_Unit_ write Set_Unit_;
    property Each: Integer read Get_Each write Set_Each;
    property Discount: String read Get_Discount write Set_Discount;
    property Price: String read Get_Price write Set_Price;
    property RowSum: String read Get_RowSum write Set_RowSum;
    property BuyersOrderNumber: String read Get_BuyersOrderNumber write Set_BuyersOrderNumber;
    property SellersOrderNumber: String read Get_SellersOrderNumber write Set_SellersOrderNumber;
    property CountryOfOriginCode: String read Get_CountryOfOriginCode write Set_CountryOfOriginCode;
  end;

{ Forward Decls }

  TXMLINVOIC416 = class;
  TXMLInvoice = class;
  TXMLHead = class;
  TXMLBuyer = class;
  TXMLInvoiceAddress = class;
  TXMLDeliveryAddress = class;
  TXMLSeller = class;
  TXMLPostalAddress = class;
  TXMLVisitingAddress = class;
  TXMLFactoring = class;
  TXMLRows = class;
  TXMLRow = class;

{ TXMLINVOIC416 }

  TXMLINVOIC416 = class(TXMLNode, IXMLINVOIC416)
  protected
    { IXMLINVOIC416 }
    function Get_SoftwareManufacturer: String;
    function Get_SoftwareName: String;
    function Get_SoftwareVersion: String;
    function Get_Invoice: IXMLInvoice;
    function Get_Head: IXMLHead;
    function Get_Rows: IXMLRows;
    procedure Set_SoftwareManufacturer(Value: String);
    procedure Set_SoftwareName(Value: String);
    procedure Set_SoftwareVersion(Value: String);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInvoice }

  TXMLInvoice = class(TXMLNode, IXMLInvoice)
  protected
    { IXMLInvoice }
    function Get_InvoiceNumber: String;
    function Get_InvoiceType: Integer;
    procedure Set_InvoiceNumber(Value: String);
    procedure Set_InvoiceType(Value: Integer);
  end;

{ TXMLHead }

  TXMLHead = class(TXMLNode, IXMLHead)
  protected
    { IXMLHead }
    function Get_SellersOrderNumber: String;
    function Get_OrderDate: String;
    function Get_BuyersOrderNumber: String;
    function Get_DebitInvoiceNumber: String;
    function Get_InvoiceDate: String;
    function Get_LanguageNameCode: String;
    function Get_Buyer: IXMLBuyer;
    function Get_Seller: IXMLSeller;
    function Get_InvoiceCurrency: String;
    function Get_PaymentDueDate: String;
    function Get_CurrencyExchangeRate: String;
    function Get_RateOfExchangeDate: String;
    function Get_EuVatText: String;
    function Get_GodsLabelLine1: String;
    function Get_GodsLabelLine2: String;
    function Get_HomeCurrency: String;
    function Get_TermsOfPayment: String;
    function Get_TermsOfPaymentNoOfDays: Integer;
    function Get_BankName: String;
    function Get_AccountNumber: String;
    function Get_SwiftAddress: String;
    function Get_BankGiroNumber: String;
    function Get_PlusGiroNumber: String;
    function Get_Factoring: IXMLFactoring;
    function Get_AlloyCost: String;
    function Get_FreightCost: String;
    function Get_PackingCost: String;
    function Get_InsuranceCost: String;
    function Get_NetAmountInInvoiceCurrency: String;
    function Get_InvoicingCharge: String;
    function Get_VatAmountInInvoiceCurrency: String;
    function Get_Equalization: String;
    function Get_PayableAmountInInvoiceCurrency: String;
    procedure Set_SellersOrderNumber(Value: String);
    procedure Set_OrderDate(Value: String);
    procedure Set_BuyersOrderNumber(Value: String);
    procedure Set_DebitInvoiceNumber(Value: String);
    procedure Set_InvoiceDate(Value: String);
    procedure Set_LanguageNameCode(Value: String);
    procedure Set_InvoiceCurrency(Value: String);
    procedure Set_PaymentDueDate(Value: String);
    procedure Set_CurrencyExchangeRate(Value: String);
    procedure Set_RateOfExchangeDate(Value: String);
    procedure Set_EuVatText(Value: String);
    procedure Set_GodsLabelLine1(Value: String);
    procedure Set_GodsLabelLine2(Value: String);
    procedure Set_HomeCurrency(Value: String);
    procedure Set_TermsOfPayment(Value: String);
    procedure Set_TermsOfPaymentNoOfDays(Value: Integer);
    procedure Set_BankName(Value: String);
    procedure Set_AccountNumber(Value: String);
    procedure Set_SwiftAddress(Value: String);
    procedure Set_BankGiroNumber(Value: String);
    procedure Set_PlusGiroNumber(Value: String);
    procedure Set_AlloyCost(Value: String);
    procedure Set_FreightCost(Value: String);
    procedure Set_PackingCost(Value: String);
    procedure Set_InsuranceCost(Value: String);
    procedure Set_NetAmountInInvoiceCurrency(Value: String);
    procedure Set_InvoicingCharge(Value: String);
    procedure Set_VatAmountInInvoiceCurrency(Value: String);
    procedure Set_Equalization(Value: String);
    procedure Set_PayableAmountInInvoiceCurrency(Value: String);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBuyer }

  TXMLBuyer = class(TXMLNode, IXMLBuyer)
  protected
    { IXMLBuyer }
    function Get_BuyerCode: String;
    function Get_BuyerName: String;
    function Get_BuyerVATRegistrationNumber: String;
    function Get_BuyerReference: String;
    function Get_BuyerReferencePhone: String;
    function Get_BuyerReferenceFax: String;
    function Get_BuyerReferenceEmail: String;
    function Get_InvoiceAddress: IXMLInvoiceAddress;
    function Get_DeliveryAddress: IXMLDeliveryAddress;
    procedure Set_BuyerCode(Value: String);
    procedure Set_BuyerName(Value: String);
    procedure Set_BuyerVATRegistrationNumber(Value: String);
    procedure Set_BuyerReference(Value: String);
    procedure Set_BuyerReferencePhone(Value: String);
    procedure Set_BuyerReferenceFax(Value: String);
    procedure Set_BuyerReferenceEmail(Value: String);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInvoiceAddress }

  TXMLInvoiceAddress = class(TXMLNode, IXMLInvoiceAddress)
  protected
    { IXMLInvoiceAddress }
    function Get_InvoiceAddressName: String;
    function Get_InvoiceAddressStreetBox1: String;
    function Get_InvoiceAddressStreetBox2: String;
    function Get_InvoiceAddressZipCity1: String;
    function Get_InvoiceAddressZipCity2: String;
    function Get_InvoiceAddressCountry: String;
    procedure Set_InvoiceAddressName(Value: String);
    procedure Set_InvoiceAddressStreetBox1(Value: String);
    procedure Set_InvoiceAddressStreetBox2(Value: String);
    procedure Set_InvoiceAddressZipCity1(Value: String);
    procedure Set_InvoiceAddressZipCity2(Value: String);
    procedure Set_InvoiceAddressCountry(Value: String);
  end;

{ TXMLDeliveryAddress }

  TXMLDeliveryAddress = class(TXMLNode, IXMLDeliveryAddress)
  protected
    { IXMLDeliveryAddress }
    function Get_DeliveryAddressName: String;
    function Get_DeliveryAddressStreetBox1: String;
    function Get_DeliveryAddressStreetBox2: String;
    function Get_DeliveryAddressZipCity1: String;
    function Get_DeliveryAddressZipCity2: String;
    function Get_DeliveryAddressCountry: String;
    procedure Set_DeliveryAddressName(Value: String);
    procedure Set_DeliveryAddressStreetBox1(Value: String);
    procedure Set_DeliveryAddressStreetBox2(Value: String);
    procedure Set_DeliveryAddressZipCity1(Value: String);
    procedure Set_DeliveryAddressZipCity2(Value: String);
    procedure Set_DeliveryAddressCountry(Value: String);
  end;

{ TXMLSeller }

  TXMLSeller = class(TXMLNode, IXMLSeller)
  protected
    { IXMLSeller }
    function Get_SellerSuplierCode: String;
    function Get_SellerName: String;
    function Get_SellerReference: String;
    function Get_SellerReferencePhone: String;
    function Get_SellerReferenceFax: String;
    function Get_SellerReferenceEmail: String;
    function Get_SellerOrigin: String;
    function Get_SellerWeb: String;
    function Get_SellerPhone: String;
    function Get_SellerFax: String;
    function Get_SellerRegistrationNumber: String;
    function Get_SellerVatRegistrationNumber: String;
    function Get_PostalAddress: IXMLPostalAddress;
    function Get_VisitingAddress: IXMLVisitingAddress;
    procedure Set_SellerSuplierCode(Value: String);
    procedure Set_SellerName(Value: String);
    procedure Set_SellerReference(Value: String);
    procedure Set_SellerReferencePhone(Value: String);
    procedure Set_SellerReferenceFax(Value: String);
    procedure Set_SellerReferenceEmail(Value: String);
    procedure Set_SellerOrigin(Value: String);
    procedure Set_SellerWeb(Value: String);
    procedure Set_SellerPhone(Value: String);
    procedure Set_SellerFax(Value: String);
    procedure Set_SellerRegistrationNumber(Value: String);
    procedure Set_SellerVatRegistrationNumber(Value: String);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPostalAddress }

  TXMLPostalAddress = class(TXMLNode, IXMLPostalAddress)
  protected
    { IXMLPostalAddress }
    function Get_PostalAddressStreetBox1: String;
    function Get_PostalAddressStreetBox2: String;
    function Get_PostalAddressZipCity1: String;
    function Get_PostalAddressZipCity2: String;
    function Get_PostalAddressCountry: String;
    procedure Set_PostalAddressStreetBox1(Value: String);
    procedure Set_PostalAddressStreetBox2(Value: String);
    procedure Set_PostalAddressZipCity1(Value: String);
    procedure Set_PostalAddressZipCity2(Value: String);
    procedure Set_PostalAddressCountry(Value: String);
  end;

{ TXMLVisitingAddress }

  TXMLVisitingAddress = class(TXMLNode, IXMLVisitingAddress)
  protected
    { IXMLVisitingAddress }
    function Get_VisitingAddressStreetBox1: String;
    function Get_VisitingAddressStreetBox2: String;
    function Get_VisitingAddressZipCity1: String;
    function Get_VisitingAddressZipCity2: String;
    function Get_VisitingAddressCountry: String;
    procedure Set_VisitingAddressStreetBox1(Value: String);
    procedure Set_VisitingAddressStreetBox2(Value: String);
    procedure Set_VisitingAddressZipCity1(Value: String);
    procedure Set_VisitingAddressZipCity2(Value: String);
    procedure Set_VisitingAddressCountry(Value: String);
  end;

{ TXMLFactoring }

  TXMLFactoring = class(TXMLNode, IXMLFactoring)
  protected
    { IXMLFactoring }
    function Get_FactoringSetting: Integer;
    function Get_FactoringBankName: String;
    function Get_FactoringAccountNumber: String;
    function Get_FactoringSwiftAddress: String;
    function Get_FactoringBankGiroNumber: String;
    function Get_FactoringPlusGiroNumber: String;
    procedure Set_FactoringSetting(Value: Integer);
    procedure Set_FactoringBankName(Value: String);
    procedure Set_FactoringAccountNumber(Value: String);
    procedure Set_FactoringSwiftAddress(Value: String);
    procedure Set_FactoringBankGiroNumber(Value: String);
    procedure Set_FactoringPlusGiroNumber(Value: String);
  end;

{ TXMLRows }

  TXMLRows = class(TXMLNodeCollection, IXMLRows)
  protected
    { IXMLRows }
    function Get_Row(Index: Integer): IXMLRow;
    function Add: IXMLRow;
    function Insert(const Index: Integer): IXMLRow;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRow }

  TXMLRow = class(TXMLNode, IXMLRow)
  protected
    { IXMLRow }
    function Get_RowNumber: Integer;
    function Get_RowType: Integer;
    function Get_RowPosition: Integer;
    function Get_CostType: Integer;
    function Get_BuyersPartNumber: String;
    function Get_SellersPartNumber: String;
    function Get_PartDescription: String;
    function Get_DeliveryDate: String;
    function Get_Quantity: String;
    function Get_Unit_: String;
    function Get_Each: Integer;
    function Get_Discount: String;
    function Get_Price: String;
    function Get_RowSum: String;
    function Get_BuyersOrderNumber: String;
    function Get_SellersOrderNumber: String;
    function Get_CountryOfOriginCode: String;
    procedure Set_RowNumber(Value: Integer);
    procedure Set_RowType(Value: Integer);
    procedure Set_RowPosition(Value: Integer);
    procedure Set_CostType(Value: Integer);
    procedure Set_BuyersPartNumber(Value: String);
    procedure Set_SellersPartNumber(Value: String);
    procedure Set_PartDescription(Value: String);
    procedure Set_DeliveryDate(Value: String);
    procedure Set_Quantity(Value: String);
    procedure Set_Unit_(Value: String);
    procedure Set_Each(Value: Integer);
    procedure Set_Discount(Value: String);
    procedure Set_Price(Value: String);
    procedure Set_RowSum(Value: String);
    procedure Set_BuyersOrderNumber(Value: String);
    procedure Set_SellersOrderNumber(Value: String);
    procedure Set_CountryOfOriginCode(Value: String);
  end;

{ Global Functions }

function GetINVOIC416(Doc: IXMLDocument): IXMLINVOIC416;
function LoadINVOIC416(const FileName: string): IXMLINVOIC416;
function NewINVOIC416: IXMLINVOIC416;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetINVOIC416(Doc: IXMLDocument): IXMLINVOIC416;
begin
  Result := Doc.GetDocBinding('INVOIC416', TXMLINVOIC416, TargetNamespace) as IXMLINVOIC416;
end;

function LoadINVOIC416(const FileName: string): IXMLINVOIC416;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('INVOIC416', TXMLINVOIC416, TargetNamespace) as IXMLINVOIC416;
end;

function NewINVOIC416: IXMLINVOIC416;
begin
  Result := NewXMLDocument.GetDocBinding('INVOIC416', TXMLINVOIC416, TargetNamespace) as IXMLINVOIC416;
end;

{ TXMLINVOIC416 }

procedure TXMLINVOIC416.AfterConstruction;
begin
  RegisterChildNode('Invoice', TXMLInvoice);
  RegisterChildNode('Head', TXMLHead);
  RegisterChildNode('Rows', TXMLRows);
  inherited;
end;

function TXMLINVOIC416.Get_SoftwareManufacturer: String;
begin
  Result := AttributeNodes['SoftwareManufacturer'].NodeValue;
end;

procedure TXMLINVOIC416.Set_SoftwareManufacturer(Value: String);
begin
  SetAttribute('SoftwareManufacturer', Value);
end;

function TXMLINVOIC416.Get_SoftwareName: String;
begin
  Result := AttributeNodes['SoftwareName'].NodeValue;
end;

procedure TXMLINVOIC416.Set_SoftwareName(Value: String);
begin
  SetAttribute('SoftwareName', Value);
end;

function TXMLINVOIC416.Get_SoftwareVersion: String;
begin
  Result := AttributeNodes['SoftwareVersion'].NodeValue;
end;

procedure TXMLINVOIC416.Set_SoftwareVersion(Value: String);
begin
  SetAttribute('SoftwareVersion', Value);
end;

function TXMLINVOIC416.Get_Invoice: IXMLInvoice;
begin
  Result := ChildNodes['Invoice'] as IXMLInvoice;
end;

function TXMLINVOIC416.Get_Head: IXMLHead;
begin
  Result := ChildNodes['Head'] as IXMLHead;
end;

function TXMLINVOIC416.Get_Rows: IXMLRows;
begin
  Result := ChildNodes['Rows'] as IXMLRows;
end;

{ TXMLInvoice }

function TXMLInvoice.Get_InvoiceNumber: String;
begin
  Result := AttributeNodes['InvoiceNumber'].NodeValue;
end;

procedure TXMLInvoice.Set_InvoiceNumber(Value: String);
begin
  SetAttribute('InvoiceNumber', Value);
end;

function TXMLInvoice.Get_InvoiceType: Integer;
begin
  Result := AttributeNodes['InvoiceType'].NodeValue;
end;

procedure TXMLInvoice.Set_InvoiceType(Value: Integer);
begin
  SetAttribute('InvoiceType', Value);
end;

{ TXMLHead }

procedure TXMLHead.AfterConstruction;
begin
  RegisterChildNode('Buyer', TXMLBuyer);
  RegisterChildNode('Seller', TXMLSeller);
  RegisterChildNode('Factoring', TXMLFactoring);
  inherited;
end;

function TXMLHead.Get_SellersOrderNumber: String;
begin
  Result := ChildNodes['SellersOrderNumber'].NodeValue;
end;

procedure TXMLHead.Set_SellersOrderNumber(Value: String);
begin
  ChildNodes['SellersOrderNumber'].NodeValue := Value;
end;

function TXMLHead.Get_OrderDate: String;
begin
  Result := ChildNodes['OrderDate'].NodeValue;
end;

procedure TXMLHead.Set_OrderDate(Value: String);
begin
  ChildNodes['OrderDate'].NodeValue := Value;
end;

function TXMLHead.Get_BuyersOrderNumber: String;
begin
  Result := ChildNodes['BuyersOrderNumber'].NodeValue;
end;

procedure TXMLHead.Set_BuyersOrderNumber(Value: String);
begin
  ChildNodes['BuyersOrderNumber'].NodeValue := Value;
end;

function TXMLHead.Get_DebitInvoiceNumber: String;
begin
  Result := ChildNodes['DebitInvoiceNumber'].NodeValue;
end;

procedure TXMLHead.Set_DebitInvoiceNumber(Value: String);
begin
  ChildNodes['DebitInvoiceNumber'].NodeValue := Value;
end;

function TXMLHead.Get_InvoiceDate: String;
begin
  Result := ChildNodes['InvoiceDate'].NodeValue;
end;

procedure TXMLHead.Set_InvoiceDate(Value: String);
begin
  ChildNodes['InvoiceDate'].NodeValue := Value;
end;

function TXMLHead.Get_LanguageNameCode: String;
begin
  Result := ChildNodes['LanguageNameCode'].NodeValue;
end;

procedure TXMLHead.Set_LanguageNameCode(Value: String);
begin
  ChildNodes['LanguageNameCode'].NodeValue := Value;
end;

function TXMLHead.Get_Buyer: IXMLBuyer;
begin
  Result := ChildNodes['Buyer'] as IXMLBuyer;
end;

function TXMLHead.Get_Seller: IXMLSeller;
begin
  Result := ChildNodes['Seller'] as IXMLSeller;
end;

function TXMLHead.Get_InvoiceCurrency: String;
begin
  Result := ChildNodes['InvoiceCurrency'].NodeValue;
end;

procedure TXMLHead.Set_InvoiceCurrency(Value: String);
begin
  ChildNodes['InvoiceCurrency'].NodeValue := Value;
end;

function TXMLHead.Get_PaymentDueDate: String;
begin
  Result := ChildNodes['PaymentDueDate'].NodeValue;
end;

procedure TXMLHead.Set_PaymentDueDate(Value: String);
begin
  ChildNodes['PaymentDueDate'].NodeValue := Value;
end;

function TXMLHead.Get_CurrencyExchangeRate: String;
begin
  Result := ChildNodes['CurrencyExchangeRate'].NodeValue;
end;

procedure TXMLHead.Set_CurrencyExchangeRate(Value: String);
begin
  ChildNodes['CurrencyExchangeRate'].NodeValue := Value;
end;

function TXMLHead.Get_RateOfExchangeDate: String;
begin
  Result := ChildNodes['RateOfExchangeDate'].NodeValue;
end;

procedure TXMLHead.Set_RateOfExchangeDate(Value: String);
begin
  ChildNodes['RateOfExchangeDate'].NodeValue := Value;
end;

function TXMLHead.Get_EuVatText: String;
begin
  Result := ChildNodes['EuVatText'].NodeValue;
end;

procedure TXMLHead.Set_EuVatText(Value: String);
begin
  ChildNodes['EuVatText'].NodeValue := Value;
end;

function TXMLHead.Get_GodsLabelLine1: String;
begin
  Result := ChildNodes['GodsLabelLine1'].NodeValue;
end;

procedure TXMLHead.Set_GodsLabelLine1(Value: String);
begin
  ChildNodes['GodsLabelLine1'].NodeValue := Value;
end;

function TXMLHead.Get_GodsLabelLine2: String;
begin
  Result := ChildNodes['GodsLabelLine2'].NodeValue;
end;

procedure TXMLHead.Set_GodsLabelLine2(Value: String);
begin
  ChildNodes['GodsLabelLine2'].NodeValue := Value;
end;

function TXMLHead.Get_HomeCurrency: String;
begin
  Result := ChildNodes['HomeCurrency'].NodeValue;
end;

procedure TXMLHead.Set_HomeCurrency(Value: String);
begin
  ChildNodes['HomeCurrency'].NodeValue := Value;
end;

function TXMLHead.Get_TermsOfPayment: String;
begin
  Result := ChildNodes['TermsOfPayment'].NodeValue;
end;

procedure TXMLHead.Set_TermsOfPayment(Value: String);
begin
  ChildNodes['TermsOfPayment'].NodeValue := Value;
end;

function TXMLHead.Get_TermsOfPaymentNoOfDays: Integer;
begin
  Result := ChildNodes['TermsOfPaymentNoOfDays'].NodeValue;
end;

procedure TXMLHead.Set_TermsOfPaymentNoOfDays(Value: Integer);
begin
  ChildNodes['TermsOfPaymentNoOfDays'].NodeValue := Value;
end;

function TXMLHead.Get_BankName: String;
begin
  Result := ChildNodes['BankName'].NodeValue;
end;

procedure TXMLHead.Set_BankName(Value: String);
begin
  ChildNodes['BankName'].NodeValue := Value;
end;

function TXMLHead.Get_AccountNumber: String;
begin
  Result := ChildNodes['AccountNumber'].NodeValue;
end;

procedure TXMLHead.Set_AccountNumber(Value: String);
begin
  ChildNodes['AccountNumber'].NodeValue := Value;
end;

function TXMLHead.Get_SwiftAddress: String;
begin
  Result := ChildNodes['SwiftAddress'].NodeValue;
end;

procedure TXMLHead.Set_SwiftAddress(Value: String);
begin
  ChildNodes['SwiftAddress'].NodeValue := Value;
end;

function TXMLHead.Get_BankGiroNumber: String;
begin
  Result := ChildNodes['BankGiroNumber'].NodeValue;
end;

procedure TXMLHead.Set_BankGiroNumber(Value: String);
begin
  ChildNodes['BankGiroNumber'].NodeValue := Value;
end;

function TXMLHead.Get_PlusGiroNumber: String;
begin
  Result := ChildNodes['PlusGiroNumber'].NodeValue;
end;

procedure TXMLHead.Set_PlusGiroNumber(Value: String);
begin
  ChildNodes['PlusGiroNumber'].NodeValue := Value;
end;

function TXMLHead.Get_Factoring: IXMLFactoring;
begin
  Result := ChildNodes['Factoring'] as IXMLFactoring;
end;

function TXMLHead.Get_AlloyCost: String;
begin
  Result := ChildNodes['AlloyCost'].NodeValue;
end;

procedure TXMLHead.Set_AlloyCost(Value: String);
begin
  ChildNodes['AlloyCost'].NodeValue := Value;
end;

function TXMLHead.Get_FreightCost: String;
begin
  Result := ChildNodes['FreightCost'].NodeValue;
end;

procedure TXMLHead.Set_FreightCost(Value: String);
begin
  ChildNodes['FreightCost'].NodeValue := Value;
end;

function TXMLHead.Get_PackingCost: String;
begin
  Result := ChildNodes['PackingCost'].NodeValue;
end;

procedure TXMLHead.Set_PackingCost(Value: String);
begin
  ChildNodes['PackingCost'].NodeValue := Value;
end;

function TXMLHead.Get_InsuranceCost: String;
begin
  Result := ChildNodes['InsuranceCost'].NodeValue;
end;

procedure TXMLHead.Set_InsuranceCost(Value: String);
begin
  ChildNodes['InsuranceCost'].NodeValue := Value;
end;

function TXMLHead.Get_NetAmountInInvoiceCurrency: String;
begin
  Result := ChildNodes['NetAmountInInvoiceCurrency'].NodeValue;
end;

procedure TXMLHead.Set_NetAmountInInvoiceCurrency(Value: String);
begin
  ChildNodes['NetAmountInInvoiceCurrency'].NodeValue := Value;
end;

function TXMLHead.Get_InvoicingCharge: String;
begin
  Result := ChildNodes['InvoicingCharge'].NodeValue;
end;

procedure TXMLHead.Set_InvoicingCharge(Value: String);
begin
  ChildNodes['InvoicingCharge'].NodeValue := Value;
end;

function TXMLHead.Get_VatAmountInInvoiceCurrency: String;
begin
  Result := ChildNodes['VatAmountInInvoiceCurrency'].NodeValue;
end;

procedure TXMLHead.Set_VatAmountInInvoiceCurrency(Value: String);
begin
  ChildNodes['VatAmountInInvoiceCurrency'].NodeValue := Value;
end;

function TXMLHead.Get_Equalization: String;
begin
  Result := ChildNodes['Equalization'].NodeValue;
end;

procedure TXMLHead.Set_Equalization(Value: String);
begin
  ChildNodes['Equalization'].NodeValue := Value;
end;

function TXMLHead.Get_PayableAmountInInvoiceCurrency: String;
begin
  Result := ChildNodes['PayableAmountInInvoiceCurrency'].NodeValue;
end;

procedure TXMLHead.Set_PayableAmountInInvoiceCurrency(Value: String);
begin
  ChildNodes['PayableAmountInInvoiceCurrency'].NodeValue := Value;
end;

{ TXMLBuyer }

procedure TXMLBuyer.AfterConstruction;
begin
  RegisterChildNode('InvoiceAddress', TXMLInvoiceAddress);
  RegisterChildNode('DeliveryAddress', TXMLDeliveryAddress);
  inherited;
end;

function TXMLBuyer.Get_BuyerCode: String;
begin
  Result := ChildNodes['BuyerCode'].NodeValue;
end;

procedure TXMLBuyer.Set_BuyerCode(Value: String);
begin
  ChildNodes['BuyerCode'].NodeValue := Value;
end;

function TXMLBuyer.Get_BuyerName: String;
begin
  Result := ChildNodes['BuyerName'].NodeValue;
end;

procedure TXMLBuyer.Set_BuyerName(Value: String);
begin
  ChildNodes['BuyerName'].NodeValue := Value;
end;

function TXMLBuyer.Get_BuyerVATRegistrationNumber: String;
begin
  Result := ChildNodes['BuyerVATRegistrationNumber'].NodeValue;
end;

procedure TXMLBuyer.Set_BuyerVATRegistrationNumber(Value: String);
begin
  ChildNodes['BuyerVATRegistrationNumber'].NodeValue := Value;
end;

function TXMLBuyer.Get_BuyerReference: String;
begin
  Result := ChildNodes['BuyerReference'].NodeValue;
end;

procedure TXMLBuyer.Set_BuyerReference(Value: String);
begin
  ChildNodes['BuyerReference'].NodeValue := Value;
end;

function TXMLBuyer.Get_BuyerReferencePhone: String;
begin
  Result := ChildNodes['BuyerReferencePhone'].NodeValue;
end;

procedure TXMLBuyer.Set_BuyerReferencePhone(Value: String);
begin
  ChildNodes['BuyerReferencePhone'].NodeValue := Value;
end;

function TXMLBuyer.Get_BuyerReferenceFax: String;
begin
  Result := ChildNodes['BuyerReferenceFax'].NodeValue;
end;

procedure TXMLBuyer.Set_BuyerReferenceFax(Value: String);
begin
  ChildNodes['BuyerReferenceFax'].NodeValue := Value;
end;

function TXMLBuyer.Get_BuyerReferenceEmail: String;
begin
  Result := ChildNodes['BuyerReferenceEmail'].NodeValue;
end;

procedure TXMLBuyer.Set_BuyerReferenceEmail(Value: String);
begin
  ChildNodes['BuyerReferenceEmail'].NodeValue := Value;
end;

function TXMLBuyer.Get_InvoiceAddress: IXMLInvoiceAddress;
begin
  Result := ChildNodes['InvoiceAddress'] as IXMLInvoiceAddress;
end;

function TXMLBuyer.Get_DeliveryAddress: IXMLDeliveryAddress;
begin
  Result := ChildNodes['DeliveryAddress'] as IXMLDeliveryAddress;
end;

{ TXMLInvoiceAddress }

function TXMLInvoiceAddress.Get_InvoiceAddressName: String;
begin
  Result := ChildNodes['InvoiceAddressName'].NodeValue;
end;

procedure TXMLInvoiceAddress.Set_InvoiceAddressName(Value: String);
begin
  ChildNodes['InvoiceAddressName'].NodeValue := Value;
end;

function TXMLInvoiceAddress.Get_InvoiceAddressStreetBox1: String;
begin
  Result := ChildNodes['InvoiceAddressStreetBox1'].NodeValue;
end;

procedure TXMLInvoiceAddress.Set_InvoiceAddressStreetBox1(Value: String);
begin
  ChildNodes['InvoiceAddressStreetBox1'].NodeValue := Value;
end;

function TXMLInvoiceAddress.Get_InvoiceAddressStreetBox2: String;
begin
  Result := ChildNodes['InvoiceAddressStreetBox2'].NodeValue;
end;

procedure TXMLInvoiceAddress.Set_InvoiceAddressStreetBox2(Value: String);
begin
  ChildNodes['InvoiceAddressStreetBox2'].NodeValue := Value;
end;

function TXMLInvoiceAddress.Get_InvoiceAddressZipCity1: String;
begin
  Result := ChildNodes['InvoiceAddressZipCity1'].NodeValue;
end;

procedure TXMLInvoiceAddress.Set_InvoiceAddressZipCity1(Value: String);
begin
  ChildNodes['InvoiceAddressZipCity1'].NodeValue := Value;
end;

function TXMLInvoiceAddress.Get_InvoiceAddressZipCity2: String;
begin
  Result := ChildNodes['InvoiceAddressZipCity2'].NodeValue;
end;

procedure TXMLInvoiceAddress.Set_InvoiceAddressZipCity2(Value: String);
begin
  ChildNodes['InvoiceAddressZipCity2'].NodeValue := Value;
end;

function TXMLInvoiceAddress.Get_InvoiceAddressCountry: String;
begin
  Result := ChildNodes['InvoiceAddressCountry'].NodeValue;
end;

procedure TXMLInvoiceAddress.Set_InvoiceAddressCountry(Value: String);
begin
  ChildNodes['InvoiceAddressCountry'].NodeValue := Value;
end;

{ TXMLDeliveryAddress }

function TXMLDeliveryAddress.Get_DeliveryAddressName: String;
begin
  Result := ChildNodes['DeliveryAddressName'].NodeValue;
end;

procedure TXMLDeliveryAddress.Set_DeliveryAddressName(Value: String);
begin
  ChildNodes['DeliveryAddressName'].NodeValue := Value;
end;

function TXMLDeliveryAddress.Get_DeliveryAddressStreetBox1: String;
begin
  Result := ChildNodes['DeliveryAddressStreetBox1'].NodeValue;
end;

procedure TXMLDeliveryAddress.Set_DeliveryAddressStreetBox1(Value: String);
begin
  ChildNodes['DeliveryAddressStreetBox1'].NodeValue := Value;
end;

function TXMLDeliveryAddress.Get_DeliveryAddressStreetBox2: String;
begin
  Result := ChildNodes['DeliveryAddressStreetBox2'].NodeValue;
end;

procedure TXMLDeliveryAddress.Set_DeliveryAddressStreetBox2(Value: String);
begin
  ChildNodes['DeliveryAddressStreetBox2'].NodeValue := Value;
end;

function TXMLDeliveryAddress.Get_DeliveryAddressZipCity1: String;
begin
  Result := ChildNodes['DeliveryAddressZipCity1'].NodeValue;
end;

procedure TXMLDeliveryAddress.Set_DeliveryAddressZipCity1(Value: String);
begin
  ChildNodes['DeliveryAddressZipCity1'].NodeValue := Value;
end;

function TXMLDeliveryAddress.Get_DeliveryAddressZipCity2: String;
begin
  Result := ChildNodes['DeliveryAddressZipCity2'].NodeValue;
end;

procedure TXMLDeliveryAddress.Set_DeliveryAddressZipCity2(Value: String);
begin
  ChildNodes['DeliveryAddressZipCity2'].NodeValue := Value;
end;

function TXMLDeliveryAddress.Get_DeliveryAddressCountry: String;
begin
  Result := ChildNodes['DeliveryAddressCountry'].NodeValue;
end;

procedure TXMLDeliveryAddress.Set_DeliveryAddressCountry(Value: String);
begin
  ChildNodes['DeliveryAddressCountry'].NodeValue := Value;
end;

{ TXMLSeller }

procedure TXMLSeller.AfterConstruction;
begin
  RegisterChildNode('PostalAddress', TXMLPostalAddress);
  RegisterChildNode('VisitingAddress', TXMLVisitingAddress);
  inherited;
end;

function TXMLSeller.Get_SellerSuplierCode: String;
begin
  Result := ChildNodes['SellerSuplierCode'].NodeValue;
end;

procedure TXMLSeller.Set_SellerSuplierCode(Value: String);
begin
  ChildNodes['SellerSuplierCode'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerName: String;
begin
  Result := ChildNodes['SellerName'].NodeValue;
end;

procedure TXMLSeller.Set_SellerName(Value: String);
begin
  ChildNodes['SellerName'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerReference: String;
begin
  Result := ChildNodes['SellerReference'].NodeValue;
end;

procedure TXMLSeller.Set_SellerReference(Value: String);
begin
  ChildNodes['SellerReference'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerReferencePhone: String;
begin
  Result := ChildNodes['SellerReferencePhone'].NodeValue;
end;

procedure TXMLSeller.Set_SellerReferencePhone(Value: String);
begin
  ChildNodes['SellerReferencePhone'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerReferenceFax: String;
begin
  Result := ChildNodes['SellerReferenceFax'].NodeValue;
end;

procedure TXMLSeller.Set_SellerReferenceFax(Value: String);
begin
  ChildNodes['SellerReferenceFax'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerReferenceEmail: String;
begin
  Result := ChildNodes['SellerReferenceEmail'].NodeValue;
end;

procedure TXMLSeller.Set_SellerReferenceEmail(Value: String);
begin
  ChildNodes['SellerReferenceEmail'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerOrigin: String;
begin
  Result := ChildNodes['SellerOrigin'].NodeValue;
end;

procedure TXMLSeller.Set_SellerOrigin(Value: String);
begin
  ChildNodes['SellerOrigin'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerWeb: String;
begin
  Result := ChildNodes['SellerWeb'].NodeValue;
end;

procedure TXMLSeller.Set_SellerWeb(Value: String);
begin
  ChildNodes['SellerWeb'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerPhone: String;
begin
  Result := ChildNodes['SellerPhone'].NodeValue;
end;

procedure TXMLSeller.Set_SellerPhone(Value: String);
begin
  ChildNodes['SellerPhone'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerFax: String;
begin
  Result := ChildNodes['SellerFax'].NodeValue;
end;

procedure TXMLSeller.Set_SellerFax(Value: String);
begin
  ChildNodes['SellerFax'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerRegistrationNumber: String;
begin
  Result := ChildNodes['SellerRegistrationNumber'].NodeValue;
end;

procedure TXMLSeller.Set_SellerRegistrationNumber(Value: String);
begin
  ChildNodes['SellerRegistrationNumber'].NodeValue := Value;
end;

function TXMLSeller.Get_SellerVatRegistrationNumber: String;
begin
  Result := ChildNodes['SellerVatRegistrationNumber'].NodeValue;
end;

procedure TXMLSeller.Set_SellerVatRegistrationNumber(Value: String);
begin
  ChildNodes['SellerVatRegistrationNumber'].NodeValue := Value;
end;

function TXMLSeller.Get_PostalAddress: IXMLPostalAddress;
begin
  Result := ChildNodes['PostalAddress'] as IXMLPostalAddress;
end;

function TXMLSeller.Get_VisitingAddress: IXMLVisitingAddress;
begin
  Result := ChildNodes['VisitingAddress'] as IXMLVisitingAddress;
end;

{ TXMLPostalAddress }

function TXMLPostalAddress.Get_PostalAddressStreetBox1: String;
begin
  Result := ChildNodes['PostalAddressStreetBox1'].NodeValue;
end;

procedure TXMLPostalAddress.Set_PostalAddressStreetBox1(Value: String);
begin
  ChildNodes['PostalAddressStreetBox1'].NodeValue := Value;
end;

function TXMLPostalAddress.Get_PostalAddressStreetBox2: String;
begin
  Result := ChildNodes['PostalAddressStreetBox2'].NodeValue;
end;

procedure TXMLPostalAddress.Set_PostalAddressStreetBox2(Value: String);
begin
  ChildNodes['PostalAddressStreetBox2'].NodeValue := Value;
end;

function TXMLPostalAddress.Get_PostalAddressZipCity1: String;
begin
  Result := ChildNodes['PostalAddressZipCity1'].NodeValue;
end;

procedure TXMLPostalAddress.Set_PostalAddressZipCity1(Value: String);
begin
  ChildNodes['PostalAddressZipCity1'].NodeValue := Value;
end;

function TXMLPostalAddress.Get_PostalAddressZipCity2: String;
begin
  Result := ChildNodes['PostalAddressZipCity2'].NodeValue;
end;

procedure TXMLPostalAddress.Set_PostalAddressZipCity2(Value: String);
begin
  ChildNodes['PostalAddressZipCity2'].NodeValue := Value;
end;

function TXMLPostalAddress.Get_PostalAddressCountry: String;
begin
  Result := ChildNodes['PostalAddressCountry'].NodeValue;
end;

procedure TXMLPostalAddress.Set_PostalAddressCountry(Value: String);
begin
  ChildNodes['PostalAddressCountry'].NodeValue := Value;
end;

{ TXMLVisitingAddress }

function TXMLVisitingAddress.Get_VisitingAddressStreetBox1: String;
begin
  Result := ChildNodes['VisitingAddressStreetBox1'].NodeValue;
end;

procedure TXMLVisitingAddress.Set_VisitingAddressStreetBox1(Value: String);
begin
  ChildNodes['VisitingAddressStreetBox1'].NodeValue := Value;
end;

function TXMLVisitingAddress.Get_VisitingAddressStreetBox2: String;
begin
  Result := ChildNodes['VisitingAddressStreetBox2'].NodeValue;
end;

procedure TXMLVisitingAddress.Set_VisitingAddressStreetBox2(Value: String);
begin
  ChildNodes['VisitingAddressStreetBox2'].NodeValue := Value;
end;

function TXMLVisitingAddress.Get_VisitingAddressZipCity1: String;
begin
  Result := ChildNodes['VisitingAddressZipCity1'].NodeValue;
end;

procedure TXMLVisitingAddress.Set_VisitingAddressZipCity1(Value: String);
begin
  ChildNodes['VisitingAddressZipCity1'].NodeValue := Value;
end;

function TXMLVisitingAddress.Get_VisitingAddressZipCity2: String;
begin
  Result := ChildNodes['VisitingAddressZipCity2'].NodeValue;
end;

procedure TXMLVisitingAddress.Set_VisitingAddressZipCity2(Value: String);
begin
  ChildNodes['VisitingAddressZipCity2'].NodeValue := Value;
end;

function TXMLVisitingAddress.Get_VisitingAddressCountry: String;
begin
  Result := ChildNodes['VisitingAddressCountry'].NodeValue;
end;

procedure TXMLVisitingAddress.Set_VisitingAddressCountry(Value: String);
begin
  ChildNodes['VisitingAddressCountry'].NodeValue := Value;
end;

{ TXMLFactoring }

function TXMLFactoring.Get_FactoringSetting: Integer;
begin
  Result := ChildNodes['FactoringSetting'].NodeValue;
end;

procedure TXMLFactoring.Set_FactoringSetting(Value: Integer);
begin
  ChildNodes['FactoringSetting'].NodeValue := Value;
end;

function TXMLFactoring.Get_FactoringBankName: String;
begin
  Result := ChildNodes['FactoringBankName'].NodeValue;
end;

procedure TXMLFactoring.Set_FactoringBankName(Value: String);
begin
  ChildNodes['FactoringBankName'].NodeValue := Value;
end;

function TXMLFactoring.Get_FactoringAccountNumber: String;
begin
  Result := ChildNodes['FactoringAccountNumber'].NodeValue;
end;

procedure TXMLFactoring.Set_FactoringAccountNumber(Value: String);
begin
  ChildNodes['FactoringAccountNumber'].NodeValue := Value;
end;

function TXMLFactoring.Get_FactoringSwiftAddress: String;
begin
  Result := ChildNodes['FactoringSwiftAddress'].NodeValue;
end;

procedure TXMLFactoring.Set_FactoringSwiftAddress(Value: String);
begin
  ChildNodes['FactoringSwiftAddress'].NodeValue := Value;
end;

function TXMLFactoring.Get_FactoringBankGiroNumber: String;
begin
  Result := ChildNodes['FactoringBankGiroNumber'].NodeValue;
end;

procedure TXMLFactoring.Set_FactoringBankGiroNumber(Value: String);
begin
  ChildNodes['FactoringBankGiroNumber'].NodeValue := Value;
end;

function TXMLFactoring.Get_FactoringPlusGiroNumber: String;
begin
  Result := ChildNodes['FactoringPlusGiroNumber'].NodeValue;
end;

procedure TXMLFactoring.Set_FactoringPlusGiroNumber(Value: String);
begin
  ChildNodes['FactoringPlusGiroNumber'].NodeValue := Value;
end;

{ TXMLRows }

procedure TXMLRows.AfterConstruction;
begin
  RegisterChildNode('Row', TXMLRow);
  ItemTag := 'Row';
  ItemInterface := IXMLRow;
  inherited;
end;

function TXMLRows.Get_Row(Index: Integer): IXMLRow;
begin
  Result := List[Index] as IXMLRow;
end;

function TXMLRows.Add: IXMLRow;
begin
  Result := AddItem(-1) as IXMLRow;
end;

function TXMLRows.Insert(const Index: Integer): IXMLRow;
begin
  Result := AddItem(Index) as IXMLRow;
end;

{ TXMLRow }

function TXMLRow.Get_RowNumber: Integer;
begin
  Result := AttributeNodes['RowNumber'].NodeValue;
end;

procedure TXMLRow.Set_RowNumber(Value: Integer);
begin
  SetAttribute('RowNumber', Value);
end;

function TXMLRow.Get_RowType: Integer;
begin
  Result := AttributeNodes['RowType'].NodeValue;
end;

procedure TXMLRow.Set_RowType(Value: Integer);
begin
  SetAttribute('RowType', Value);
end;

function TXMLRow.Get_RowPosition: Integer;
begin
  Result := AttributeNodes['RowPosition'].NodeValue;
end;

procedure TXMLRow.Set_RowPosition(Value: Integer);
begin
  SetAttribute('RowPosition', Value);
end;

function TXMLRow.Get_CostType: Integer;
begin
  Result := AttributeNodes['CostType'].NodeValue;
end;

procedure TXMLRow.Set_CostType(Value: Integer);
begin
  SetAttribute('CostType', Value);
end;

function TXMLRow.Get_BuyersPartNumber: String;
begin
  Result := ChildNodes['BuyersPartNumber'].NodeValue;
end;

procedure TXMLRow.Set_BuyersPartNumber(Value: String);
begin
  ChildNodes['BuyersPartNumber'].NodeValue := Value;
end;

function TXMLRow.Get_SellersPartNumber: String;
begin
  Result := ChildNodes['SellersPartNumber'].NodeValue;
end;

procedure TXMLRow.Set_SellersPartNumber(Value: String);
begin
  ChildNodes['SellersPartNumber'].NodeValue := Value;
end;

function TXMLRow.Get_PartDescription: String;
begin
  Result := ChildNodes['PartDescription'].NodeValue;
end;

procedure TXMLRow.Set_PartDescription(Value: String);
begin
  ChildNodes['PartDescription'].NodeValue := Value;
end;

function TXMLRow.Get_DeliveryDate: String;
begin
  Result := ChildNodes['DeliveryDate'].NodeValue;
end;

procedure TXMLRow.Set_DeliveryDate(Value: String);
begin
  ChildNodes['DeliveryDate'].NodeValue := Value;
end;

function TXMLRow.Get_Quantity: String;
begin
  Result := ChildNodes['Quantity'].NodeValue;
end;

procedure TXMLRow.Set_Quantity(Value: String);
begin
  ChildNodes['Quantity'].NodeValue := Value;
end;

function TXMLRow.Get_Unit_: String;
begin
  Result := ChildNodes['Unit'].NodeValue;
end;

procedure TXMLRow.Set_Unit_(Value: String);
begin
  ChildNodes['Unit'].NodeValue := Value;
end;

function TXMLRow.Get_Each: Integer;
begin
  Result := ChildNodes['Each'].NodeValue;
end;

procedure TXMLRow.Set_Each(Value: Integer);
begin
  ChildNodes['Each'].NodeValue := Value;
end;

function TXMLRow.Get_Discount: String;
begin
  Result := ChildNodes['Discount'].NodeValue;
end;

procedure TXMLRow.Set_Discount(Value: String);
begin
  ChildNodes['Discount'].NodeValue := Value;
end;

function TXMLRow.Get_Price: String;
begin
  Result := ChildNodes['Price'].NodeValue;
end;

procedure TXMLRow.Set_Price(Value: String);
begin
  ChildNodes['Price'].NodeValue := Value;
end;

function TXMLRow.Get_RowSum: String;
begin
  Result := ChildNodes['RowSum'].NodeValue;
end;

procedure TXMLRow.Set_RowSum(Value: String);
begin
  ChildNodes['RowSum'].NodeValue := Value;
end;

function TXMLRow.Get_BuyersOrderNumber: String;
begin
  Result := ChildNodes['BuyersOrderNumber'].NodeValue;
end;

procedure TXMLRow.Set_BuyersOrderNumber(Value: String);
begin
  ChildNodes['BuyersOrderNumber'].NodeValue := Value;
end;

function TXMLRow.Get_SellersOrderNumber: String;
begin
  Result := ChildNodes['SellersOrderNumber'].NodeValue;
end;

procedure TXMLRow.Set_SellersOrderNumber(Value: String);
begin
  ChildNodes['SellersOrderNumber'].NodeValue := Value;
end;

function TXMLRow.Get_CountryOfOriginCode: String;
begin
  Result := ChildNodes['CountryOfOriginCode'].NodeValue;
end;

procedure TXMLRow.Set_CountryOfOriginCode(Value: String);
begin
  ChildNodes['CountryOfOriginCode'].NodeValue := Value;
end;

end.