
{*********************************************************************************************************}
{                                                                                                         }
{                                            XML Data Binding                                             }
{                                                                                                         }
{         Generated on: 2018-11-21 22:27:57                                                               }
{       Generated from: C:\Users\Peter Holzer\Documents\Projekt\AMEK\Ängelholms Mek XE7- V3\XML\315.xdb   }
{   Settings stored in: C:\Users\Peter Holzer\Documents\Projekt\AMEK\Ängelholms Mek XE7- V3\XML\315.xdb   }
{                                                                                                         }
{*********************************************************************************************************}

unit Invoice416_v3;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLINVOIC416Type = interface;
  IXMLInvoiceType = interface;
  IXMLHeadType = interface;
  IXMLBuyerType = interface;
  IXMLInvoiceAddressType = interface;
  IXMLDeliveryAddressType = interface;
  IXMLSellerType = interface;
  IXMLPostalAddressType = interface;
  IXMLVisitingAddressType = interface;
  IXMLFactoringType = interface;
  IXMLRowsType = interface;
  IXMLRowType = interface;

{ IXMLINVOIC416Type }

  IXMLINVOIC416Type = interface(IXMLNode)
    ['{F2BF51A9-398E-4397-93F0-8B2954BF051D}']
    { Property Accessors }
    function Get_SoftwareManufacturer: UnicodeString;
    function Get_SoftwareName: UnicodeString;
    function Get_SoftwareVersion: UnicodeString;
    function Get_Invoice: IXMLInvoiceType;
    function Get_Head: IXMLHeadType;
    function Get_Rows: IXMLRowsType;
    procedure Set_SoftwareManufacturer(Value: UnicodeString);
    procedure Set_SoftwareName(Value: UnicodeString);
    procedure Set_SoftwareVersion(Value: UnicodeString);
    { Methods & Properties }
    property SoftwareManufacturer: UnicodeString read Get_SoftwareManufacturer write Set_SoftwareManufacturer;
    property SoftwareName: UnicodeString read Get_SoftwareName write Set_SoftwareName;
    property SoftwareVersion: UnicodeString read Get_SoftwareVersion write Set_SoftwareVersion;
    property Invoice: IXMLInvoiceType read Get_Invoice;
    property Head: IXMLHeadType read Get_Head;
    property Rows: IXMLRowsType read Get_Rows;
  end;

{ IXMLInvoiceType }

  IXMLInvoiceType = interface(IXMLNode)
    ['{C83AA2F0-2544-4DB8-B2B6-C8CA93268F63}']
    { Property Accessors }
    function Get_InvoiceNumber: unicodeString;
    function Get_InvoiceType: unicodeString;
    procedure Set_InvoiceNumber(Value: unicodeString);
    procedure Set_InvoiceType(Value: unicodeString);
    { Methods & Properties }
    property InvoiceNumber: unicodeString read Get_InvoiceNumber write Set_InvoiceNumber;
    property InvoiceType: unicodeString read Get_InvoiceType write Set_InvoiceType;
  end;

{ IXMLHeadType }

  IXMLHeadType = interface(IXMLNode)
    ['{EF2661FF-425A-4F87-A81A-FAEFACC07034}']
    { Property Accessors }
    function Get_SellersOrderNumber: UnicodeString;
    function Get_OrderDate: UnicodeString;
    function Get_BuyersOrderNumber: UnicodeString;
    function Get_DebitInvoiceNumber: UnicodeString;
    function Get_InvoiceDate: UnicodeString;
    function Get_LanguageNameCode: UnicodeString;
    function Get_Buyer: IXMLBuyerType;
    function Get_Seller: IXMLSellerType;
    function Get_InvoiceCurrency: UnicodeString;
    function Get_PaymentDueDate: UnicodeString;
    function Get_CurrencyExchangeRate: Double;
    function Get_RateOfExchangeDate: UnicodeString;
    function Get_EuVatText: String;
    function Get_GodsLabelLine1: UnicodeString;
    function Get_GodsLabelLine2: String;
    function Get_HomeCurrency: UnicodeString;
    function Get_TermsOfPayment: UnicodeString;
    function Get_TermsOfPaymentNoOfDays: UnicodeString;
    function Get_BankName: UnicodeString;
    function Get_AccountNumber: UnicodeString;
    function Get_SwiftAddress: UnicodeString;
    function Get_BankGiroNumber: String;
    function Get_PlusGiroNumber: String;
    function Get_Factoring: IXMLFactoringType;
    function Get_AlloyCost: Currency;
    function Get_FreightCost: currency;
    function Get_PackingCost: currency;
    function Get_InsuranceCost: currency;
    function Get_NetAmountInInvoiceCurrency: Currency;
    function Get_InvoicingCharge: Currency;
    function Get_VatAmountInInvoiceCurrency: Currency;
    function Get_Equalization: Integer;
    function Get_PayableAmountInInvoiceCurrency: Currency;
    function Get_TermsOfPaymentCashDiscount: Double;
    function Get_TermsOfPaymentCashDiscountDate: String;
    function Get_AgreementNumber: String;
    procedure Set_SellersOrderNumber(Value: UnicodeString);
    procedure Set_OrderDate(Value: UnicodeString);
    procedure Set_BuyersOrderNumber(Value: UnicodeString);
    procedure Set_DebitInvoiceNumber(Value: UnicodeString);
    procedure Set_InvoiceDate(Value: UnicodeString);
    procedure Set_LanguageNameCode(Value: UnicodeString);
    procedure Set_InvoiceCurrency(Value: UnicodeString);
    procedure Set_PaymentDueDate(Value: UnicodeString);
    procedure Set_CurrencyExchangeRate(Value: Double);
    procedure Set_RateOfExchangeDate(Value: UnicodeString);
    procedure Set_EuVatText(Value: String);
    procedure Set_GodsLabelLine1(Value: UnicodeString);
    procedure Set_GodsLabelLine2(Value: String);
    procedure Set_HomeCurrency(Value: UnicodeString);
    procedure Set_TermsOfPayment(Value: UnicodeString);
    procedure Set_TermsOfPaymentNoOfDays(Value: UnicodeString);
    procedure Set_BankName(Value: UnicodeString);
    procedure Set_AccountNumber(Value: UnicodeString);
    procedure Set_SwiftAddress(Value: UnicodeString);
    procedure Set_BankGiroNumber(Value: String);
    procedure Set_PlusGiroNumber(Value: String);
    procedure Set_AlloyCost(Value: Currency);
    procedure Set_FreightCost(Value: currency);
    procedure Set_PackingCost(Value: currency);
    procedure Set_InsuranceCost(Value: currency);
    procedure Set_NetAmountInInvoiceCurrency(Value: Currency);
    procedure Set_InvoicingCharge(Value: Currency);
    procedure Set_VatAmountInInvoiceCurrency(Value: Currency);
    procedure Set_Equalization(Value: Integer);
    procedure Set_PayableAmountInInvoiceCurrency(Value: Currency);
    procedure Set_TermsOfPaymentCashDiscount(Value: Double);
    procedure Set_TermsOfPaymentCashDiscountDate(Value: String);
    procedure Set_AgreementNumber(Value: String);
    { Methods & Properties }
    property SellersOrderNumber: UnicodeString read Get_SellersOrderNumber write Set_SellersOrderNumber;
    property OrderDate: UnicodeString read Get_OrderDate write Set_OrderDate;
    property BuyersOrderNumber: UnicodeString read Get_BuyersOrderNumber write Set_BuyersOrderNumber;
    property DebitInvoiceNumber: UnicodeString read Get_DebitInvoiceNumber write Set_DebitInvoiceNumber;
    property InvoiceDate: UnicodeString read Get_InvoiceDate write Set_InvoiceDate;
    property LanguageNameCode: UnicodeString read Get_LanguageNameCode write Set_LanguageNameCode;
    property Buyer: IXMLBuyerType read Get_Buyer;
    property Seller: IXMLSellerType read Get_Seller;
    property InvoiceCurrency: UnicodeString read Get_InvoiceCurrency write Set_InvoiceCurrency;
    property PaymentDueDate: UnicodeString read Get_PaymentDueDate write Set_PaymentDueDate;
    property CurrencyExchangeRate: Double read Get_CurrencyExchangeRate write Set_CurrencyExchangeRate;
    property RateOfExchangeDate: UnicodeString read Get_RateOfExchangeDate write Set_RateOfExchangeDate;
    property EuVatText: String read Get_EuVatText write Set_EuVatText;
    property GodsLabelLine1: UnicodeString read Get_GodsLabelLine1 write Set_GodsLabelLine1;
    property GodsLabelLine2: String read Get_GodsLabelLine2 write Set_GodsLabelLine2;
    property HomeCurrency: UnicodeString read Get_HomeCurrency write Set_HomeCurrency;
    property TermsOfPayment: UnicodeString read Get_TermsOfPayment write Set_TermsOfPayment;
    property TermsOfPaymentNoOfDays: UnicodeString read Get_TermsOfPaymentNoOfDays write Set_TermsOfPaymentNoOfDays;
    property BankName: UnicodeString read Get_BankName write Set_BankName;
    property AccountNumber: UnicodeString read Get_AccountNumber write Set_AccountNumber;
    property SwiftAddress: UnicodeString read Get_SwiftAddress write Set_SwiftAddress;
    property BankGiroNumber: String read Get_BankGiroNumber write Set_BankGiroNumber;
    property PlusGiroNumber: String read Get_PlusGiroNumber write Set_PlusGiroNumber;
    property Factoring: IXMLFactoringType read Get_Factoring;
    property AlloyCost: Currency read Get_AlloyCost write Set_AlloyCost;
    property FreightCost: currency read Get_FreightCost write Set_FreightCost;
    property PackingCost: currency read Get_PackingCost write Set_PackingCost;
    property InsuranceCost: currency read Get_InsuranceCost write Set_InsuranceCost;
    property NetAmountInInvoiceCurrency: Currency read Get_NetAmountInInvoiceCurrency write Set_NetAmountInInvoiceCurrency;
    property InvoicingCharge: Currency read Get_InvoicingCharge write Set_InvoicingCharge;
    property VatAmountInInvoiceCurrency: Currency read Get_VatAmountInInvoiceCurrency write Set_VatAmountInInvoiceCurrency;
    property Equalization: Integer read Get_Equalization write Set_Equalization;
    property PayableAmountInInvoiceCurrency: Currency read Get_PayableAmountInInvoiceCurrency write Set_PayableAmountInInvoiceCurrency;
    property TermsOfPaymentCashDiscount: Double read Get_TermsOfPaymentCashDiscount write Set_TermsOfPaymentCashDiscount;
    property TermsOfPaymentCashDiscountDate: String read Get_TermsOfPaymentCashDiscountDate write Set_TermsOfPaymentCashDiscountDate;
    property AgreementNumber: String read Get_AgreementNumber write Set_AgreementNumber;
  end;

{ IXMLBuyerType }

  IXMLBuyerType = interface(IXMLNode)
    ['{429C489A-A5E2-4FB6-A57F-3BA75363C158}']
    { Property Accessors }
    function Get_BuyerCode: UnicodeString;
    function Get_BuyerName: UnicodeString;
    function Get_BuyerVATRegistrationNumber: UnicodeString;
    function Get_BuyerRegistrationNumber: String;
    function Get_BuyerCountryCode: UnicodeString;
    function Get_BuyerReference: UnicodeString;
    function Get_BuyerReferencePhone: String;
    function Get_BuyerReferenceFax: String;
    function Get_BuyerReferenceEmail: UnicodeString;
    function Get_InvoiceAddress: IXMLInvoiceAddressType;
    function Get_DeliveryAddress: IXMLDeliveryAddressType;
    function Get_GlobalLocationNumber: String;
    procedure Set_BuyerCode(Value: UnicodeString);
    procedure Set_BuyerName(Value: UnicodeString);
    procedure Set_BuyerVATRegistrationNumber(Value: UnicodeString);
    procedure Set_BuyerRegistrationNumber(Value: String);
    procedure Set_BuyerCountryCode(Value: UnicodeString);
    procedure Set_BuyerReference(Value: UnicodeString);
    procedure Set_BuyerReferencePhone(Value: String);
    procedure Set_BuyerReferenceFax(Value: String);
    procedure Set_BuyerReferenceEmail(Value: UnicodeString);
    procedure Set_GlobalLocationNumber(Value: String);
    { Methods & Properties }
    property BuyerCode: UnicodeString read Get_BuyerCode write Set_BuyerCode;
    property BuyerName: UnicodeString read Get_BuyerName write Set_BuyerName;
    property BuyerVATRegistrationNumber: UnicodeString read Get_BuyerVATRegistrationNumber write Set_BuyerVATRegistrationNumber;
    property BuyerRegistrationNumber: String read Get_BuyerRegistrationNumber write Set_BuyerRegistrationNumber;
    property BuyerCountryCode: UnicodeString read Get_BuyerCountryCode write Set_BuyerCountryCode;
    property BuyerReference: UnicodeString read Get_BuyerReference write Set_BuyerReference;
    property BuyerReferencePhone: String read Get_BuyerReferencePhone write Set_BuyerReferencePhone;
    property BuyerReferenceFax: String read Get_BuyerReferenceFax write Set_BuyerReferenceFax;
    property BuyerReferenceEmail: UnicodeString read Get_BuyerReferenceEmail write Set_BuyerReferenceEmail;
    property InvoiceAddress: IXMLInvoiceAddressType read Get_InvoiceAddress;
    property DeliveryAddress: IXMLDeliveryAddressType read Get_DeliveryAddress;
    property GlobalLocationNumber: String read Get_GlobalLocationNumber write Set_GlobalLocationNumber;
  end;

{ IXMLInvoiceAddressType }

  IXMLInvoiceAddressType = interface(IXMLNode)
    ['{14840F62-B6BE-43B2-B180-BEF38196AE7B}']
    { Property Accessors }
    function Get_InvoiceAddressName: UnicodeString;
    function Get_InvoiceAddressStreetBox1: String;
    function Get_InvoiceAddressStreetBox2: UnicodeString;
    function Get_InvoiceAddressZipCity1: UnicodeString;
    function Get_InvoiceAddressZipCity2: String;
    function Get_InvoiceAddressCountry: UnicodeString;
    procedure Set_InvoiceAddressName(Value: UnicodeString);
    procedure Set_InvoiceAddressStreetBox1(Value: String);
    procedure Set_InvoiceAddressStreetBox2(Value: UnicodeString);
    procedure Set_InvoiceAddressZipCity1(Value: UnicodeString);
    procedure Set_InvoiceAddressZipCity2(Value: String);
    procedure Set_InvoiceAddressCountry(Value: UnicodeString);
    { Methods & Properties }
    property InvoiceAddressName: UnicodeString read Get_InvoiceAddressName write Set_InvoiceAddressName;
    property InvoiceAddressStreetBox1: String read Get_InvoiceAddressStreetBox1 write Set_InvoiceAddressStreetBox1;
    property InvoiceAddressStreetBox2: UnicodeString read Get_InvoiceAddressStreetBox2 write Set_InvoiceAddressStreetBox2;
    property InvoiceAddressZipCity1: UnicodeString read Get_InvoiceAddressZipCity1 write Set_InvoiceAddressZipCity1;
    property InvoiceAddressZipCity2: String read Get_InvoiceAddressZipCity2 write Set_InvoiceAddressZipCity2;
    property InvoiceAddressCountry: UnicodeString read Get_InvoiceAddressCountry write Set_InvoiceAddressCountry;
  end;

{ IXMLDeliveryAddressType }

  IXMLDeliveryAddressType = interface(IXMLNode)
    ['{4E26FCD6-0AF7-4582-BA34-36AD5A5F84A0}']
    { Property Accessors }
    function Get_DeliveryAddressName: UnicodeString;
    function Get_DeliveryAddressStreetBox1: UnicodeString;
    function Get_DeliveryAddressStreetBox2: String;
    function Get_DeliveryAddressZipCity1: UnicodeString;
    function Get_DeliveryAddressZipCity2: String;
    function Get_DeliveryAddressCountry: UnicodeString;
    procedure Set_DeliveryAddressName(Value: UnicodeString);
    procedure Set_DeliveryAddressStreetBox1(Value: UnicodeString);
    procedure Set_DeliveryAddressStreetBox2(Value: String);
    procedure Set_DeliveryAddressZipCity1(Value: UnicodeString);
    procedure Set_DeliveryAddressZipCity2(Value: String);
    procedure Set_DeliveryAddressCountry(Value: UnicodeString);
    { Methods & Properties }
    property DeliveryAddressName: UnicodeString read Get_DeliveryAddressName write Set_DeliveryAddressName;
    property DeliveryAddressStreetBox1: UnicodeString read Get_DeliveryAddressStreetBox1 write Set_DeliveryAddressStreetBox1;
    property DeliveryAddressStreetBox2: String read Get_DeliveryAddressStreetBox2 write Set_DeliveryAddressStreetBox2;
    property DeliveryAddressZipCity1: UnicodeString read Get_DeliveryAddressZipCity1 write Set_DeliveryAddressZipCity1;
    property DeliveryAddressZipCity2: String read Get_DeliveryAddressZipCity2 write Set_DeliveryAddressZipCity2;
    property DeliveryAddressCountry: UnicodeString read Get_DeliveryAddressCountry write Set_DeliveryAddressCountry;
  end;

{ IXMLSellerType }

  IXMLSellerType = interface(IXMLNode)
    ['{83F0CD01-2CAC-4A0B-ABD1-E9F550540EA6}']
    { Property Accessors }
    function Get_SellerSuplierCode: UnicodeString;
    function Get_SellerName: UnicodeString;
    function Get_SellerReference: UnicodeString;
    function Get_SellerReferencePhone: UnicodeString;
    function Get_SellerReferenceFax: String;
    function Get_SellerReferenceEmail: UnicodeString;
    function Get_SellerOrigin: UnicodeString;
    function Get_SellerWeb: UnicodeString;
    function Get_SellerPhone: UnicodeString;
    function Get_SellerFax: UnicodeString;
    function Get_SellerRegistrationNumber: UnicodeString;
    function Get_SellerVatRegistrationNumber: UnicodeString;
    function Get_SellerCountryCode: UnicodeString;
    function Get_PostalAddress: IXMLPostalAddressType;
    function Get_VisitingAddress: IXMLVisitingAddressType;
    procedure Set_SellerSuplierCode(Value: UnicodeString);
    procedure Set_SellerName(Value: UnicodeString);
    procedure Set_SellerReference(Value: UnicodeString);
    procedure Set_SellerReferencePhone(Value: UnicodeString);
    procedure Set_SellerReferenceFax(Value: String);
    procedure Set_SellerReferenceEmail(Value: UnicodeString);
    procedure Set_SellerOrigin(Value: UnicodeString);
    procedure Set_SellerWeb(Value: UnicodeString);
    procedure Set_SellerPhone(Value: UnicodeString);
    procedure Set_SellerFax(Value: UnicodeString);
    procedure Set_SellerRegistrationNumber(Value: UnicodeString);
    procedure Set_SellerVatRegistrationNumber(Value: UnicodeString);
    procedure Set_SellerCountryCode(Value: UnicodeString);
    { Methods & Properties }
    property SellerSuplierCode: UnicodeString read Get_SellerSuplierCode write Set_SellerSuplierCode;
    property SellerName: UnicodeString read Get_SellerName write Set_SellerName;
    property SellerReference: UnicodeString read Get_SellerReference write Set_SellerReference;
    property SellerReferencePhone: UnicodeString read Get_SellerReferencePhone write Set_SellerReferencePhone;
    property SellerReferenceFax: String read Get_SellerReferenceFax write Set_SellerReferenceFax;
    property SellerReferenceEmail: UnicodeString read Get_SellerReferenceEmail write Set_SellerReferenceEmail;
    property SellerOrigin: UnicodeString read Get_SellerOrigin write Set_SellerOrigin;
    property SellerWeb: UnicodeString read Get_SellerWeb write Set_SellerWeb;
    property SellerPhone: UnicodeString read Get_SellerPhone write Set_SellerPhone;
    property SellerFax: UnicodeString read Get_SellerFax write Set_SellerFax;
    property SellerRegistrationNumber: UnicodeString read Get_SellerRegistrationNumber write Set_SellerRegistrationNumber;
    property SellerVatRegistrationNumber: UnicodeString read Get_SellerVatRegistrationNumber write Set_SellerVatRegistrationNumber;
    property SellerCountryCode: UnicodeString read Get_SellerCountryCode write Set_SellerCountryCode;
    property PostalAddress: IXMLPostalAddressType read Get_PostalAddress;
    property VisitingAddress: IXMLVisitingAddressType read Get_VisitingAddress;
  end;

{ IXMLPostalAddressType }

  IXMLPostalAddressType = interface(IXMLNode)
    ['{DE0764BC-4CD8-453B-BF96-ADACD0DC659B}']
    { Property Accessors }
    function Get_PostalAddressStreetBox1: UnicodeString;
    function Get_PostalAddressStreetBox2: String;
    function Get_PostalAddressZipCity1: UnicodeString;
    function Get_PostalAddressZipCity2: UnicodeString;
    function Get_PostalAddressCountry: UnicodeString;
    procedure Set_PostalAddressStreetBox1(Value: UnicodeString);
    procedure Set_PostalAddressStreetBox2(Value: String);
    procedure Set_PostalAddressZipCity1(Value: UnicodeString);
    procedure Set_PostalAddressZipCity2(Value: UnicodeString);
    procedure Set_PostalAddressCountry(Value: UnicodeString);
    { Methods & Properties }
    property PostalAddressStreetBox1: UnicodeString read Get_PostalAddressStreetBox1 write Set_PostalAddressStreetBox1;
    property PostalAddressStreetBox2: String read Get_PostalAddressStreetBox2 write Set_PostalAddressStreetBox2;
    property PostalAddressZipCity1: UnicodeString read Get_PostalAddressZipCity1 write Set_PostalAddressZipCity1;
    property PostalAddressZipCity2: UnicodeString read Get_PostalAddressZipCity2 write Set_PostalAddressZipCity2;
    property PostalAddressCountry: UnicodeString read Get_PostalAddressCountry write Set_PostalAddressCountry;
  end;

{ IXMLVisitingAddressType }

  IXMLVisitingAddressType = interface(IXMLNode)
    ['{26EC1428-067B-4F96-AD5B-7368B0A2A4DF}']
    { Property Accessors }
    function Get_VisitingAddressStreetBox1: UnicodeString;
    function Get_VisitingAddressStreetBox2: String;
    function Get_VisitingAddressZipCity1: UnicodeString;
    function Get_VisitingAddressZipCity2: UnicodeString;
    function Get_VisitingAddressCountry: UnicodeString;
    procedure Set_VisitingAddressStreetBox1(Value: UnicodeString);
    procedure Set_VisitingAddressStreetBox2(Value: String);
    procedure Set_VisitingAddressZipCity1(Value: UnicodeString);
    procedure Set_VisitingAddressZipCity2(Value: UnicodeString);
    procedure Set_VisitingAddressCountry(Value: UnicodeString);
    { Methods & Properties }
    property VisitingAddressStreetBox1: UnicodeString read Get_VisitingAddressStreetBox1 write Set_VisitingAddressStreetBox1;
    property VisitingAddressStreetBox2: String read Get_VisitingAddressStreetBox2 write Set_VisitingAddressStreetBox2;
    property VisitingAddressZipCity1: UnicodeString read Get_VisitingAddressZipCity1 write Set_VisitingAddressZipCity1;
    property VisitingAddressZipCity2: UnicodeString read Get_VisitingAddressZipCity2 write Set_VisitingAddressZipCity2;
    property VisitingAddressCountry: UnicodeString read Get_VisitingAddressCountry write Set_VisitingAddressCountry;
  end;

{ IXMLFactoringType }

  IXMLFactoringType = interface(IXMLNode)
    ['{60244F92-1E7A-47EE-933F-1520F14CC2B0}']
    { Property Accessors }
    function Get_FactoringSetting: UnicodeString;
    function Get_FactoringBankName: String;
    function Get_FactoringAccountNumber: String;
    function Get_FactoringSwiftAddress: String;
    function Get_FactoringBankGiroNumber: String;
    function Get_FactoringPlusGiroNumber: String;
    procedure Set_FactoringSetting(Value: UnicodeString);
    procedure Set_FactoringBankName(Value: String);
    procedure Set_FactoringAccountNumber(Value: String);
    procedure Set_FactoringSwiftAddress(Value: String);
    procedure Set_FactoringBankGiroNumber(Value: String);
    procedure Set_FactoringPlusGiroNumber(Value: String);
    { Methods & Properties }
    property FactoringSetting: UnicodeString read Get_FactoringSetting write Set_FactoringSetting;
    property FactoringBankName: String read Get_FactoringBankName write Set_FactoringBankName;
    property FactoringAccountNumber: String read Get_FactoringAccountNumber write Set_FactoringAccountNumber;
    property FactoringSwiftAddress: String read Get_FactoringSwiftAddress write Set_FactoringSwiftAddress;
    property FactoringBankGiroNumber: String read Get_FactoringBankGiroNumber write Set_FactoringBankGiroNumber;
    property FactoringPlusGiroNumber: String read Get_FactoringPlusGiroNumber write Set_FactoringPlusGiroNumber;
  end;

{ IXMLRowsType }

  IXMLRowsType = interface(IXMLNodeCollection)
    ['{D48F6667-5D20-4A71-95AD-E1EB79069FFF}']
    { Property Accessors }
    function Get_Row(Index: Integer): IXMLRowType;
    { Methods & Properties }
    function Add: IXMLRowType;
    function Insert(const Index: Integer): IXMLRowType;
    property Row[Index: Integer]: IXMLRowType read Get_Row; default;
  end;

{ IXMLRowType }

  IXMLRowType = interface(IXMLNode)
    ['{5D1C475E-699D-4FE4-9916-3724A47376BD}']
    { Property Accessors }
    function Get_RowNumber: Integer;
    function Get_RowType: UnicodeString;
    function Get_RowPosition: Integer;
    function Get_CostType: UnicodeString;
    function Get_BuyersPartNumber: UnicodeString;
    function Get_SellersPartNumber: UnicodeString;
    function Get_PartDescription: UnicodeString;
    function Get_DeliveryDate: UnicodeString;
    function Get_Quantity: double;
    function Get_Unit_: UnicodeString;
    function Get_Each: Integer;
    function Get_Discount: double;
    function Get_Price: currency;
    function Get_VatRate: double;
    function Get_RowSum: currency;
    function Get_BuyersOrderNumber: unicodeString;
    function Get_SellersOrderNumber: unicodeString;
    function Get_CountryOfOriginCode: unicodeString;
    procedure Set_RowNumber(Value: Integer);
    procedure Set_RowType(Value: UnicodeString);
    procedure Set_RowPosition(Value: Integer);
    procedure Set_CostType(Value: UnicodeString);
    procedure Set_BuyersPartNumber(Value: UnicodeString);
    procedure Set_SellersPartNumber(Value: UnicodeString);
    procedure Set_PartDescription(Value: UnicodeString);
    procedure Set_DeliveryDate(Value: UnicodeString);
    procedure Set_Quantity(Value: double);
    procedure Set_Unit_(Value: UnicodeString);
    procedure Set_Each(Value: Integer);
    procedure Set_Discount(Value: double);
    procedure Set_Price(Value: currency);
    procedure Set_VatRate(Value: double);
    procedure Set_RowSum(Value: currency);
    procedure Set_BuyersOrderNumber(Value: unicodeString);
    procedure Set_SellersOrderNumber(Value: unicodeString);
    procedure Set_CountryOfOriginCode(Value: unicodeString);
    { Methods & Properties }
    property RowNumber: Integer read Get_RowNumber write Set_RowNumber;
    property RowType: UnicodeString read Get_RowType write Set_RowType;
    property RowPosition: Integer read Get_RowPosition write Set_RowPosition;
    property CostType: UnicodeString read Get_CostType write Set_CostType;
    property BuyersPartNumber: UnicodeString read Get_BuyersPartNumber write Set_BuyersPartNumber;
    property SellersPartNumber: UnicodeString read Get_SellersPartNumber write Set_SellersPartNumber;
    property PartDescription: UnicodeString read Get_PartDescription write Set_PartDescription;
    property DeliveryDate: UnicodeString read Get_DeliveryDate write Set_DeliveryDate;
    property Quantity: double read Get_Quantity write Set_Quantity;
    property Unit_: UnicodeString read Get_Unit_ write Set_Unit_;
    property Each: Integer read Get_Each write Set_Each;
    property Discount: double read Get_Discount write Set_Discount;
    property Price: currency read Get_Price write Set_Price;
    property VatRate: double read Get_VatRate write Set_VatRate;
    property RowSum: currency read Get_RowSum write Set_RowSum;
    property BuyersOrderNumber: unicodeString read Get_BuyersOrderNumber write Set_BuyersOrderNumber;
    property SellersOrderNumber: unicodeString read Get_SellersOrderNumber write Set_SellersOrderNumber;
    property CountryOfOriginCode: unicodeString read Get_CountryOfOriginCode write Set_CountryOfOriginCode;
  end;

{ Forward Decls }

  TXMLINVOIC416Type = class;
  TXMLInvoiceType = class;
  TXMLHeadType = class;
  TXMLBuyerType = class;
  TXMLInvoiceAddressType = class;
  TXMLDeliveryAddressType = class;
  TXMLSellerType = class;
  TXMLPostalAddressType = class;
  TXMLVisitingAddressType = class;
  TXMLFactoringType = class;
  TXMLRowsType = class;
  TXMLRowType = class;

{ TXMLINVOIC416Type }

  TXMLINVOIC416Type = class(TXMLNode, IXMLINVOIC416Type)
  protected
    { IXMLINVOIC416Type }
    function Get_SoftwareManufacturer: UnicodeString;
    function Get_SoftwareName: UnicodeString;
    function Get_SoftwareVersion: UnicodeString;
    function Get_Invoice: IXMLInvoiceType;
    function Get_Head: IXMLHeadType;
    function Get_Rows: IXMLRowsType;
    procedure Set_SoftwareManufacturer(Value: UnicodeString);
    procedure Set_SoftwareName(Value: UnicodeString);
    procedure Set_SoftwareVersion(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInvoiceType }

  TXMLInvoiceType = class(TXMLNode, IXMLInvoiceType)
  protected
    { IXMLInvoiceType }
    function Get_InvoiceNumber: unicodeString;
    function Get_InvoiceType: unicodeString;
    procedure Set_InvoiceNumber(Value: unicodeString);
    procedure Set_InvoiceType(Value: unicodeString);
  end;

{ TXMLHeadType }

  TXMLHeadType = class(TXMLNode, IXMLHeadType)
  protected
    { IXMLHeadType }
    function Get_SellersOrderNumber: UnicodeString;
    function Get_OrderDate: UnicodeString;
    function Get_BuyersOrderNumber: UnicodeString;
    function Get_DebitInvoiceNumber: UnicodeString;
    function Get_InvoiceDate: UnicodeString;
    function Get_LanguageNameCode: UnicodeString;
    function Get_Buyer: IXMLBuyerType;
    function Get_Seller: IXMLSellerType;
    function Get_InvoiceCurrency: UnicodeString;
    function Get_PaymentDueDate: UnicodeString;
    function Get_CurrencyExchangeRate: Double;
    function Get_RateOfExchangeDate: UnicodeString;
    function Get_EuVatText: String;
    function Get_GodsLabelLine1: UnicodeString;
    function Get_GodsLabelLine2: String;
    function Get_HomeCurrency: UnicodeString;
    function Get_TermsOfPayment: UnicodeString;
    function Get_TermsOfPaymentNoOfDays: UnicodeString;
    function Get_BankName: UnicodeString;
    function Get_AccountNumber: UnicodeString;
    function Get_SwiftAddress: UnicodeString;
    function Get_BankGiroNumber: String;
    function Get_PlusGiroNumber: String;
    function Get_Factoring: IXMLFactoringType;
    function Get_AlloyCost: Currency;
    function Get_FreightCost: currency;
    function Get_PackingCost: currency;
    function Get_InsuranceCost: currency;
    function Get_NetAmountInInvoiceCurrency: Currency;
    function Get_InvoicingCharge: Currency;
    function Get_VatAmountInInvoiceCurrency: Currency;
    function Get_Equalization: Integer;
    function Get_PayableAmountInInvoiceCurrency: Currency;
    function Get_TermsOfPaymentCashDiscount: Double;
    function Get_TermsOfPaymentCashDiscountDate: String;
    function Get_AgreementNumber: String;
    procedure Set_SellersOrderNumber(Value: UnicodeString);
    procedure Set_OrderDate(Value: UnicodeString);
    procedure Set_BuyersOrderNumber(Value: UnicodeString);
    procedure Set_DebitInvoiceNumber(Value: UnicodeString);
    procedure Set_InvoiceDate(Value: UnicodeString);
    procedure Set_LanguageNameCode(Value: UnicodeString);
    procedure Set_InvoiceCurrency(Value: UnicodeString);
    procedure Set_PaymentDueDate(Value: UnicodeString);
    procedure Set_CurrencyExchangeRate(Value: Double);
    procedure Set_RateOfExchangeDate(Value: UnicodeString);
    procedure Set_EuVatText(Value: String);
    procedure Set_GodsLabelLine1(Value: UnicodeString);
    procedure Set_GodsLabelLine2(Value: String);
    procedure Set_HomeCurrency(Value: UnicodeString);
    procedure Set_TermsOfPayment(Value: UnicodeString);
    procedure Set_TermsOfPaymentNoOfDays(Value: UnicodeString);
    procedure Set_BankName(Value: UnicodeString);
    procedure Set_AccountNumber(Value: UnicodeString);
    procedure Set_SwiftAddress(Value: UnicodeString);
    procedure Set_BankGiroNumber(Value: String);
    procedure Set_PlusGiroNumber(Value: String);
    procedure Set_AlloyCost(Value: Currency);
    procedure Set_FreightCost(Value: currency);
    procedure Set_PackingCost(Value: currency);
    procedure Set_InsuranceCost(Value: currency);
    procedure Set_NetAmountInInvoiceCurrency(Value: Currency);
    procedure Set_InvoicingCharge(Value: Currency);
    procedure Set_VatAmountInInvoiceCurrency(Value: Currency);
    procedure Set_Equalization(Value: Integer);
    procedure Set_PayableAmountInInvoiceCurrency(Value: Currency);
    procedure Set_TermsOfPaymentCashDiscount(Value: Double);
    procedure Set_TermsOfPaymentCashDiscountDate(Value: String);
    procedure Set_AgreementNumber(Value: String);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBuyerType }

  TXMLBuyerType = class(TXMLNode, IXMLBuyerType)
  protected
    { IXMLBuyerType }
    function Get_BuyerCode: UnicodeString;
    function Get_BuyerName: UnicodeString;
    function Get_BuyerVATRegistrationNumber: UnicodeString;
    function Get_BuyerRegistrationNumber: String;
    function Get_BuyerCountryCode: UnicodeString;
    function Get_BuyerReference: UnicodeString;
    function Get_BuyerReferencePhone: String;
    function Get_BuyerReferenceFax: String;
    function Get_BuyerReferenceEmail: UnicodeString;
    function Get_InvoiceAddress: IXMLInvoiceAddressType;
    function Get_DeliveryAddress: IXMLDeliveryAddressType;
    function Get_GlobalLocationNumber: String;
    procedure Set_BuyerCode(Value: UnicodeString);
    procedure Set_BuyerName(Value: UnicodeString);
    procedure Set_BuyerVATRegistrationNumber(Value: UnicodeString);
    procedure Set_BuyerRegistrationNumber(Value: String);
    procedure Set_BuyerCountryCode(Value: UnicodeString);
    procedure Set_BuyerReference(Value: UnicodeString);
    procedure Set_BuyerReferencePhone(Value: String);
    procedure Set_BuyerReferenceFax(Value: String);
    procedure Set_BuyerReferenceEmail(Value: UnicodeString);
    procedure Set_GlobalLocationNumber(Value: String);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInvoiceAddressType }

  TXMLInvoiceAddressType = class(TXMLNode, IXMLInvoiceAddressType)
  protected
    { IXMLInvoiceAddressType }
    function Get_InvoiceAddressName: UnicodeString;
    function Get_InvoiceAddressStreetBox1: String;
    function Get_InvoiceAddressStreetBox2: UnicodeString;
    function Get_InvoiceAddressZipCity1: UnicodeString;
    function Get_InvoiceAddressZipCity2: String;
    function Get_InvoiceAddressCountry: UnicodeString;
    procedure Set_InvoiceAddressName(Value: UnicodeString);
    procedure Set_InvoiceAddressStreetBox1(Value: String);
    procedure Set_InvoiceAddressStreetBox2(Value: UnicodeString);
    procedure Set_InvoiceAddressZipCity1(Value: UnicodeString);
    procedure Set_InvoiceAddressZipCity2(Value: String);
    procedure Set_InvoiceAddressCountry(Value: UnicodeString);
  end;

{ TXMLDeliveryAddressType }

  TXMLDeliveryAddressType = class(TXMLNode, IXMLDeliveryAddressType)
  protected
    { IXMLDeliveryAddressType }
    function Get_DeliveryAddressName: UnicodeString;
    function Get_DeliveryAddressStreetBox1: UnicodeString;
    function Get_DeliveryAddressStreetBox2: String;
    function Get_DeliveryAddressZipCity1: UnicodeString;
    function Get_DeliveryAddressZipCity2: String;
    function Get_DeliveryAddressCountry: UnicodeString;
    procedure Set_DeliveryAddressName(Value: UnicodeString);
    procedure Set_DeliveryAddressStreetBox1(Value: UnicodeString);
    procedure Set_DeliveryAddressStreetBox2(Value: String);
    procedure Set_DeliveryAddressZipCity1(Value: UnicodeString);
    procedure Set_DeliveryAddressZipCity2(Value: String);
    procedure Set_DeliveryAddressCountry(Value: UnicodeString);
  end;

{ TXMLSellerType }

  TXMLSellerType = class(TXMLNode, IXMLSellerType)
  protected
    { IXMLSellerType }
    function Get_SellerSuplierCode: UnicodeString;
    function Get_SellerName: UnicodeString;
    function Get_SellerReference: UnicodeString;
    function Get_SellerReferencePhone: UnicodeString;
    function Get_SellerReferenceFax: String;
    function Get_SellerReferenceEmail: UnicodeString;
    function Get_SellerOrigin: UnicodeString;
    function Get_SellerWeb: UnicodeString;
    function Get_SellerPhone: UnicodeString;
    function Get_SellerFax: UnicodeString;
    function Get_SellerRegistrationNumber: UnicodeString;
    function Get_SellerVatRegistrationNumber: UnicodeString;
    function Get_SellerCountryCode: UnicodeString;
    function Get_PostalAddress: IXMLPostalAddressType;
    function Get_VisitingAddress: IXMLVisitingAddressType;
    procedure Set_SellerSuplierCode(Value: UnicodeString);
    procedure Set_SellerName(Value: UnicodeString);
    procedure Set_SellerReference(Value: UnicodeString);
    procedure Set_SellerReferencePhone(Value: UnicodeString);
    procedure Set_SellerReferenceFax(Value: String);
    procedure Set_SellerReferenceEmail(Value: UnicodeString);
    procedure Set_SellerOrigin(Value: UnicodeString);
    procedure Set_SellerWeb(Value: UnicodeString);
    procedure Set_SellerPhone(Value: UnicodeString);
    procedure Set_SellerFax(Value: UnicodeString);
    procedure Set_SellerRegistrationNumber(Value: UnicodeString);
    procedure Set_SellerVatRegistrationNumber(Value: UnicodeString);
    procedure Set_SellerCountryCode(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPostalAddressType }

  TXMLPostalAddressType = class(TXMLNode, IXMLPostalAddressType)
  protected
    { IXMLPostalAddressType }
    function Get_PostalAddressStreetBox1: UnicodeString;
    function Get_PostalAddressStreetBox2: String;
    function Get_PostalAddressZipCity1: UnicodeString;
    function Get_PostalAddressZipCity2: UnicodeString;
    function Get_PostalAddressCountry: UnicodeString;
    procedure Set_PostalAddressStreetBox1(Value: UnicodeString);
    procedure Set_PostalAddressStreetBox2(Value: String);
    procedure Set_PostalAddressZipCity1(Value: UnicodeString);
    procedure Set_PostalAddressZipCity2(Value: UnicodeString);
    procedure Set_PostalAddressCountry(Value: UnicodeString);
  end;

{ TXMLVisitingAddressType }

  TXMLVisitingAddressType = class(TXMLNode, IXMLVisitingAddressType)
  protected
    { IXMLVisitingAddressType }
    function Get_VisitingAddressStreetBox1: UnicodeString;
    function Get_VisitingAddressStreetBox2: String;
    function Get_VisitingAddressZipCity1: UnicodeString;
    function Get_VisitingAddressZipCity2: UnicodeString;
    function Get_VisitingAddressCountry: UnicodeString;
    procedure Set_VisitingAddressStreetBox1(Value: UnicodeString);
    procedure Set_VisitingAddressStreetBox2(Value: String);
    procedure Set_VisitingAddressZipCity1(Value: UnicodeString);
    procedure Set_VisitingAddressZipCity2(Value: UnicodeString);
    procedure Set_VisitingAddressCountry(Value: UnicodeString);
  end;

{ TXMLFactoringType }

  TXMLFactoringType = class(TXMLNode, IXMLFactoringType)
  protected
    { IXMLFactoringType }
    function Get_FactoringSetting: UnicodeString;
    function Get_FactoringBankName: String;
    function Get_FactoringAccountNumber: String;
    function Get_FactoringSwiftAddress: String;
    function Get_FactoringBankGiroNumber: String;
    function Get_FactoringPlusGiroNumber: String;
    procedure Set_FactoringSetting(Value: UnicodeString);
    procedure Set_FactoringBankName(Value: String);
    procedure Set_FactoringAccountNumber(Value: String);
    procedure Set_FactoringSwiftAddress(Value: String);
    procedure Set_FactoringBankGiroNumber(Value: String);
    procedure Set_FactoringPlusGiroNumber(Value: String);
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
    function Get_RowType: UnicodeString;
    function Get_RowPosition: Integer;
    function Get_CostType: UnicodeString;
    function Get_BuyersPartNumber: UnicodeString;
    function Get_SellersPartNumber: UnicodeString;
    function Get_PartDescription: UnicodeString;
    function Get_DeliveryDate: UnicodeString;
    function Get_Quantity: double;
    function Get_Unit_: UnicodeString;
    function Get_Each: Integer;
    function Get_Discount: double;
    function Get_Price: currency;
    function Get_VatRate: double;
    function Get_RowSum: currency;
    function Get_BuyersOrderNumber: unicodeString;
    function Get_SellersOrderNumber: unicodeString;
    function Get_CountryOfOriginCode: unicodeString;
    procedure Set_RowNumber(Value: Integer);
    procedure Set_RowType(Value: UnicodeString);
    procedure Set_RowPosition(Value: Integer);
    procedure Set_CostType(Value: UnicodeString);
    procedure Set_BuyersPartNumber(Value: UnicodeString);
    procedure Set_SellersPartNumber(Value: UnicodeString);
    procedure Set_PartDescription(Value: UnicodeString);
    procedure Set_DeliveryDate(Value: UnicodeString);
    procedure Set_Quantity(Value: double);
    procedure Set_Unit_(Value: UnicodeString);
    procedure Set_Each(Value: Integer);
    procedure Set_Discount(Value: double);
    procedure Set_Price(Value: currency);
    procedure Set_VatRate(Value: double);
    procedure Set_RowSum(Value: currency);
    procedure Set_BuyersOrderNumber(Value: unicodeString);
    procedure Set_SellersOrderNumber(Value: unicodeString);
    procedure Set_CountryOfOriginCode(Value: unicodeString);
  end;

{ Global Functions }

function GetINVOIC416(Doc: IXMLDocument): IXMLINVOIC416Type;
function LoadINVOIC416(const FileName: string): IXMLINVOIC416Type;
function NewINVOIC416: IXMLINVOIC416Type;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetINVOIC416(Doc: IXMLDocument): IXMLINVOIC416Type;
begin
  Result := Doc.GetDocBinding('INVOIC416', TXMLINVOIC416Type, TargetNamespace) as IXMLINVOIC416Type;
end;

function LoadINVOIC416(const FileName: string): IXMLINVOIC416Type;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('INVOIC416', TXMLINVOIC416Type, TargetNamespace) as IXMLINVOIC416Type;
end;

function NewINVOIC416: IXMLINVOIC416Type;
begin
  Result := NewXMLDocument.GetDocBinding('INVOIC416', TXMLINVOIC416Type, TargetNamespace) as IXMLINVOIC416Type;
end;

{ TXMLINVOIC416Type }

procedure TXMLINVOIC416Type.AfterConstruction;
begin
  RegisterChildNode('Invoice', TXMLInvoiceType);
  RegisterChildNode('Head', TXMLHeadType);
  RegisterChildNode('Rows', TXMLRowsType);
  inherited;
end;

function TXMLINVOIC416Type.Get_SoftwareManufacturer: UnicodeString;
begin
  Result := AttributeNodes['SoftwareManufacturer'].Text;
end;

procedure TXMLINVOIC416Type.Set_SoftwareManufacturer(Value: UnicodeString);
begin
  SetAttribute('SoftwareManufacturer', Value);
end;

function TXMLINVOIC416Type.Get_SoftwareName: UnicodeString;
begin
  Result := AttributeNodes['SoftwareName'].Text;
end;

procedure TXMLINVOIC416Type.Set_SoftwareName(Value: UnicodeString);
begin
  SetAttribute('SoftwareName', Value);
end;

function TXMLINVOIC416Type.Get_SoftwareVersion: UnicodeString;
begin
  Result := AttributeNodes['SoftwareVersion'].Text;
end;

procedure TXMLINVOIC416Type.Set_SoftwareVersion(Value: UnicodeString);
begin
  SetAttribute('SoftwareVersion', Value);
end;

function TXMLINVOIC416Type.Get_Invoice: IXMLInvoiceType;
begin
  Result := ChildNodes['Invoice'] as IXMLInvoiceType;
end;

function TXMLINVOIC416Type.Get_Head: IXMLHeadType;
begin
  Result := ChildNodes['Head'] as IXMLHeadType;
end;

function TXMLINVOIC416Type.Get_Rows: IXMLRowsType;
begin
  Result := ChildNodes['Rows'] as IXMLRowsType;
end;

{ TXMLInvoiceType }

function TXMLInvoiceType.Get_InvoiceNumber: unicodeString;
begin
  Result := AttributeNodes['InvoiceNumber'].NodeValue;
end;

procedure TXMLInvoiceType.Set_InvoiceNumber(Value: unicodeString);
begin
  SetAttribute('InvoiceNumber', Value);
end;

function TXMLInvoiceType.Get_InvoiceType: unicodeString;
begin
  Result := AttributeNodes['InvoiceType'].NodeValue;
end;

procedure TXMLInvoiceType.Set_InvoiceType(Value: unicodeString);
begin
  SetAttribute('InvoiceType', Value);
end;

{ TXMLHeadType }

procedure TXMLHeadType.AfterConstruction;
begin
  RegisterChildNode('Buyer', TXMLBuyerType);
  RegisterChildNode('Seller', TXMLSellerType);
  RegisterChildNode('Factoring', TXMLFactoringType);
  inherited;
end;

function TXMLHeadType.Get_SellersOrderNumber: UnicodeString;
begin
  Result := ChildNodes['SellersOrderNumber'].Text;
end;

procedure TXMLHeadType.Set_SellersOrderNumber(Value: UnicodeString);
begin
  ChildNodes['SellersOrderNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_OrderDate: UnicodeString;
begin
  Result := ChildNodes['OrderDate'].Text;
end;

procedure TXMLHeadType.Set_OrderDate(Value: UnicodeString);
begin
  ChildNodes['OrderDate'].NodeValue := Value;
end;

function TXMLHeadType.Get_BuyersOrderNumber: UnicodeString;
begin
  Result := ChildNodes['BuyersOrderNumber'].Text;
end;

procedure TXMLHeadType.Set_BuyersOrderNumber(Value: UnicodeString);
begin
  ChildNodes['BuyersOrderNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_DebitInvoiceNumber: UnicodeString;
begin
  Result := ChildNodes['DebitInvoiceNumber'].Text;
end;

procedure TXMLHeadType.Set_DebitInvoiceNumber(Value: UnicodeString);
begin
  ChildNodes['DebitInvoiceNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_InvoiceDate: UnicodeString;
begin
  Result := ChildNodes['InvoiceDate'].Text;
end;

procedure TXMLHeadType.Set_InvoiceDate(Value: UnicodeString);
begin
  ChildNodes['InvoiceDate'].NodeValue := Value;
end;

function TXMLHeadType.Get_LanguageNameCode: UnicodeString;
begin
  Result := ChildNodes['LanguageNameCode'].Text;
end;

procedure TXMLHeadType.Set_LanguageNameCode(Value: UnicodeString);
begin
  ChildNodes['LanguageNameCode'].NodeValue := Value;
end;

function TXMLHeadType.Get_Buyer: IXMLBuyerType;
begin
  Result := ChildNodes['Buyer'] as IXMLBuyerType;
end;

function TXMLHeadType.Get_Seller: IXMLSellerType;
begin
  Result := ChildNodes['Seller'] as IXMLSellerType;
end;

function TXMLHeadType.Get_InvoiceCurrency: UnicodeString;
begin
  Result := ChildNodes['InvoiceCurrency'].Text;
end;

procedure TXMLHeadType.Set_InvoiceCurrency(Value: UnicodeString);
begin
  ChildNodes['InvoiceCurrency'].NodeValue := Value;
end;

function TXMLHeadType.Get_PaymentDueDate: UnicodeString;
begin
  Result := ChildNodes['PaymentDueDate'].Text;
end;

procedure TXMLHeadType.Set_PaymentDueDate(Value: UnicodeString);
begin
  ChildNodes['PaymentDueDate'].NodeValue := Value;
end;

function TXMLHeadType.Get_CurrencyExchangeRate: Double;
begin
  Result := ChildNodes['CurrencyExchangeRate'].NodeValue;
end;

procedure TXMLHeadType.Set_CurrencyExchangeRate(Value: Double);
begin
  ChildNodes['CurrencyExchangeRate'].NodeValue := Value;
end;

function TXMLHeadType.Get_RateOfExchangeDate: UnicodeString;
begin
  Result := ChildNodes['RateOfExchangeDate'].Text;
end;

procedure TXMLHeadType.Set_RateOfExchangeDate(Value: UnicodeString);
begin
  ChildNodes['RateOfExchangeDate'].NodeValue := Value;
end;

function TXMLHeadType.Get_EuVatText: String;
begin
  Result := ChildNodes['EuVatText'].NodeValue;
end;

procedure TXMLHeadType.Set_EuVatText(Value: String);
begin
  ChildNodes['EuVatText'].NodeValue := Value;
end;

function TXMLHeadType.Get_GodsLabelLine1: UnicodeString;
begin
  Result := ChildNodes['GodsLabelLine1'].Text;
end;

procedure TXMLHeadType.Set_GodsLabelLine1(Value: UnicodeString);
begin
  ChildNodes['GodsLabelLine1'].NodeValue := Value;
end;

function TXMLHeadType.Get_GodsLabelLine2: String;
begin
  Result := ChildNodes['GodsLabelLine2'].NodeValue;
end;

procedure TXMLHeadType.Set_GodsLabelLine2(Value: String);
begin
  ChildNodes['GodsLabelLine2'].NodeValue := Value;
end;

function TXMLHeadType.Get_HomeCurrency: UnicodeString;
begin
  Result := ChildNodes['HomeCurrency'].Text;
end;

procedure TXMLHeadType.Set_HomeCurrency(Value: UnicodeString);
begin
  ChildNodes['HomeCurrency'].NodeValue := Value;
end;

function TXMLHeadType.Get_TermsOfPayment: UnicodeString;
begin
  Result := ChildNodes['TermsOfPayment'].Text;
end;

procedure TXMLHeadType.Set_TermsOfPayment(Value: UnicodeString);
begin
  ChildNodes['TermsOfPayment'].NodeValue := Value;
end;

function TXMLHeadType.Get_TermsOfPaymentNoOfDays: UnicodeString;
begin
  Result := ChildNodes['TermsOfPaymentNoOfDays'].Text;
end;

procedure TXMLHeadType.Set_TermsOfPaymentNoOfDays(Value: UnicodeString);
begin
  ChildNodes['TermsOfPaymentNoOfDays'].NodeValue := Value;
end;

function TXMLHeadType.Get_BankName: UnicodeString;
begin
  Result := ChildNodes['BankName'].Text;
end;

procedure TXMLHeadType.Set_BankName(Value: UnicodeString);
begin
  ChildNodes['BankName'].NodeValue := Value;
end;

function TXMLHeadType.Get_AccountNumber: UnicodeString;
begin
  Result := ChildNodes['AccountNumber'].Text;
end;

procedure TXMLHeadType.Set_AccountNumber(Value: UnicodeString);
begin
  ChildNodes['AccountNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_SwiftAddress: UnicodeString;
begin
  Result := ChildNodes['SwiftAddress'].Text;
end;

procedure TXMLHeadType.Set_SwiftAddress(Value: UnicodeString);
begin
  ChildNodes['SwiftAddress'].NodeValue := Value;
end;

function TXMLHeadType.Get_BankGiroNumber: String;
begin
  Result := ChildNodes['BankGiroNumber'].NodeValue;
end;

procedure TXMLHeadType.Set_BankGiroNumber(Value: String);
begin
  ChildNodes['BankGiroNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_PlusGiroNumber: String;
begin
  Result := ChildNodes['PlusGiroNumber'].NodeValue;
end;

procedure TXMLHeadType.Set_PlusGiroNumber(Value: String);
begin
  ChildNodes['PlusGiroNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_Factoring: IXMLFactoringType;
begin
  Result := ChildNodes['Factoring'] as IXMLFactoringType;
end;

function TXMLHeadType.Get_AlloyCost: Currency;
begin
  Result := ChildNodes['AlloyCost'].NodeValue;
end;

procedure TXMLHeadType.Set_AlloyCost(Value: Currency);
begin
  ChildNodes['AlloyCost'].NodeValue := Value;
end;

function TXMLHeadType.Get_FreightCost: currency;
begin
  Result := ChildNodes['FreightCost'].NodeValue;
end;

procedure TXMLHeadType.Set_FreightCost(Value: currency);
begin
  ChildNodes['FreightCost'].NodeValue := Value;
end;

function TXMLHeadType.Get_PackingCost: currency;
begin
  Result := ChildNodes['PackingCost'].NodeValue;
end;

procedure TXMLHeadType.Set_PackingCost(Value: currency);
begin
  ChildNodes['PackingCost'].NodeValue := Value;
end;

function TXMLHeadType.Get_InsuranceCost: currency;
begin
  Result := ChildNodes['InsuranceCost'].NodeValue;
end;

procedure TXMLHeadType.Set_InsuranceCost(Value: currency);
begin
  ChildNodes['InsuranceCost'].NodeValue := Value;
end;

function TXMLHeadType.Get_NetAmountInInvoiceCurrency: Currency;
begin
  Result := ChildNodes['NetAmountInInvoiceCurrency'].NodeValue;
end;

procedure TXMLHeadType.Set_NetAmountInInvoiceCurrency(Value: Currency);
begin
  ChildNodes['NetAmountInInvoiceCurrency'].NodeValue := Value;
end;

function TXMLHeadType.Get_InvoicingCharge: Currency;
begin
  Result := ChildNodes['InvoicingCharge'].NodeValue;
end;

procedure TXMLHeadType.Set_InvoicingCharge(Value: Currency);
begin
  ChildNodes['InvoicingCharge'].NodeValue := Value;
end;

function TXMLHeadType.Get_VatAmountInInvoiceCurrency: Currency;
begin
  Result := ChildNodes['VatAmountInInvoiceCurrency'].NodeValue;
end;

procedure TXMLHeadType.Set_VatAmountInInvoiceCurrency(Value: Currency);
begin
  ChildNodes['VatAmountInInvoiceCurrency'].NodeValue := Value;
end;

function TXMLHeadType.Get_Equalization: Integer;
begin
  Result := ChildNodes['Equalization'].NodeValue;
end;

procedure TXMLHeadType.Set_Equalization(Value: Integer);
begin
  ChildNodes['Equalization'].NodeValue := Value;
end;

function TXMLHeadType.Get_PayableAmountInInvoiceCurrency: Currency;
begin
  Result := ChildNodes['PayableAmountInInvoiceCurrency'].NodeValue;
end;

procedure TXMLHeadType.Set_PayableAmountInInvoiceCurrency(Value: Currency);
begin
  ChildNodes['PayableAmountInInvoiceCurrency'].NodeValue := Value;
end;

function TXMLHeadType.Get_TermsOfPaymentCashDiscount: Double;
begin
  Result := ChildNodes['TermsOfPaymentCashDiscount'].NodeValue;
end;

procedure TXMLHeadType.Set_TermsOfPaymentCashDiscount(Value: Double);
begin
  ChildNodes['TermsOfPaymentCashDiscount'].NodeValue := Value;
end;

function TXMLHeadType.Get_TermsOfPaymentCashDiscountDate: String;
begin
  Result := ChildNodes['TermsOfPaymentCashDiscountDate'].NodeValue;
end;

procedure TXMLHeadType.Set_TermsOfPaymentCashDiscountDate(Value: String);
begin
  ChildNodes['TermsOfPaymentCashDiscountDate'].NodeValue := Value;
end;

function TXMLHeadType.Get_AgreementNumber: String;
begin
  Result := ChildNodes['AgreementNumber'].NodeValue;
end;

procedure TXMLHeadType.Set_AgreementNumber(Value: String);
begin
  ChildNodes['AgreementNumber'].NodeValue := Value;
end;

{ TXMLBuyerType }

procedure TXMLBuyerType.AfterConstruction;
begin
  RegisterChildNode('InvoiceAddress', TXMLInvoiceAddressType);
  RegisterChildNode('DeliveryAddress', TXMLDeliveryAddressType);
  inherited;
end;

function TXMLBuyerType.Get_BuyerCode: UnicodeString;
begin
  Result := ChildNodes['BuyerCode'].Text;
end;

procedure TXMLBuyerType.Set_BuyerCode(Value: UnicodeString);
begin
  ChildNodes['BuyerCode'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerName: UnicodeString;
begin
  Result := ChildNodes['BuyerName'].Text;
end;

procedure TXMLBuyerType.Set_BuyerName(Value: UnicodeString);
begin
  ChildNodes['BuyerName'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerVATRegistrationNumber: UnicodeString;
begin
  Result := ChildNodes['BuyerVATRegistrationNumber'].Text;
end;

procedure TXMLBuyerType.Set_BuyerVATRegistrationNumber(Value: UnicodeString);
begin
  ChildNodes['BuyerVATRegistrationNumber'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerRegistrationNumber: String;
begin
  Result := ChildNodes['BuyerRegistrationNumber'].NodeValue;
end;

procedure TXMLBuyerType.Set_BuyerRegistrationNumber(Value: String);
begin
  ChildNodes['BuyerRegistrationNumber'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerCountryCode: UnicodeString;
begin
  Result := ChildNodes['BuyerCountryCode'].Text;
end;

procedure TXMLBuyerType.Set_BuyerCountryCode(Value: UnicodeString);
begin
  ChildNodes['BuyerCountryCode'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerReference: UnicodeString;
begin
  Result := ChildNodes['BuyerReference'].Text;
end;

procedure TXMLBuyerType.Set_BuyerReference(Value: UnicodeString);
begin
  ChildNodes['BuyerReference'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerReferencePhone: String;
begin
  Result := ChildNodes['BuyerReferencePhone'].NodeValue;
end;

procedure TXMLBuyerType.Set_BuyerReferencePhone(Value: String);
begin
  ChildNodes['BuyerReferencePhone'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerReferenceFax: String;
begin
  Result := ChildNodes['BuyerReferenceFax'].NodeValue;
end;

procedure TXMLBuyerType.Set_BuyerReferenceFax(Value: String);
begin
  ChildNodes['BuyerReferenceFax'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerReferenceEmail: UnicodeString;
begin
  Result := ChildNodes['BuyerReferenceEmail'].Text;
end;

procedure TXMLBuyerType.Set_BuyerReferenceEmail(Value: UnicodeString);
begin
  ChildNodes['BuyerReferenceEmail'].NodeValue := Value;
end;

function TXMLBuyerType.Get_InvoiceAddress: IXMLInvoiceAddressType;
begin
  Result := ChildNodes['InvoiceAddress'] as IXMLInvoiceAddressType;
end;

function TXMLBuyerType.Get_DeliveryAddress: IXMLDeliveryAddressType;
begin
  Result := ChildNodes['DeliveryAddress'] as IXMLDeliveryAddressType;
end;

function TXMLBuyerType.Get_GlobalLocationNumber: String;
begin
  Result := ChildNodes['GlobalLocationNumber'].NodeValue;
end;

procedure TXMLBuyerType.Set_GlobalLocationNumber(Value: String);
begin
  ChildNodes['GlobalLocationNumber'].NodeValue := Value;
end;

{ TXMLInvoiceAddressType }

function TXMLInvoiceAddressType.Get_InvoiceAddressName: UnicodeString;
begin
  Result := ChildNodes['InvoiceAddressName'].Text;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressName(Value: UnicodeString);
begin
  ChildNodes['InvoiceAddressName'].NodeValue := Value;
end;

function TXMLInvoiceAddressType.Get_InvoiceAddressStreetBox1: String;
begin
  Result := ChildNodes['InvoiceAddressStreetBox1'].NodeValue;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressStreetBox1(Value: String);
begin
  ChildNodes['InvoiceAddressStreetBox1'].NodeValue := Value;
end;

function TXMLInvoiceAddressType.Get_InvoiceAddressStreetBox2: UnicodeString;
begin
  Result := ChildNodes['InvoiceAddressStreetBox2'].Text;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressStreetBox2(Value: UnicodeString);
begin
  ChildNodes['InvoiceAddressStreetBox2'].NodeValue := Value;
end;

function TXMLInvoiceAddressType.Get_InvoiceAddressZipCity1: UnicodeString;
begin
  Result := ChildNodes['InvoiceAddressZipCity1'].Text;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressZipCity1(Value: UnicodeString);
begin
  ChildNodes['InvoiceAddressZipCity1'].NodeValue := Value;
end;

function TXMLInvoiceAddressType.Get_InvoiceAddressZipCity2: String;
begin
  Result := ChildNodes['InvoiceAddressZipCity2'].NodeValue;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressZipCity2(Value: String);
begin
  ChildNodes['InvoiceAddressZipCity2'].NodeValue := Value;
end;

function TXMLInvoiceAddressType.Get_InvoiceAddressCountry: UnicodeString;
begin
  Result := ChildNodes['InvoiceAddressCountry'].Text;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressCountry(Value: UnicodeString);
begin
  ChildNodes['InvoiceAddressCountry'].NodeValue := Value;
end;

{ TXMLDeliveryAddressType }

function TXMLDeliveryAddressType.Get_DeliveryAddressName: UnicodeString;
begin
  Result := ChildNodes['DeliveryAddressName'].Text;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressName(Value: UnicodeString);
begin
  ChildNodes['DeliveryAddressName'].NodeValue := Value;
end;

function TXMLDeliveryAddressType.Get_DeliveryAddressStreetBox1: UnicodeString;
begin
  Result := ChildNodes['DeliveryAddressStreetBox1'].Text;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressStreetBox1(Value: UnicodeString);
begin
  ChildNodes['DeliveryAddressStreetBox1'].NodeValue := Value;
end;

function TXMLDeliveryAddressType.Get_DeliveryAddressStreetBox2: String;
begin
  Result := ChildNodes['DeliveryAddressStreetBox2'].NodeValue;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressStreetBox2(Value: String);
begin
  ChildNodes['DeliveryAddressStreetBox2'].NodeValue := Value;
end;

function TXMLDeliveryAddressType.Get_DeliveryAddressZipCity1: UnicodeString;
begin
  Result := ChildNodes['DeliveryAddressZipCity1'].Text;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressZipCity1(Value: UnicodeString);
begin
  ChildNodes['DeliveryAddressZipCity1'].NodeValue := Value;
end;

function TXMLDeliveryAddressType.Get_DeliveryAddressZipCity2: String;
begin
  Result := ChildNodes['DeliveryAddressZipCity2'].NodeValue;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressZipCity2(Value: String);
begin
  ChildNodes['DeliveryAddressZipCity2'].NodeValue := Value;
end;

function TXMLDeliveryAddressType.Get_DeliveryAddressCountry: UnicodeString;
begin
  Result := ChildNodes['DeliveryAddressCountry'].Text;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressCountry(Value: UnicodeString);
begin
  ChildNodes['DeliveryAddressCountry'].NodeValue := Value;
end;

{ TXMLSellerType }

procedure TXMLSellerType.AfterConstruction;
begin
  RegisterChildNode('PostalAddress', TXMLPostalAddressType);
  RegisterChildNode('VisitingAddress', TXMLVisitingAddressType);
  inherited;
end;

function TXMLSellerType.Get_SellerSuplierCode: UnicodeString;
begin
  Result := ChildNodes['SellerSuplierCode'].Text;
end;

procedure TXMLSellerType.Set_SellerSuplierCode(Value: UnicodeString);
begin
  ChildNodes['SellerSuplierCode'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerName: UnicodeString;
begin
  Result := ChildNodes['SellerName'].Text;
end;

procedure TXMLSellerType.Set_SellerName(Value: UnicodeString);
begin
  ChildNodes['SellerName'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerReference: UnicodeString;
begin
  Result := ChildNodes['SellerReference'].Text;
end;

procedure TXMLSellerType.Set_SellerReference(Value: UnicodeString);
begin
  ChildNodes['SellerReference'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerReferencePhone: UnicodeString;
begin
  Result := ChildNodes['SellerReferencePhone'].Text;
end;

procedure TXMLSellerType.Set_SellerReferencePhone(Value: UnicodeString);
begin
  ChildNodes['SellerReferencePhone'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerReferenceFax: String;
begin
  Result := ChildNodes['SellerReferenceFax'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerReferenceFax(Value: String);
begin
  ChildNodes['SellerReferenceFax'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerReferenceEmail: UnicodeString;
begin
  Result := ChildNodes['SellerReferenceEmail'].Text;
end;

procedure TXMLSellerType.Set_SellerReferenceEmail(Value: UnicodeString);
begin
  ChildNodes['SellerReferenceEmail'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerOrigin: UnicodeString;
begin
  Result := ChildNodes['SellerOrigin'].Text;
end;

procedure TXMLSellerType.Set_SellerOrigin(Value: UnicodeString);
begin
  ChildNodes['SellerOrigin'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerWeb: UnicodeString;
begin
  Result := ChildNodes['SellerWeb'].Text;
end;

procedure TXMLSellerType.Set_SellerWeb(Value: UnicodeString);
begin
  ChildNodes['SellerWeb'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerPhone: UnicodeString;
begin
  Result := ChildNodes['SellerPhone'].Text;
end;

procedure TXMLSellerType.Set_SellerPhone(Value: UnicodeString);
begin
  ChildNodes['SellerPhone'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerFax: UnicodeString;
begin
  Result := ChildNodes['SellerFax'].Text;
end;

procedure TXMLSellerType.Set_SellerFax(Value: UnicodeString);
begin
  ChildNodes['SellerFax'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerRegistrationNumber: UnicodeString;
begin
  Result := ChildNodes['SellerRegistrationNumber'].Text;
end;

procedure TXMLSellerType.Set_SellerRegistrationNumber(Value: UnicodeString);
begin
  ChildNodes['SellerRegistrationNumber'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerVatRegistrationNumber: UnicodeString;
begin
  Result := ChildNodes['SellerVatRegistrationNumber'].Text;
end;

procedure TXMLSellerType.Set_SellerVatRegistrationNumber(Value: UnicodeString);
begin
  ChildNodes['SellerVatRegistrationNumber'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerCountryCode: UnicodeString;
begin
  Result := ChildNodes['SellerCountryCode'].Text;
end;

procedure TXMLSellerType.Set_SellerCountryCode(Value: UnicodeString);
begin
  ChildNodes['SellerCountryCode'].NodeValue := Value;
end;

function TXMLSellerType.Get_PostalAddress: IXMLPostalAddressType;
begin
  Result := ChildNodes['PostalAddress'] as IXMLPostalAddressType;
end;

function TXMLSellerType.Get_VisitingAddress: IXMLVisitingAddressType;
begin
  Result := ChildNodes['VisitingAddress'] as IXMLVisitingAddressType;
end;

{ TXMLPostalAddressType }

function TXMLPostalAddressType.Get_PostalAddressStreetBox1: UnicodeString;
begin
  Result := ChildNodes['PostalAddressStreetBox1'].Text;
end;

procedure TXMLPostalAddressType.Set_PostalAddressStreetBox1(Value: UnicodeString);
begin
  ChildNodes['PostalAddressStreetBox1'].NodeValue := Value;
end;

function TXMLPostalAddressType.Get_PostalAddressStreetBox2: String;
begin
  Result := ChildNodes['PostalAddressStreetBox2'].NodeValue;
end;

procedure TXMLPostalAddressType.Set_PostalAddressStreetBox2(Value: String);
begin
  ChildNodes['PostalAddressStreetBox2'].NodeValue := Value;
end;

function TXMLPostalAddressType.Get_PostalAddressZipCity1: UnicodeString;
begin
  Result := ChildNodes['PostalAddressZipCity1'].Text;
end;

procedure TXMLPostalAddressType.Set_PostalAddressZipCity1(Value: UnicodeString);
begin
  ChildNodes['PostalAddressZipCity1'].NodeValue := Value;
end;

function TXMLPostalAddressType.Get_PostalAddressZipCity2: UnicodeString;
begin
  Result := ChildNodes['PostalAddressZipCity2'].Text;
end;

procedure TXMLPostalAddressType.Set_PostalAddressZipCity2(Value: UnicodeString);
begin
  ChildNodes['PostalAddressZipCity2'].NodeValue := Value;
end;

function TXMLPostalAddressType.Get_PostalAddressCountry: UnicodeString;
begin
  Result := ChildNodes['PostalAddressCountry'].Text;
end;

procedure TXMLPostalAddressType.Set_PostalAddressCountry(Value: UnicodeString);
begin
  ChildNodes['PostalAddressCountry'].NodeValue := Value;
end;

{ TXMLVisitingAddressType }

function TXMLVisitingAddressType.Get_VisitingAddressStreetBox1: UnicodeString;
begin
  Result := ChildNodes['VisitingAddressStreetBox1'].Text;
end;

procedure TXMLVisitingAddressType.Set_VisitingAddressStreetBox1(Value: UnicodeString);
begin
  ChildNodes['VisitingAddressStreetBox1'].NodeValue := Value;
end;

function TXMLVisitingAddressType.Get_VisitingAddressStreetBox2: String;
begin
  Result := ChildNodes['VisitingAddressStreetBox2'].NodeValue;
end;

procedure TXMLVisitingAddressType.Set_VisitingAddressStreetBox2(Value: String);
begin
  ChildNodes['VisitingAddressStreetBox2'].NodeValue := Value;
end;

function TXMLVisitingAddressType.Get_VisitingAddressZipCity1: UnicodeString;
begin
  Result := ChildNodes['VisitingAddressZipCity1'].Text;
end;

procedure TXMLVisitingAddressType.Set_VisitingAddressZipCity1(Value: UnicodeString);
begin
  ChildNodes['VisitingAddressZipCity1'].NodeValue := Value;
end;

function TXMLVisitingAddressType.Get_VisitingAddressZipCity2: UnicodeString;
begin
  Result := ChildNodes['VisitingAddressZipCity2'].Text;
end;

procedure TXMLVisitingAddressType.Set_VisitingAddressZipCity2(Value: UnicodeString);
begin
  ChildNodes['VisitingAddressZipCity2'].NodeValue := Value;
end;

function TXMLVisitingAddressType.Get_VisitingAddressCountry: UnicodeString;
begin
  Result := ChildNodes['VisitingAddressCountry'].Text;
end;

procedure TXMLVisitingAddressType.Set_VisitingAddressCountry(Value: UnicodeString);
begin
  ChildNodes['VisitingAddressCountry'].NodeValue := Value;
end;

{ TXMLFactoringType }

function TXMLFactoringType.Get_FactoringSetting: UnicodeString;
begin
  Result := ChildNodes['FactoringSetting'].Text;
end;

procedure TXMLFactoringType.Set_FactoringSetting(Value: UnicodeString);
begin
  ChildNodes['FactoringSetting'].NodeValue := Value;
end;

function TXMLFactoringType.Get_FactoringBankName: String;
begin
  Result := ChildNodes['FactoringBankName'].NodeValue;
end;

procedure TXMLFactoringType.Set_FactoringBankName(Value: String);
begin
  ChildNodes['FactoringBankName'].NodeValue := Value;
end;

function TXMLFactoringType.Get_FactoringAccountNumber: String;
begin
  Result := ChildNodes['FactoringAccountNumber'].NodeValue;
end;

procedure TXMLFactoringType.Set_FactoringAccountNumber(Value: String);
begin
  ChildNodes['FactoringAccountNumber'].NodeValue := Value;
end;

function TXMLFactoringType.Get_FactoringSwiftAddress: String;
begin
  Result := ChildNodes['FactoringSwiftAddress'].NodeValue;
end;

procedure TXMLFactoringType.Set_FactoringSwiftAddress(Value: String);
begin
  ChildNodes['FactoringSwiftAddress'].NodeValue := Value;
end;

function TXMLFactoringType.Get_FactoringBankGiroNumber: String;
begin
  Result := ChildNodes['FactoringBankGiroNumber'].NodeValue;
end;

procedure TXMLFactoringType.Set_FactoringBankGiroNumber(Value: String);
begin
  ChildNodes['FactoringBankGiroNumber'].NodeValue := Value;
end;

function TXMLFactoringType.Get_FactoringPlusGiroNumber: String;
begin
  Result := ChildNodes['FactoringPlusGiroNumber'].NodeValue;
end;

procedure TXMLFactoringType.Set_FactoringPlusGiroNumber(Value: String);
begin
  ChildNodes['FactoringPlusGiroNumber'].NodeValue := Value;
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
  Result := List[Index] as IXMLRowType;
end;

function TXMLRowsType.Add: IXMLRowType;
begin
  Result := AddItem(-1) as IXMLRowType;
end;

function TXMLRowsType.Insert(const Index: Integer): IXMLRowType;
begin
  Result := AddItem(Index) as IXMLRowType;
end;

{ TXMLRowType }

function TXMLRowType.Get_RowNumber: Integer;
begin
  Result := AttributeNodes['RowNumber'].NodeValue;
end;

procedure TXMLRowType.Set_RowNumber(Value: Integer);
begin
  SetAttribute('RowNumber', Value);
end;

function TXMLRowType.Get_RowType: UnicodeString;
begin
  Result := AttributeNodes['RowType'].Text;
end;

procedure TXMLRowType.Set_RowType(Value: UnicodeString);
begin
  SetAttribute('RowType', Value);
end;

function TXMLRowType.Get_RowPosition: Integer;
begin
  Result := AttributeNodes['RowPosition'].NodeValue;
end;

procedure TXMLRowType.Set_RowPosition(Value: Integer);
begin
  SetAttribute('RowPosition', Value);
end;

function TXMLRowType.Get_CostType: UnicodeString;
begin
  Result := AttributeNodes['CostType'].Text;
end;

procedure TXMLRowType.Set_CostType(Value: UnicodeString);
begin
  SetAttribute('CostType', Value);
end;

function TXMLRowType.Get_BuyersPartNumber: UnicodeString;
begin
  Result := ChildNodes['BuyersPartNumber'].Text;
end;

procedure TXMLRowType.Set_BuyersPartNumber(Value: UnicodeString);
begin
  ChildNodes['BuyersPartNumber'].NodeValue := Value;
end;

function TXMLRowType.Get_SellersPartNumber: UnicodeString;
begin
  Result := ChildNodes['SellersPartNumber'].Text;
end;

procedure TXMLRowType.Set_SellersPartNumber(Value: UnicodeString);
begin
  ChildNodes['SellersPartNumber'].NodeValue := Value;
end;

function TXMLRowType.Get_PartDescription: UnicodeString;
begin
  Result := ChildNodes['PartDescription'].Text;
end;

procedure TXMLRowType.Set_PartDescription(Value: UnicodeString);
begin
  ChildNodes['PartDescription'].NodeValue := Value;
end;

function TXMLRowType.Get_DeliveryDate: UnicodeString;
begin
  Result := ChildNodes['DeliveryDate'].Text;
end;

procedure TXMLRowType.Set_DeliveryDate(Value: UnicodeString);
begin
  ChildNodes['DeliveryDate'].NodeValue := Value;
end;

function TXMLRowType.Get_Quantity: double;
begin
  Result := ChildNodes['Quantity'].NodeValue;
end;

procedure TXMLRowType.Set_Quantity(Value: double);
begin
  ChildNodes['Quantity'].NodeValue := Value;
end;

function TXMLRowType.Get_Unit_: UnicodeString;
begin
  Result := ChildNodes['Unit'].Text;
end;

procedure TXMLRowType.Set_Unit_(Value: UnicodeString);
begin
  ChildNodes['Unit'].NodeValue := Value;
end;

function TXMLRowType.Get_Each: Integer;
begin
  Result := ChildNodes['Each'].NodeValue;
end;

procedure TXMLRowType.Set_Each(Value: Integer);
begin
  ChildNodes['Each'].NodeValue := Value;
end;

function TXMLRowType.Get_Discount: double;
begin
  Result := ChildNodes['Discount'].NodeValue;
end;

procedure TXMLRowType.Set_Discount(Value: double);
begin
  ChildNodes['Discount'].NodeValue := Value;
end;

function TXMLRowType.Get_Price: currency;
begin
  Result := ChildNodes['Price'].NodeValue;
end;

procedure TXMLRowType.Set_Price(Value: currency);
begin
  ChildNodes['Price'].NodeValue := Value;
end;

function TXMLRowType.Get_VatRate: double;
begin
  Result := ChildNodes['VatRate'].NodeValue;
end;

procedure TXMLRowType.Set_VatRate(Value: double);
begin
  ChildNodes['VatRate'].NodeValue := Value;
end;

function TXMLRowType.Get_RowSum: currency;
begin
  Result := ChildNodes['RowSum'].NodeValue;
end;

procedure TXMLRowType.Set_RowSum(Value: currency);
begin
  ChildNodes['RowSum'].NodeValue := Value;
end;

function TXMLRowType.Get_BuyersOrderNumber: unicodeString;
begin
  Result := ChildNodes['BuyersOrderNumber'].NodeValue;
end;

procedure TXMLRowType.Set_BuyersOrderNumber(Value: unicodeString);
begin
  ChildNodes['BuyersOrderNumber'].NodeValue := Value;
end;

function TXMLRowType.Get_SellersOrderNumber: unicodeString;
begin
  Result := ChildNodes['SellersOrderNumber'].NodeValue;
end;

procedure TXMLRowType.Set_SellersOrderNumber(Value: unicodeString);
begin
  ChildNodes['SellersOrderNumber'].NodeValue := Value;
end;

function TXMLRowType.Get_CountryOfOriginCode: unicodeString;
begin
  Result := ChildNodes['CountryOfOriginCode'].NodeValue;
end;

procedure TXMLRowType.Set_CountryOfOriginCode(Value: unicodeString);
begin
  ChildNodes['CountryOfOriginCode'].NodeValue := Value;
end;

end.