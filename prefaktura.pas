
{************************************************************************************************************************}
{                                                                                                                        }
{                                                    XML Data Binding                                                    }
{                                                                                                                        }
{         Generated on: 2018-10-23 20:14:25                                                                              }
{       Generated from: C:\Users\Peter Holzer\Documents\Projekt\AMEK\Ängelholms Mek 2007 - Aktuell version\XML\315.xml   }
{   Settings stored in: C:\Users\Peter Holzer\Documents\Projekt\AMEK\Ängelholms Mek 2007 - Aktuell version\XML\315.xdb   }
{                                                                                                                        }
{************************************************************************************************************************}

unit prefaktura;

interface

uses xmldom, XMLDoc, XMLIntf,Variants;

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
    ['{4AA4360D-33A5-46D9-A3BA-CB8B401E0EEA}']
    { Property Accessors }
    function Get_SoftwareManufacturer: Integer;
    function Get_SoftwareName: Integer;
    function Get_SoftwareVersion: Integer;
    function Get_Invoice: IXMLInvoiceType;
    function Get_Head: IXMLHeadType;
    function Get_Rows: IXMLRowsType;
    procedure Set_SoftwareManufacturer(Value: Integer);
    procedure Set_SoftwareName(Value: Integer);
    procedure Set_SoftwareVersion(Value: Integer);
    { Methods & Properties }
    property SoftwareManufacturer: Integer read Get_SoftwareManufacturer write Set_SoftwareManufacturer;
    property SoftwareName: Integer read Get_SoftwareName write Set_SoftwareName;
    property SoftwareVersion: Integer read Get_SoftwareVersion write Set_SoftwareVersion;
    property Invoice: IXMLInvoiceType read Get_Invoice;
    property Head: IXMLHeadType read Get_Head;
    property Rows: IXMLRowsType read Get_Rows;
  end;

{ IXMLInvoiceType }

  IXMLInvoiceType = interface(IXMLNode)
    ['{A3999789-A5F4-4986-B4FB-E2F792152BEC}']
    { Property Accessors }
    function Get_InvoiceNumber: Integer;
    function Get_InvoiceType: Integer;
    procedure Set_InvoiceNumber(Value: Integer);
    procedure Set_InvoiceType(Value: Integer);
    { Methods & Properties }
    property InvoiceNumber: Integer read Get_InvoiceNumber write Set_InvoiceNumber;
    property InvoiceType: Integer read Get_InvoiceType write Set_InvoiceType;
  end;

{ IXMLHeadType }

  IXMLHeadType = interface(IXMLNode)
    ['{F9E620C1-1B3B-4CDC-B059-C76DEE19CBE4}']
    { Property Accessors }
    function Get_SellersOrderNumber: Integer;
    function Get_OrderDate: TDateTime;
    function Get_BuyersOrderNumber: Integer;
    function Get_DebitInvoiceNumber: Integer;
    function Get_InvoiceDate: TDateTime;
    function Get_LanguageNameCode: Integer;
    function Get_Buyer: IXMLBuyerType;
    function Get_Seller: IXMLSellerType;
    function Get_InvoiceCurrency: Integer;
    function Get_PaymentDueDate: Integer;
    function Get_CurrencyExchangeRate: Integer;
    function Get_RateOfExchangeDate: Integer;
    function Get_EuVatText: UnicodeString;
    function Get_GodsLabelLine1: Integer;
    function Get_GodsLabelLine2: UnicodeString;
    function Get_HomeCurrency: Integer;
    function Get_TermsOfPayment: Integer;
    function Get_TermsOfPaymentNoOfDays: Integer;
    function Get_BankName: Integer;
    function Get_AccountNumber: Integer;
    function Get_SwiftAddress: Integer;
    function Get_BankGiroNumber: UnicodeString;
    function Get_PlusGiroNumber: UnicodeString;
    function Get_Factoring: IXMLFactoringType;
    function Get_AlloyCost: Integer;
    function Get_FreightCost: Integer;
    function Get_PackingCost: Integer;
    function Get_InsuranceCost: Integer;
    function Get_NetAmountInInvoiceCurrency: Integer;
    function Get_InvoicingCharge: Integer;
    function Get_VatAmountInInvoiceCurrency: Integer;
    function Get_Equalization: Integer;
    function Get_PayableAmountInInvoiceCurrency: Integer;
    function Get_TermsOfPaymentCashDiscount: UnicodeString;
    function Get_TermsOfPaymentCashDiscountDate: UnicodeString;
    function Get_AgreementNumber: UnicodeString;
    procedure Set_SellersOrderNumber(Value: Integer);
    procedure Set_OrderDate(Value: TDateTime);
    procedure Set_BuyersOrderNumber(Value: Integer);
    procedure Set_DebitInvoiceNumber(Value: Integer);
    procedure Set_InvoiceDate(Value: TDateTime);
    procedure Set_LanguageNameCode(Value: Integer);
    procedure Set_InvoiceCurrency(Value: Integer);
    procedure Set_PaymentDueDate(Value: Integer);
    procedure Set_CurrencyExchangeRate(Value: Integer);
    procedure Set_RateOfExchangeDate(Value: Integer);
    procedure Set_EuVatText(Value: UnicodeString);
    procedure Set_GodsLabelLine1(Value: Integer);
    procedure Set_GodsLabelLine2(Value: UnicodeString);
    procedure Set_HomeCurrency(Value: Integer);
    procedure Set_TermsOfPayment(Value: Integer);
    procedure Set_TermsOfPaymentNoOfDays(Value: Integer);
    procedure Set_BankName(Value: Integer);
    procedure Set_AccountNumber(Value: Integer);
    procedure Set_SwiftAddress(Value: Integer);
    procedure Set_BankGiroNumber(Value: UnicodeString);
    procedure Set_PlusGiroNumber(Value: UnicodeString);
    procedure Set_AlloyCost(Value: Integer);
    procedure Set_FreightCost(Value: Integer);
    procedure Set_PackingCost(Value: Integer);
    procedure Set_InsuranceCost(Value: Integer);
    procedure Set_NetAmountInInvoiceCurrency(Value: Integer);
    procedure Set_InvoicingCharge(Value: Integer);
    procedure Set_VatAmountInInvoiceCurrency(Value: Integer);
    procedure Set_Equalization(Value: Integer);
    procedure Set_PayableAmountInInvoiceCurrency(Value: Integer);
    procedure Set_TermsOfPaymentCashDiscount(Value: UnicodeString);
    procedure Set_TermsOfPaymentCashDiscountDate(Value: UnicodeString);
    procedure Set_AgreementNumber(Value: UnicodeString);
    { Methods & Properties }
    property SellersOrderNumber: Integer read Get_SellersOrderNumber write Set_SellersOrderNumber;
    property OrderDate: TDateTime read Get_OrderDate write Set_OrderDate;
    property BuyersOrderNumber: Integer read Get_BuyersOrderNumber write Set_BuyersOrderNumber;
    property DebitInvoiceNumber: Integer read Get_DebitInvoiceNumber write Set_DebitInvoiceNumber;
    property InvoiceDate: TDateTime read Get_InvoiceDate write Set_InvoiceDate;
    property LanguageNameCode: Integer read Get_LanguageNameCode write Set_LanguageNameCode;
    property Buyer: IXMLBuyerType read Get_Buyer;
    property Seller: IXMLSellerType read Get_Seller;
    property InvoiceCurrency: Integer read Get_InvoiceCurrency write Set_InvoiceCurrency;
    property PaymentDueDate: Integer read Get_PaymentDueDate write Set_PaymentDueDate;
    property CurrencyExchangeRate: Integer read Get_CurrencyExchangeRate write Set_CurrencyExchangeRate;
    property RateOfExchangeDate: Integer read Get_RateOfExchangeDate write Set_RateOfExchangeDate;
    property EuVatText: UnicodeString read Get_EuVatText write Set_EuVatText;
    property GodsLabelLine1: Integer read Get_GodsLabelLine1 write Set_GodsLabelLine1;
    property GodsLabelLine2: UnicodeString read Get_GodsLabelLine2 write Set_GodsLabelLine2;
    property HomeCurrency: Integer read Get_HomeCurrency write Set_HomeCurrency;
    property TermsOfPayment: Integer read Get_TermsOfPayment write Set_TermsOfPayment;
    property TermsOfPaymentNoOfDays: Integer read Get_TermsOfPaymentNoOfDays write Set_TermsOfPaymentNoOfDays;
    property BankName: Integer read Get_BankName write Set_BankName;
    property AccountNumber: Integer read Get_AccountNumber write Set_AccountNumber;
    property SwiftAddress: Integer read Get_SwiftAddress write Set_SwiftAddress;
    property BankGiroNumber: UnicodeString read Get_BankGiroNumber write Set_BankGiroNumber;
    property PlusGiroNumber: UnicodeString read Get_PlusGiroNumber write Set_PlusGiroNumber;
    property Factoring: IXMLFactoringType read Get_Factoring;
    property AlloyCost: Integer read Get_AlloyCost write Set_AlloyCost;
    property FreightCost: Integer read Get_FreightCost write Set_FreightCost;
    property PackingCost: Integer read Get_PackingCost write Set_PackingCost;
    property InsuranceCost: Integer read Get_InsuranceCost write Set_InsuranceCost;
    property NetAmountInInvoiceCurrency: Integer read Get_NetAmountInInvoiceCurrency write Set_NetAmountInInvoiceCurrency;
    property InvoicingCharge: Integer read Get_InvoicingCharge write Set_InvoicingCharge;
    property VatAmountInInvoiceCurrency: Integer read Get_VatAmountInInvoiceCurrency write Set_VatAmountInInvoiceCurrency;
    property Equalization: Integer read Get_Equalization write Set_Equalization;
    property PayableAmountInInvoiceCurrency: Integer read Get_PayableAmountInInvoiceCurrency write Set_PayableAmountInInvoiceCurrency;
    property TermsOfPaymentCashDiscount: UnicodeString read Get_TermsOfPaymentCashDiscount write Set_TermsOfPaymentCashDiscount;
    property TermsOfPaymentCashDiscountDate: UnicodeString read Get_TermsOfPaymentCashDiscountDate write Set_TermsOfPaymentCashDiscountDate;
    property AgreementNumber: UnicodeString read Get_AgreementNumber write Set_AgreementNumber;
  end;

{ IXMLBuyerType }

  IXMLBuyerType = interface(IXMLNode)
    ['{1363DF0A-B44A-4747-A735-B189543501A7}']
    { Property Accessors }
    function Get_BuyerCode: Integer;
    function Get_BuyerName: Integer;
    function Get_BuyerVATRegistrationNumber: Integer;
    function Get_BuyerRegistrationNumber: UnicodeString;
    function Get_BuyerCountryCode: Integer;
    function Get_BuyerReference: Integer;
    function Get_BuyerReferencePhone: UnicodeString;
    function Get_BuyerReferenceFax: UnicodeString;
    function Get_BuyerReferenceEmail: Integer;
    function Get_InvoiceAddress: IXMLInvoiceAddressType;
    function Get_DeliveryAddress: IXMLDeliveryAddressType;
    function Get_GlobalLocationNumber: UnicodeString;
    procedure Set_BuyerCode(Value: Integer);
    procedure Set_BuyerName(Value: Integer);
    procedure Set_BuyerVATRegistrationNumber(Value: Integer);
    procedure Set_BuyerRegistrationNumber(Value: UnicodeString);
    procedure Set_BuyerCountryCode(Value: Integer);
    procedure Set_BuyerReference(Value: Integer);
    procedure Set_BuyerReferencePhone(Value: UnicodeString);
    procedure Set_BuyerReferenceFax(Value: UnicodeString);
    procedure Set_BuyerReferenceEmail(Value: Integer);
    procedure Set_GlobalLocationNumber(Value: UnicodeString);
    { Methods & Properties }
    property BuyerCode: Integer read Get_BuyerCode write Set_BuyerCode;
    property BuyerName: Integer read Get_BuyerName write Set_BuyerName;
    property BuyerVATRegistrationNumber: Integer read Get_BuyerVATRegistrationNumber write Set_BuyerVATRegistrationNumber;
    property BuyerRegistrationNumber: UnicodeString read Get_BuyerRegistrationNumber write Set_BuyerRegistrationNumber;
    property BuyerCountryCode: Integer read Get_BuyerCountryCode write Set_BuyerCountryCode;
    property BuyerReference: Integer read Get_BuyerReference write Set_BuyerReference;
    property BuyerReferencePhone: UnicodeString read Get_BuyerReferencePhone write Set_BuyerReferencePhone;
    property BuyerReferenceFax: UnicodeString read Get_BuyerReferenceFax write Set_BuyerReferenceFax;
    property BuyerReferenceEmail: Integer read Get_BuyerReferenceEmail write Set_BuyerReferenceEmail;
    property InvoiceAddress: IXMLInvoiceAddressType read Get_InvoiceAddress;
    property DeliveryAddress: IXMLDeliveryAddressType read Get_DeliveryAddress;
    property GlobalLocationNumber: UnicodeString read Get_GlobalLocationNumber write Set_GlobalLocationNumber;
  end;

{ IXMLInvoiceAddressType }

  IXMLInvoiceAddressType = interface(IXMLNode)
    ['{CC7A30F3-8D94-468E-98C4-CA59C16AB16C}']
    { Property Accessors }
    function Get_InvoiceAddressName: Integer;
    function Get_InvoiceAddressStreetBox1: UnicodeString;
    function Get_InvoiceAddressStreetBox2: Integer;
    function Get_InvoiceAddressZipCity1: Integer;
    function Get_InvoiceAddressZipCity2: UnicodeString;
    function Get_InvoiceAddressCountry: Integer;
    procedure Set_InvoiceAddressName(Value: Integer);
    procedure Set_InvoiceAddressStreetBox1(Value: UnicodeString);
    procedure Set_InvoiceAddressStreetBox2(Value: Integer);
    procedure Set_InvoiceAddressZipCity1(Value: Integer);
    procedure Set_InvoiceAddressZipCity2(Value: UnicodeString);
    procedure Set_InvoiceAddressCountry(Value: Integer);
    { Methods & Properties }
    property InvoiceAddressName: Integer read Get_InvoiceAddressName write Set_InvoiceAddressName;
    property InvoiceAddressStreetBox1: UnicodeString read Get_InvoiceAddressStreetBox1 write Set_InvoiceAddressStreetBox1;
    property InvoiceAddressStreetBox2: Integer read Get_InvoiceAddressStreetBox2 write Set_InvoiceAddressStreetBox2;
    property InvoiceAddressZipCity1: Integer read Get_InvoiceAddressZipCity1 write Set_InvoiceAddressZipCity1;
    property InvoiceAddressZipCity2: UnicodeString read Get_InvoiceAddressZipCity2 write Set_InvoiceAddressZipCity2;
    property InvoiceAddressCountry: Integer read Get_InvoiceAddressCountry write Set_InvoiceAddressCountry;
  end;

{ IXMLDeliveryAddressType }

  IXMLDeliveryAddressType = interface(IXMLNode)
    ['{84322584-59EC-4BAA-A0AE-6B3929CBB8CB}']
    { Property Accessors }
    function Get_DeliveryAddressName: Integer;
    function Get_DeliveryAddressStreetBox1: Integer;
    function Get_DeliveryAddressStreetBox2: UnicodeString;
    function Get_DeliveryAddressZipCity1: Integer;
    function Get_DeliveryAddressZipCity2: UnicodeString;
    function Get_DeliveryAddressCountry: Integer;
    procedure Set_DeliveryAddressName(Value: Integer);
    procedure Set_DeliveryAddressStreetBox1(Value: Integer);
    procedure Set_DeliveryAddressStreetBox2(Value: UnicodeString);
    procedure Set_DeliveryAddressZipCity1(Value: Integer);
    procedure Set_DeliveryAddressZipCity2(Value: UnicodeString);
    procedure Set_DeliveryAddressCountry(Value: Integer);
    { Methods & Properties }
    property DeliveryAddressName: Integer read Get_DeliveryAddressName write Set_DeliveryAddressName;
    property DeliveryAddressStreetBox1: Integer read Get_DeliveryAddressStreetBox1 write Set_DeliveryAddressStreetBox1;
    property DeliveryAddressStreetBox2: UnicodeString read Get_DeliveryAddressStreetBox2 write Set_DeliveryAddressStreetBox2;
    property DeliveryAddressZipCity1: Integer read Get_DeliveryAddressZipCity1 write Set_DeliveryAddressZipCity1;
    property DeliveryAddressZipCity2: UnicodeString read Get_DeliveryAddressZipCity2 write Set_DeliveryAddressZipCity2;
    property DeliveryAddressCountry: Integer read Get_DeliveryAddressCountry write Set_DeliveryAddressCountry;
  end;

{ IXMLSellerType }

  IXMLSellerType = interface(IXMLNode)
    ['{8725D56D-C98F-49AB-8BB2-F9C71127D114}']
    { Property Accessors }
    function Get_SellerSuplierCode: Integer;
    function Get_SellerName: Integer;
    function Get_SellerReference: Integer;
    function Get_SellerReferencePhone: Integer;
    function Get_SellerReferenceFax: UnicodeString;
    function Get_SellerReferenceEmail: Integer;
    function Get_SellerOrigin: Integer;
    function Get_SellerWeb: Integer;
    function Get_SellerPhone: Integer;
    function Get_SellerFax: Integer;
    function Get_SellerRegistrationNumber: Integer;
    function Get_SellerVatRegistrationNumber: Integer;
    function Get_SellerCountryCode: Integer;
    function Get_PostalAddress: IXMLPostalAddressType;
    function Get_VisitingAddress: IXMLVisitingAddressType;
    procedure Set_SellerSuplierCode(Value: Integer);
    procedure Set_SellerName(Value: Integer);
    procedure Set_SellerReference(Value: Integer);
    procedure Set_SellerReferencePhone(Value: Integer);
    procedure Set_SellerReferenceFax(Value: UnicodeString);
    procedure Set_SellerReferenceEmail(Value: Integer);
    procedure Set_SellerOrigin(Value: Integer);
    procedure Set_SellerWeb(Value: Integer);
    procedure Set_SellerPhone(Value: Integer);
    procedure Set_SellerFax(Value: Integer);
    procedure Set_SellerRegistrationNumber(Value: Integer);
    procedure Set_SellerVatRegistrationNumber(Value: Integer);
    procedure Set_SellerCountryCode(Value: Integer);
    { Methods & Properties }
    property SellerSuplierCode: Integer read Get_SellerSuplierCode write Set_SellerSuplierCode;
    property SellerName: Integer read Get_SellerName write Set_SellerName;
    property SellerReference: Integer read Get_SellerReference write Set_SellerReference;
    property SellerReferencePhone: Integer read Get_SellerReferencePhone write Set_SellerReferencePhone;
    property SellerReferenceFax: UnicodeString read Get_SellerReferenceFax write Set_SellerReferenceFax;
    property SellerReferenceEmail: Integer read Get_SellerReferenceEmail write Set_SellerReferenceEmail;
    property SellerOrigin: Integer read Get_SellerOrigin write Set_SellerOrigin;
    property SellerWeb: Integer read Get_SellerWeb write Set_SellerWeb;
    property SellerPhone: Integer read Get_SellerPhone write Set_SellerPhone;
    property SellerFax: Integer read Get_SellerFax write Set_SellerFax;
    property SellerRegistrationNumber: Integer read Get_SellerRegistrationNumber write Set_SellerRegistrationNumber;
    property SellerVatRegistrationNumber: Integer read Get_SellerVatRegistrationNumber write Set_SellerVatRegistrationNumber;
    property SellerCountryCode: Integer read Get_SellerCountryCode write Set_SellerCountryCode;
    property PostalAddress: IXMLPostalAddressType read Get_PostalAddress;
    property VisitingAddress: IXMLVisitingAddressType read Get_VisitingAddress;
  end;

{ IXMLPostalAddressType }

  IXMLPostalAddressType = interface(IXMLNode)
    ['{01C76CD9-FA1A-42B3-A3B1-043109924C57}']
    { Property Accessors }
    function Get_PostalAddressStreetBox1: Integer;
    function Get_PostalAddressStreetBox2: UnicodeString;
    function Get_PostalAddressZipCity1: Integer;
    function Get_PostalAddressZipCity2: Integer;
    function Get_PostalAddressCountry: Integer;
    procedure Set_PostalAddressStreetBox1(Value: Integer);
    procedure Set_PostalAddressStreetBox2(Value: UnicodeString);
    procedure Set_PostalAddressZipCity1(Value: Integer);
    procedure Set_PostalAddressZipCity2(Value: Integer);
    procedure Set_PostalAddressCountry(Value: Integer);
    { Methods & Properties }
    property PostalAddressStreetBox1: Integer read Get_PostalAddressStreetBox1 write Set_PostalAddressStreetBox1;
    property PostalAddressStreetBox2: UnicodeString read Get_PostalAddressStreetBox2 write Set_PostalAddressStreetBox2;
    property PostalAddressZipCity1: Integer read Get_PostalAddressZipCity1 write Set_PostalAddressZipCity1;
    property PostalAddressZipCity2: Integer read Get_PostalAddressZipCity2 write Set_PostalAddressZipCity2;
    property PostalAddressCountry: Integer read Get_PostalAddressCountry write Set_PostalAddressCountry;
  end;

{ IXMLVisitingAddressType }

  IXMLVisitingAddressType = interface(IXMLNode)
    ['{A5EAFB83-CFBC-4AE0-B6E2-2572DF96453B}']
    { Property Accessors }
    function Get_VisitingAddressStreetBox1: Integer;
    function Get_VisitingAddressStreetBox2: UnicodeString;
    function Get_VisitingAddressZipCity1: Integer;
    function Get_VisitingAddressZipCity2: Integer;
    function Get_VisitingAddressCountry: Integer;
    procedure Set_VisitingAddressStreetBox1(Value: Integer);
    procedure Set_VisitingAddressStreetBox2(Value: UnicodeString);
    procedure Set_VisitingAddressZipCity1(Value: Integer);
    procedure Set_VisitingAddressZipCity2(Value: Integer);
    procedure Set_VisitingAddressCountry(Value: Integer);
    { Methods & Properties }
    property VisitingAddressStreetBox1: Integer read Get_VisitingAddressStreetBox1 write Set_VisitingAddressStreetBox1;
    property VisitingAddressStreetBox2: UnicodeString read Get_VisitingAddressStreetBox2 write Set_VisitingAddressStreetBox2;
    property VisitingAddressZipCity1: Integer read Get_VisitingAddressZipCity1 write Set_VisitingAddressZipCity1;
    property VisitingAddressZipCity2: Integer read Get_VisitingAddressZipCity2 write Set_VisitingAddressZipCity2;
    property VisitingAddressCountry: Integer read Get_VisitingAddressCountry write Set_VisitingAddressCountry;
  end;

{ IXMLFactoringType }

  IXMLFactoringType = interface(IXMLNode)
    ['{F0BAABE4-F018-4838-96D0-84656B7F3065}']
    { Property Accessors }
    function Get_FactoringSetting: Integer;
    function Get_FactoringBankName: UnicodeString;
    function Get_FactoringAccountNumber: UnicodeString;
    function Get_FactoringSwiftAddress: UnicodeString;
    function Get_FactoringBankGiroNumber: UnicodeString;
    function Get_FactoringPlusGiroNumber: UnicodeString;
    procedure Set_FactoringSetting(Value: Integer);
    procedure Set_FactoringBankName(Value: UnicodeString);
    procedure Set_FactoringAccountNumber(Value: UnicodeString);
    procedure Set_FactoringSwiftAddress(Value: UnicodeString);
    procedure Set_FactoringBankGiroNumber(Value: UnicodeString);
    procedure Set_FactoringPlusGiroNumber(Value: UnicodeString);
    { Methods & Properties }
    property FactoringSetting: Integer read Get_FactoringSetting write Set_FactoringSetting;
    property FactoringBankName: UnicodeString read Get_FactoringBankName write Set_FactoringBankName;
    property FactoringAccountNumber: UnicodeString read Get_FactoringAccountNumber write Set_FactoringAccountNumber;
    property FactoringSwiftAddress: UnicodeString read Get_FactoringSwiftAddress write Set_FactoringSwiftAddress;
    property FactoringBankGiroNumber: UnicodeString read Get_FactoringBankGiroNumber write Set_FactoringBankGiroNumber;
    property FactoringPlusGiroNumber: UnicodeString read Get_FactoringPlusGiroNumber write Set_FactoringPlusGiroNumber;
  end;

{ IXMLRowsType }

  IXMLRowsType = interface(IXMLNodeCollection)
    ['{DCA0D824-CDD2-4288-A7D6-B2E9F0B14B28}']
    { Property Accessors }
    function Get_Row(Index: Integer): IXMLRowType;
    { Methods & Properties }
    function Add: IXMLRowType;
    function Insert(const Index: Integer): IXMLRowType;
    property Row[Index: Integer]: IXMLRowType read Get_Row; default;
  end;

{ IXMLRowType }

  IXMLRowType = interface(IXMLNode)
    ['{9589E793-070E-45C0-9B5F-300028AB5535}']
    { Property Accessors }
    function Get_RowNumber: Integer;
    function Get_RowType: Integer;
    function Get_RowPosition: Integer;
    function Get_CostType: Integer;
    function Get_BuyersPartNumber: Integer;
    function Get_SellersPartNumber: Integer;
    function Get_PartDescription: Integer;
    function Get_DeliveryDate: Integer;
    function Get_Quantity: Integer;
    function Get_Unit_: Integer;
    function Get_Each: Integer;
    function Get_Discount: Integer;
    function Get_Price: Integer;
    function Get_VatRate: Integer;
    function Get_RowSum: Integer;
    function Get_BuyersOrderNumber: Integer;
    function Get_SellersOrderNumber: Integer;
    function Get_CountryOfOriginCode: Integer;
    procedure Set_RowNumber(Value: Integer);
    procedure Set_RowType(Value: Integer);
    procedure Set_RowPosition(Value: Integer);
    procedure Set_CostType(Value: Integer);
    procedure Set_BuyersPartNumber(Value: Integer);
    procedure Set_SellersPartNumber(Value: Integer);
    procedure Set_PartDescription(Value: Integer);
    procedure Set_DeliveryDate(Value: Integer);
    procedure Set_Quantity(Value: Integer);
    procedure Set_Unit_(Value: Integer);
    procedure Set_Each(Value: Integer);
    procedure Set_Discount(Value: Integer);
    procedure Set_Price(Value: Integer);
    procedure Set_VatRate(Value: Integer);
    procedure Set_RowSum(Value: Integer);
    procedure Set_BuyersOrderNumber(Value: Integer);
    procedure Set_SellersOrderNumber(Value: Integer);
    procedure Set_CountryOfOriginCode(Value: Integer);
    { Methods & Properties }
    property RowNumber: Integer read Get_RowNumber write Set_RowNumber;
    property RowType: Integer read Get_RowType write Set_RowType;
    property RowPosition: Integer read Get_RowPosition write Set_RowPosition;
    property CostType: Integer read Get_CostType write Set_CostType;
    property BuyersPartNumber: Integer read Get_BuyersPartNumber write Set_BuyersPartNumber;
    property SellersPartNumber: Integer read Get_SellersPartNumber write Set_SellersPartNumber;
    property PartDescription: Integer read Get_PartDescription write Set_PartDescription;
    property DeliveryDate: Integer read Get_DeliveryDate write Set_DeliveryDate;
    property Quantity: Integer read Get_Quantity write Set_Quantity;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property Each: Integer read Get_Each write Set_Each;
    property Discount: Integer read Get_Discount write Set_Discount;
    property Price: Integer read Get_Price write Set_Price;
    property VatRate: Integer read Get_VatRate write Set_VatRate;
    property RowSum: Integer read Get_RowSum write Set_RowSum;
    property BuyersOrderNumber: Integer read Get_BuyersOrderNumber write Set_BuyersOrderNumber;
    property SellersOrderNumber: Integer read Get_SellersOrderNumber write Set_SellersOrderNumber;
    property CountryOfOriginCode: Integer read Get_CountryOfOriginCode write Set_CountryOfOriginCode;
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
    function Get_SoftwareManufacturer: Integer;
    function Get_SoftwareName: Integer;
    function Get_SoftwareVersion: Integer;
    function Get_Invoice: IXMLInvoiceType;
    function Get_Head: IXMLHeadType;
    function Get_Rows: IXMLRowsType;
    procedure Set_SoftwareManufacturer(Value: Integer);
    procedure Set_SoftwareName(Value: Integer);
    procedure Set_SoftwareVersion(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInvoiceType }

  TXMLInvoiceType = class(TXMLNode, IXMLInvoiceType)
  protected
    { IXMLInvoiceType }
    function Get_InvoiceNumber: Integer;
    function Get_InvoiceType: Integer;
    procedure Set_InvoiceNumber(Value: Integer);
    procedure Set_InvoiceType(Value: Integer);
  end;

{ TXMLHeadType }

  TXMLHeadType = class(TXMLNode, IXMLHeadType)
  protected
    { IXMLHeadType }
    function Get_SellersOrderNumber: Integer;
    function Get_OrderDate: TDateTime;
    function Get_BuyersOrderNumber: Integer;
    function Get_DebitInvoiceNumber: Integer;
    function Get_InvoiceDate: TDateTime;
    function Get_LanguageNameCode: Integer;
    function Get_Buyer: IXMLBuyerType;
    function Get_Seller: IXMLSellerType;
    function Get_InvoiceCurrency: Integer;
    function Get_PaymentDueDate: Integer;
    function Get_CurrencyExchangeRate: Integer;
    function Get_RateOfExchangeDate: Integer;
    function Get_EuVatText: UnicodeString;
    function Get_GodsLabelLine1: Integer;
    function Get_GodsLabelLine2: UnicodeString;
    function Get_HomeCurrency: Integer;
    function Get_TermsOfPayment: Integer;
    function Get_TermsOfPaymentNoOfDays: Integer;
    function Get_BankName: Integer;
    function Get_AccountNumber: Integer;
    function Get_SwiftAddress: Integer;
    function Get_BankGiroNumber: UnicodeString;
    function Get_PlusGiroNumber: UnicodeString;
    function Get_Factoring: IXMLFactoringType;
    function Get_AlloyCost: Integer;
    function Get_FreightCost: Integer;
    function Get_PackingCost: Integer;
    function Get_InsuranceCost: Integer;
    function Get_NetAmountInInvoiceCurrency: Integer;
    function Get_InvoicingCharge: Integer;
    function Get_VatAmountInInvoiceCurrency: Integer;
    function Get_Equalization: Integer;
    function Get_PayableAmountInInvoiceCurrency: Integer;
    function Get_TermsOfPaymentCashDiscount: UnicodeString;
    function Get_TermsOfPaymentCashDiscountDate: UnicodeString;
    function Get_AgreementNumber: UnicodeString;
    procedure Set_SellersOrderNumber(Value: Integer);
    procedure Set_OrderDate(Value: TDateTime);
    procedure Set_BuyersOrderNumber(Value: Integer);
    procedure Set_DebitInvoiceNumber(Value: Integer);
    procedure Set_InvoiceDate(Value: TDateTime);
    procedure Set_LanguageNameCode(Value: Integer);
    procedure Set_InvoiceCurrency(Value: Integer);
    procedure Set_PaymentDueDate(Value: Integer);
    procedure Set_CurrencyExchangeRate(Value: Integer);
    procedure Set_RateOfExchangeDate(Value: Integer);
    procedure Set_EuVatText(Value: UnicodeString);
    procedure Set_GodsLabelLine1(Value: Integer);
    procedure Set_GodsLabelLine2(Value: UnicodeString);
    procedure Set_HomeCurrency(Value: Integer);
    procedure Set_TermsOfPayment(Value: Integer);
    procedure Set_TermsOfPaymentNoOfDays(Value: Integer);
    procedure Set_BankName(Value: Integer);
    procedure Set_AccountNumber(Value: Integer);
    procedure Set_SwiftAddress(Value: Integer);
    procedure Set_BankGiroNumber(Value: UnicodeString);
    procedure Set_PlusGiroNumber(Value: UnicodeString);
    procedure Set_AlloyCost(Value: Integer);
    procedure Set_FreightCost(Value: Integer);
    procedure Set_PackingCost(Value: Integer);
    procedure Set_InsuranceCost(Value: Integer);
    procedure Set_NetAmountInInvoiceCurrency(Value: Integer);
    procedure Set_InvoicingCharge(Value: Integer);
    procedure Set_VatAmountInInvoiceCurrency(Value: Integer);
    procedure Set_Equalization(Value: Integer);
    procedure Set_PayableAmountInInvoiceCurrency(Value: Integer);
    procedure Set_TermsOfPaymentCashDiscount(Value: UnicodeString);
    procedure Set_TermsOfPaymentCashDiscountDate(Value: UnicodeString);
    procedure Set_AgreementNumber(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLBuyerType }

  TXMLBuyerType = class(TXMLNode, IXMLBuyerType)
  protected
    { IXMLBuyerType }
    function Get_BuyerCode: Integer;
    function Get_BuyerName: Integer;
    function Get_BuyerVATRegistrationNumber: Integer;
    function Get_BuyerRegistrationNumber: UnicodeString;
    function Get_BuyerCountryCode: Integer;
    function Get_BuyerReference: Integer;
    function Get_BuyerReferencePhone: UnicodeString;
    function Get_BuyerReferenceFax: UnicodeString;
    function Get_BuyerReferenceEmail: Integer;
    function Get_InvoiceAddress: IXMLInvoiceAddressType;
    function Get_DeliveryAddress: IXMLDeliveryAddressType;
    function Get_GlobalLocationNumber: UnicodeString;
    procedure Set_BuyerCode(Value: Integer);
    procedure Set_BuyerName(Value: Integer);
    procedure Set_BuyerVATRegistrationNumber(Value: Integer);
    procedure Set_BuyerRegistrationNumber(Value: UnicodeString);
    procedure Set_BuyerCountryCode(Value: Integer);
    procedure Set_BuyerReference(Value: Integer);
    procedure Set_BuyerReferencePhone(Value: UnicodeString);
    procedure Set_BuyerReferenceFax(Value: UnicodeString);
    procedure Set_BuyerReferenceEmail(Value: Integer);
    procedure Set_GlobalLocationNumber(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLInvoiceAddressType }

  TXMLInvoiceAddressType = class(TXMLNode, IXMLInvoiceAddressType)
  protected
    { IXMLInvoiceAddressType }
    function Get_InvoiceAddressName: Integer;
    function Get_InvoiceAddressStreetBox1: UnicodeString;
    function Get_InvoiceAddressStreetBox2: Integer;
    function Get_InvoiceAddressZipCity1: Integer;
    function Get_InvoiceAddressZipCity2: UnicodeString;
    function Get_InvoiceAddressCountry: Integer;
    procedure Set_InvoiceAddressName(Value: Integer);
    procedure Set_InvoiceAddressStreetBox1(Value: UnicodeString);
    procedure Set_InvoiceAddressStreetBox2(Value: Integer);
    procedure Set_InvoiceAddressZipCity1(Value: Integer);
    procedure Set_InvoiceAddressZipCity2(Value: UnicodeString);
    procedure Set_InvoiceAddressCountry(Value: Integer);
  end;

{ TXMLDeliveryAddressType }

  TXMLDeliveryAddressType = class(TXMLNode, IXMLDeliveryAddressType)
  protected
    { IXMLDeliveryAddressType }
    function Get_DeliveryAddressName: Integer;
    function Get_DeliveryAddressStreetBox1: Integer;
    function Get_DeliveryAddressStreetBox2: UnicodeString;
    function Get_DeliveryAddressZipCity1: Integer;
    function Get_DeliveryAddressZipCity2: UnicodeString;
    function Get_DeliveryAddressCountry: Integer;
    procedure Set_DeliveryAddressName(Value: Integer);
    procedure Set_DeliveryAddressStreetBox1(Value: Integer);
    procedure Set_DeliveryAddressStreetBox2(Value: UnicodeString);
    procedure Set_DeliveryAddressZipCity1(Value: Integer);
    procedure Set_DeliveryAddressZipCity2(Value: UnicodeString);
    procedure Set_DeliveryAddressCountry(Value: Integer);
  end;

{ TXMLSellerType }

  TXMLSellerType = class(TXMLNode, IXMLSellerType)
  protected
    { IXMLSellerType }
    function Get_SellerSuplierCode: Integer;
    function Get_SellerName: Integer;
    function Get_SellerReference: Integer;
    function Get_SellerReferencePhone: Integer;
    function Get_SellerReferenceFax: UnicodeString;
    function Get_SellerReferenceEmail: Integer;
    function Get_SellerOrigin: Integer;
    function Get_SellerWeb: Integer;
    function Get_SellerPhone: Integer;
    function Get_SellerFax: Integer;
    function Get_SellerRegistrationNumber: Integer;
    function Get_SellerVatRegistrationNumber: Integer;
    function Get_SellerCountryCode: Integer;
    function Get_PostalAddress: IXMLPostalAddressType;
    function Get_VisitingAddress: IXMLVisitingAddressType;
    procedure Set_SellerSuplierCode(Value: Integer);
    procedure Set_SellerName(Value: Integer);
    procedure Set_SellerReference(Value: Integer);
    procedure Set_SellerReferencePhone(Value: Integer);
    procedure Set_SellerReferenceFax(Value: UnicodeString);
    procedure Set_SellerReferenceEmail(Value: Integer);
    procedure Set_SellerOrigin(Value: Integer);
    procedure Set_SellerWeb(Value: Integer);
    procedure Set_SellerPhone(Value: Integer);
    procedure Set_SellerFax(Value: Integer);
    procedure Set_SellerRegistrationNumber(Value: Integer);
    procedure Set_SellerVatRegistrationNumber(Value: Integer);
    procedure Set_SellerCountryCode(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPostalAddressType }

  TXMLPostalAddressType = class(TXMLNode, IXMLPostalAddressType)
  protected
    { IXMLPostalAddressType }
    function Get_PostalAddressStreetBox1: Integer;
    function Get_PostalAddressStreetBox2: UnicodeString;
    function Get_PostalAddressZipCity1: Integer;
    function Get_PostalAddressZipCity2: Integer;
    function Get_PostalAddressCountry: Integer;
    procedure Set_PostalAddressStreetBox1(Value: Integer);
    procedure Set_PostalAddressStreetBox2(Value: UnicodeString);
    procedure Set_PostalAddressZipCity1(Value: Integer);
    procedure Set_PostalAddressZipCity2(Value: Integer);
    procedure Set_PostalAddressCountry(Value: Integer);
  end;

{ TXMLVisitingAddressType }

  TXMLVisitingAddressType = class(TXMLNode, IXMLVisitingAddressType)
  protected
    { IXMLVisitingAddressType }
    function Get_VisitingAddressStreetBox1: Integer;
    function Get_VisitingAddressStreetBox2: UnicodeString;
    function Get_VisitingAddressZipCity1: Integer;
    function Get_VisitingAddressZipCity2: Integer;
    function Get_VisitingAddressCountry: Integer;
    procedure Set_VisitingAddressStreetBox1(Value: Integer);
    procedure Set_VisitingAddressStreetBox2(Value: UnicodeString);
    procedure Set_VisitingAddressZipCity1(Value: Integer);
    procedure Set_VisitingAddressZipCity2(Value: Integer);
    procedure Set_VisitingAddressCountry(Value: Integer);
  end;

{ TXMLFactoringType }

  TXMLFactoringType = class(TXMLNode, IXMLFactoringType)
  protected
    { IXMLFactoringType }
    function Get_FactoringSetting: Integer;
    function Get_FactoringBankName: UnicodeString;
    function Get_FactoringAccountNumber: UnicodeString;
    function Get_FactoringSwiftAddress: UnicodeString;
    function Get_FactoringBankGiroNumber: UnicodeString;
    function Get_FactoringPlusGiroNumber: UnicodeString;
    procedure Set_FactoringSetting(Value: Integer);
    procedure Set_FactoringBankName(Value: UnicodeString);
    procedure Set_FactoringAccountNumber(Value: UnicodeString);
    procedure Set_FactoringSwiftAddress(Value: UnicodeString);
    procedure Set_FactoringBankGiroNumber(Value: UnicodeString);
    procedure Set_FactoringPlusGiroNumber(Value: UnicodeString);
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
    function Get_RowPosition: Integer;
    function Get_CostType: Integer;
    function Get_BuyersPartNumber: Integer;
    function Get_SellersPartNumber: Integer;
    function Get_PartDescription: Integer;
    function Get_DeliveryDate: Integer;
    function Get_Quantity: Integer;
    function Get_Unit_: Integer;
    function Get_Each: Integer;
    function Get_Discount: Integer;
    function Get_Price: Integer;
    function Get_VatRate: Integer;
    function Get_RowSum: Integer;
    function Get_BuyersOrderNumber: Integer;
    function Get_SellersOrderNumber: Integer;
    function Get_CountryOfOriginCode: Integer;
    procedure Set_RowNumber(Value: Integer);
    procedure Set_RowType(Value: Integer);
    procedure Set_RowPosition(Value: Integer);
    procedure Set_CostType(Value: Integer);
    procedure Set_BuyersPartNumber(Value: Integer);
    procedure Set_SellersPartNumber(Value: Integer);
    procedure Set_PartDescription(Value: Integer);
    procedure Set_DeliveryDate(Value: Integer);
    procedure Set_Quantity(Value: Integer);
    procedure Set_Unit_(Value: Integer);
    procedure Set_Each(Value: Integer);
    procedure Set_Discount(Value: Integer);
    procedure Set_Price(Value: Integer);
    procedure Set_VatRate(Value: Integer);
    procedure Set_RowSum(Value: Integer);
    procedure Set_BuyersOrderNumber(Value: Integer);
    procedure Set_SellersOrderNumber(Value: Integer);
    procedure Set_CountryOfOriginCode(Value: Integer);
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

function TXMLINVOIC416Type.Get_SoftwareManufacturer: Integer;
begin
  Result := AttributeNodes['SoftwareManufacturer'].NodeValue;
end;

procedure TXMLINVOIC416Type.Set_SoftwareManufacturer(Value: Integer);
begin
  SetAttribute('SoftwareManufacturer', Value);
end;

function TXMLINVOIC416Type.Get_SoftwareName: Integer;
begin
  Result := AttributeNodes['SoftwareName'].NodeValue;
end;

procedure TXMLINVOIC416Type.Set_SoftwareName(Value: Integer);
begin
  SetAttribute('SoftwareName', Value);
end;

function TXMLINVOIC416Type.Get_SoftwareVersion: Integer;
begin
  Result := AttributeNodes['SoftwareVersion'].NodeValue;
end;

procedure TXMLINVOIC416Type.Set_SoftwareVersion(Value: Integer);
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

function TXMLInvoiceType.Get_InvoiceNumber: Integer;
begin
  Result := AttributeNodes['InvoiceNumber'].NodeValue;
end;

procedure TXMLInvoiceType.Set_InvoiceNumber(Value: Integer);
begin
  SetAttribute('InvoiceNumber', Value);
end;

function TXMLInvoiceType.Get_InvoiceType: Integer;
begin
  Result := AttributeNodes['InvoiceType'].NodeValue;
end;

procedure TXMLInvoiceType.Set_InvoiceType(Value: Integer);
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

function TXMLHeadType.Get_SellersOrderNumber: Integer;
begin
  Result := ChildNodes['SellersOrderNumber'].NodeValue;
end;

procedure TXMLHeadType.Set_SellersOrderNumber(Value: Integer);
begin
  ChildNodes['SellersOrderNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_OrderDate: TDateTime;
begin
  Result := VarToDateTime(ChildNodes['OrderDate'].NodeValue);
end;

procedure TXMLHeadType.Set_OrderDate(Value: TDateTime);
begin
  ChildNodes['OrderDate'].NodeValue := Value;
end;

function TXMLHeadType.Get_BuyersOrderNumber: Integer;
begin
  Result := ChildNodes['BuyersOrderNumber'].NodeValue;
end;

procedure TXMLHeadType.Set_BuyersOrderNumber(Value: Integer);
begin
  ChildNodes['BuyersOrderNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_DebitInvoiceNumber: Integer;
begin
  Result := ChildNodes['DebitInvoiceNumber'].NodeValue;
end;

procedure TXMLHeadType.Set_DebitInvoiceNumber(Value: Integer);
begin
  ChildNodes['DebitInvoiceNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_InvoiceDate: TDateTime;
begin
  Result := VarToDateTime(ChildNodes['InvoiceDate'].NodeValue);
end;

procedure TXMLHeadType.Set_InvoiceDate(Value: TDateTime);
begin
  ChildNodes['InvoiceDate'].NodeValue := Value;
end;

function TXMLHeadType.Get_LanguageNameCode: Integer;
begin
  Result := ChildNodes['LanguageNameCode'].NodeValue;
end;

procedure TXMLHeadType.Set_LanguageNameCode(Value: Integer);
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

function TXMLHeadType.Get_InvoiceCurrency: Integer;
begin
  Result := ChildNodes['InvoiceCurrency'].NodeValue;
end;

procedure TXMLHeadType.Set_InvoiceCurrency(Value: Integer);
begin
  ChildNodes['InvoiceCurrency'].NodeValue := Value;
end;

function TXMLHeadType.Get_PaymentDueDate: Integer;
begin
  Result := ChildNodes['PaymentDueDate'].NodeValue;
end;

procedure TXMLHeadType.Set_PaymentDueDate(Value: Integer);
begin
  ChildNodes['PaymentDueDate'].NodeValue := Value;
end;

function TXMLHeadType.Get_CurrencyExchangeRate: Integer;
begin
  Result := ChildNodes['CurrencyExchangeRate'].NodeValue;
end;

procedure TXMLHeadType.Set_CurrencyExchangeRate(Value: Integer);
begin
  ChildNodes['CurrencyExchangeRate'].NodeValue := Value;
end;

function TXMLHeadType.Get_RateOfExchangeDate: Integer;
begin
  Result := ChildNodes['RateOfExchangeDate'].NodeValue;
end;

procedure TXMLHeadType.Set_RateOfExchangeDate(Value: Integer);
begin
  ChildNodes['RateOfExchangeDate'].NodeValue := Value;
end;

function TXMLHeadType.Get_EuVatText: UnicodeString;
begin
  Result := ChildNodes['EuVatText'].Text;
end;

procedure TXMLHeadType.Set_EuVatText(Value: UnicodeString);
begin
  ChildNodes['EuVatText'].NodeValue := Value;
end;

function TXMLHeadType.Get_GodsLabelLine1: Integer;
begin
  Result := ChildNodes['GodsLabelLine1'].NodeValue;
end;

procedure TXMLHeadType.Set_GodsLabelLine1(Value: Integer);
begin
  ChildNodes['GodsLabelLine1'].NodeValue := Value;
end;

function TXMLHeadType.Get_GodsLabelLine2: UnicodeString;
begin
  Result := ChildNodes['GodsLabelLine2'].Text;
end;

procedure TXMLHeadType.Set_GodsLabelLine2(Value: UnicodeString);
begin
  ChildNodes['GodsLabelLine2'].NodeValue := Value;
end;

function TXMLHeadType.Get_HomeCurrency: Integer;
begin
  Result := ChildNodes['HomeCurrency'].NodeValue;
end;

procedure TXMLHeadType.Set_HomeCurrency(Value: Integer);
begin
  ChildNodes['HomeCurrency'].NodeValue := Value;
end;

function TXMLHeadType.Get_TermsOfPayment: Integer;
begin
  Result := ChildNodes['TermsOfPayment'].NodeValue;
end;

procedure TXMLHeadType.Set_TermsOfPayment(Value: Integer);
begin
  ChildNodes['TermsOfPayment'].NodeValue := Value;
end;

function TXMLHeadType.Get_TermsOfPaymentNoOfDays: Integer;
begin
  Result := ChildNodes['TermsOfPaymentNoOfDays'].NodeValue;
end;

procedure TXMLHeadType.Set_TermsOfPaymentNoOfDays(Value: Integer);
begin
  ChildNodes['TermsOfPaymentNoOfDays'].NodeValue := Value;
end;

function TXMLHeadType.Get_BankName: Integer;
begin
  Result := ChildNodes['BankName'].NodeValue;
end;

procedure TXMLHeadType.Set_BankName(Value: Integer);
begin
  ChildNodes['BankName'].NodeValue := Value;
end;

function TXMLHeadType.Get_AccountNumber: Integer;
begin
  Result := ChildNodes['AccountNumber'].NodeValue;
end;

procedure TXMLHeadType.Set_AccountNumber(Value: Integer);
begin
  ChildNodes['AccountNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_SwiftAddress: Integer;
begin
  Result := ChildNodes['SwiftAddress'].NodeValue;
end;

procedure TXMLHeadType.Set_SwiftAddress(Value: Integer);
begin
  ChildNodes['SwiftAddress'].NodeValue := Value;
end;

function TXMLHeadType.Get_BankGiroNumber: UnicodeString;
begin
  Result := ChildNodes['BankGiroNumber'].Text;
end;

procedure TXMLHeadType.Set_BankGiroNumber(Value: UnicodeString);
begin
  ChildNodes['BankGiroNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_PlusGiroNumber: UnicodeString;
begin
  Result := ChildNodes['PlusGiroNumber'].Text;
end;

procedure TXMLHeadType.Set_PlusGiroNumber(Value: UnicodeString);
begin
  ChildNodes['PlusGiroNumber'].NodeValue := Value;
end;

function TXMLHeadType.Get_Factoring: IXMLFactoringType;
begin
  Result := ChildNodes['Factoring'] as IXMLFactoringType;
end;

function TXMLHeadType.Get_AlloyCost: Integer;
begin
  Result := ChildNodes['AlloyCost'].NodeValue;
end;

procedure TXMLHeadType.Set_AlloyCost(Value: Integer);
begin
  ChildNodes['AlloyCost'].NodeValue := Value;
end;

function TXMLHeadType.Get_FreightCost: Integer;
begin
  Result := ChildNodes['FreightCost'].NodeValue;
end;

procedure TXMLHeadType.Set_FreightCost(Value: Integer);
begin
  ChildNodes['FreightCost'].NodeValue := Value;
end;

function TXMLHeadType.Get_PackingCost: Integer;
begin
  Result := ChildNodes['PackingCost'].NodeValue;
end;

procedure TXMLHeadType.Set_PackingCost(Value: Integer);
begin
  ChildNodes['PackingCost'].NodeValue := Value;
end;

function TXMLHeadType.Get_InsuranceCost: Integer;
begin
  Result := ChildNodes['InsuranceCost'].NodeValue;
end;

procedure TXMLHeadType.Set_InsuranceCost(Value: Integer);
begin
  ChildNodes['InsuranceCost'].NodeValue := Value;
end;

function TXMLHeadType.Get_NetAmountInInvoiceCurrency: Integer;
begin
  Result := ChildNodes['NetAmountInInvoiceCurrency'].NodeValue;
end;

procedure TXMLHeadType.Set_NetAmountInInvoiceCurrency(Value: Integer);
begin
  ChildNodes['NetAmountInInvoiceCurrency'].NodeValue := Value;
end;

function TXMLHeadType.Get_InvoicingCharge: Integer;
begin
  Result := ChildNodes['InvoicingCharge'].NodeValue;
end;

procedure TXMLHeadType.Set_InvoicingCharge(Value: Integer);
begin
  ChildNodes['InvoicingCharge'].NodeValue := Value;
end;

function TXMLHeadType.Get_VatAmountInInvoiceCurrency: Integer;
begin
  Result := ChildNodes['VatAmountInInvoiceCurrency'].NodeValue;
end;

procedure TXMLHeadType.Set_VatAmountInInvoiceCurrency(Value: Integer);
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

function TXMLHeadType.Get_PayableAmountInInvoiceCurrency: Integer;
begin
  Result := ChildNodes['PayableAmountInInvoiceCurrency'].NodeValue;
end;

procedure TXMLHeadType.Set_PayableAmountInInvoiceCurrency(Value: Integer);
begin
  ChildNodes['PayableAmountInInvoiceCurrency'].NodeValue := Value;
end;

function TXMLHeadType.Get_TermsOfPaymentCashDiscount: UnicodeString;
begin
  Result := ChildNodes['TermsOfPaymentCashDiscount'].Text;
end;

procedure TXMLHeadType.Set_TermsOfPaymentCashDiscount(Value: UnicodeString);
begin
  ChildNodes['TermsOfPaymentCashDiscount'].NodeValue := Value;
end;

function TXMLHeadType.Get_TermsOfPaymentCashDiscountDate: UnicodeString;
begin
  Result := ChildNodes['TermsOfPaymentCashDiscountDate'].Text;
end;

procedure TXMLHeadType.Set_TermsOfPaymentCashDiscountDate(Value: UnicodeString);
begin
  ChildNodes['TermsOfPaymentCashDiscountDate'].NodeValue := Value;
end;

function TXMLHeadType.Get_AgreementNumber: UnicodeString;
begin
  Result := ChildNodes['AgreementNumber'].Text;
end;

procedure TXMLHeadType.Set_AgreementNumber(Value: UnicodeString);
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

function TXMLBuyerType.Get_BuyerCode: Integer;
begin
  Result := ChildNodes['BuyerCode'].NodeValue;
end;

procedure TXMLBuyerType.Set_BuyerCode(Value: Integer);
begin
  ChildNodes['BuyerCode'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerName: Integer;
begin
  Result := ChildNodes['BuyerName'].NodeValue;
end;

procedure TXMLBuyerType.Set_BuyerName(Value: Integer);
begin
  ChildNodes['BuyerName'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerVATRegistrationNumber: Integer;
begin
  Result := ChildNodes['BuyerVATRegistrationNumber'].NodeValue;
end;

procedure TXMLBuyerType.Set_BuyerVATRegistrationNumber(Value: Integer);
begin
  ChildNodes['BuyerVATRegistrationNumber'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerRegistrationNumber: UnicodeString;
begin
  Result := ChildNodes['BuyerRegistrationNumber'].Text;
end;

procedure TXMLBuyerType.Set_BuyerRegistrationNumber(Value: UnicodeString);
begin
  ChildNodes['BuyerRegistrationNumber'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerCountryCode: Integer;
begin
  Result := ChildNodes['BuyerCountryCode'].NodeValue;
end;

procedure TXMLBuyerType.Set_BuyerCountryCode(Value: Integer);
begin
  ChildNodes['BuyerCountryCode'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerReference: Integer;
begin
  Result := ChildNodes['BuyerReference'].NodeValue;
end;

procedure TXMLBuyerType.Set_BuyerReference(Value: Integer);
begin
  ChildNodes['BuyerReference'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerReferencePhone: UnicodeString;
begin
  Result := ChildNodes['BuyerReferencePhone'].Text;
end;

procedure TXMLBuyerType.Set_BuyerReferencePhone(Value: UnicodeString);
begin
  ChildNodes['BuyerReferencePhone'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerReferenceFax: UnicodeString;
begin
  Result := ChildNodes['BuyerReferenceFax'].Text;
end;

procedure TXMLBuyerType.Set_BuyerReferenceFax(Value: UnicodeString);
begin
  ChildNodes['BuyerReferenceFax'].NodeValue := Value;
end;

function TXMLBuyerType.Get_BuyerReferenceEmail: Integer;
begin
  Result := ChildNodes['BuyerReferenceEmail'].NodeValue;
end;

procedure TXMLBuyerType.Set_BuyerReferenceEmail(Value: Integer);
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

function TXMLBuyerType.Get_GlobalLocationNumber: UnicodeString;
begin
  Result := ChildNodes['GlobalLocationNumber'].Text;
end;

procedure TXMLBuyerType.Set_GlobalLocationNumber(Value: UnicodeString);
begin
  ChildNodes['GlobalLocationNumber'].NodeValue := Value;
end;

{ TXMLInvoiceAddressType }

function TXMLInvoiceAddressType.Get_InvoiceAddressName: Integer;
begin
  Result := ChildNodes['InvoiceAddressName'].NodeValue;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressName(Value: Integer);
begin
  ChildNodes['InvoiceAddressName'].NodeValue := Value;
end;

function TXMLInvoiceAddressType.Get_InvoiceAddressStreetBox1: UnicodeString;
begin
  Result := ChildNodes['InvoiceAddressStreetBox1'].Text;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressStreetBox1(Value: UnicodeString);
begin
  ChildNodes['InvoiceAddressStreetBox1'].NodeValue := Value;
end;

function TXMLInvoiceAddressType.Get_InvoiceAddressStreetBox2: Integer;
begin
  Result := ChildNodes['InvoiceAddressStreetBox2'].NodeValue;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressStreetBox2(Value: Integer);
begin
  ChildNodes['InvoiceAddressStreetBox2'].NodeValue := Value;
end;

function TXMLInvoiceAddressType.Get_InvoiceAddressZipCity1: Integer;
begin
  Result := ChildNodes['InvoiceAddressZipCity1'].NodeValue;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressZipCity1(Value: Integer);
begin
  ChildNodes['InvoiceAddressZipCity1'].NodeValue := Value;
end;

function TXMLInvoiceAddressType.Get_InvoiceAddressZipCity2: UnicodeString;
begin
  Result := ChildNodes['InvoiceAddressZipCity2'].Text;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressZipCity2(Value: UnicodeString);
begin
  ChildNodes['InvoiceAddressZipCity2'].NodeValue := Value;
end;

function TXMLInvoiceAddressType.Get_InvoiceAddressCountry: Integer;
begin
  Result := ChildNodes['InvoiceAddressCountry'].NodeValue;
end;

procedure TXMLInvoiceAddressType.Set_InvoiceAddressCountry(Value: Integer);
begin
  ChildNodes['InvoiceAddressCountry'].NodeValue := Value;
end;

{ TXMLDeliveryAddressType }

function TXMLDeliveryAddressType.Get_DeliveryAddressName: Integer;
begin
  Result := ChildNodes['DeliveryAddressName'].NodeValue;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressName(Value: Integer);
begin
  ChildNodes['DeliveryAddressName'].NodeValue := Value;
end;

function TXMLDeliveryAddressType.Get_DeliveryAddressStreetBox1: Integer;
begin
  Result := ChildNodes['DeliveryAddressStreetBox1'].NodeValue;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressStreetBox1(Value: Integer);
begin
  ChildNodes['DeliveryAddressStreetBox1'].NodeValue := Value;
end;

function TXMLDeliveryAddressType.Get_DeliveryAddressStreetBox2: UnicodeString;
begin
  Result := ChildNodes['DeliveryAddressStreetBox2'].Text;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressStreetBox2(Value: UnicodeString);
begin
  ChildNodes['DeliveryAddressStreetBox2'].NodeValue := Value;
end;

function TXMLDeliveryAddressType.Get_DeliveryAddressZipCity1: Integer;
begin
  Result := ChildNodes['DeliveryAddressZipCity1'].NodeValue;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressZipCity1(Value: Integer);
begin
  ChildNodes['DeliveryAddressZipCity1'].NodeValue := Value;
end;

function TXMLDeliveryAddressType.Get_DeliveryAddressZipCity2: UnicodeString;
begin
  Result := ChildNodes['DeliveryAddressZipCity2'].Text;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressZipCity2(Value: UnicodeString);
begin
  ChildNodes['DeliveryAddressZipCity2'].NodeValue := Value;
end;

function TXMLDeliveryAddressType.Get_DeliveryAddressCountry: Integer;
begin
  Result := ChildNodes['DeliveryAddressCountry'].NodeValue;
end;

procedure TXMLDeliveryAddressType.Set_DeliveryAddressCountry(Value: Integer);
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

function TXMLSellerType.Get_SellerSuplierCode: Integer;
begin
  Result := ChildNodes['SellerSuplierCode'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerSuplierCode(Value: Integer);
begin
  ChildNodes['SellerSuplierCode'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerName: Integer;
begin
  Result := ChildNodes['SellerName'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerName(Value: Integer);
begin
  ChildNodes['SellerName'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerReference: Integer;
begin
  Result := ChildNodes['SellerReference'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerReference(Value: Integer);
begin
  ChildNodes['SellerReference'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerReferencePhone: Integer;
begin
  Result := ChildNodes['SellerReferencePhone'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerReferencePhone(Value: Integer);
begin
  ChildNodes['SellerReferencePhone'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerReferenceFax: UnicodeString;
begin
  Result := ChildNodes['SellerReferenceFax'].Text;
end;

procedure TXMLSellerType.Set_SellerReferenceFax(Value: UnicodeString);
begin
  ChildNodes['SellerReferenceFax'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerReferenceEmail: Integer;
begin
  Result := ChildNodes['SellerReferenceEmail'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerReferenceEmail(Value: Integer);
begin
  ChildNodes['SellerReferenceEmail'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerOrigin: Integer;
begin
  Result := ChildNodes['SellerOrigin'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerOrigin(Value: Integer);
begin
  ChildNodes['SellerOrigin'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerWeb: Integer;
begin
  Result := ChildNodes['SellerWeb'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerWeb(Value: Integer);
begin
  ChildNodes['SellerWeb'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerPhone: Integer;
begin
  Result := ChildNodes['SellerPhone'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerPhone(Value: Integer);
begin
  ChildNodes['SellerPhone'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerFax: Integer;
begin
  Result := ChildNodes['SellerFax'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerFax(Value: Integer);
begin
  ChildNodes['SellerFax'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerRegistrationNumber: Integer;
begin
  Result := ChildNodes['SellerRegistrationNumber'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerRegistrationNumber(Value: Integer);
begin
  ChildNodes['SellerRegistrationNumber'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerVatRegistrationNumber: Integer;
begin
  Result := ChildNodes['SellerVatRegistrationNumber'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerVatRegistrationNumber(Value: Integer);
begin
  ChildNodes['SellerVatRegistrationNumber'].NodeValue := Value;
end;

function TXMLSellerType.Get_SellerCountryCode: Integer;
begin
  Result := ChildNodes['SellerCountryCode'].NodeValue;
end;

procedure TXMLSellerType.Set_SellerCountryCode(Value: Integer);
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

function TXMLPostalAddressType.Get_PostalAddressStreetBox1: Integer;
begin
  Result := ChildNodes['PostalAddressStreetBox1'].NodeValue;
end;

procedure TXMLPostalAddressType.Set_PostalAddressStreetBox1(Value: Integer);
begin
  ChildNodes['PostalAddressStreetBox1'].NodeValue := Value;
end;

function TXMLPostalAddressType.Get_PostalAddressStreetBox2: UnicodeString;
begin
  Result := ChildNodes['PostalAddressStreetBox2'].Text;
end;

procedure TXMLPostalAddressType.Set_PostalAddressStreetBox2(Value: UnicodeString);
begin
  ChildNodes['PostalAddressStreetBox2'].NodeValue := Value;
end;

function TXMLPostalAddressType.Get_PostalAddressZipCity1: Integer;
begin
  Result := ChildNodes['PostalAddressZipCity1'].NodeValue;
end;

procedure TXMLPostalAddressType.Set_PostalAddressZipCity1(Value: Integer);
begin
  ChildNodes['PostalAddressZipCity1'].NodeValue := Value;
end;

function TXMLPostalAddressType.Get_PostalAddressZipCity2: Integer;
begin
  Result := ChildNodes['PostalAddressZipCity2'].NodeValue;
end;

procedure TXMLPostalAddressType.Set_PostalAddressZipCity2(Value: Integer);
begin
  ChildNodes['PostalAddressZipCity2'].NodeValue := Value;
end;

function TXMLPostalAddressType.Get_PostalAddressCountry: Integer;
begin
  Result := ChildNodes['PostalAddressCountry'].NodeValue;
end;

procedure TXMLPostalAddressType.Set_PostalAddressCountry(Value: Integer);
begin
  ChildNodes['PostalAddressCountry'].NodeValue := Value;
end;

{ TXMLVisitingAddressType }

function TXMLVisitingAddressType.Get_VisitingAddressStreetBox1: Integer;
begin
  Result := ChildNodes['VisitingAddressStreetBox1'].NodeValue;
end;

procedure TXMLVisitingAddressType.Set_VisitingAddressStreetBox1(Value: Integer);
begin
  ChildNodes['VisitingAddressStreetBox1'].NodeValue := Value;
end;

function TXMLVisitingAddressType.Get_VisitingAddressStreetBox2: UnicodeString;
begin
  Result := ChildNodes['VisitingAddressStreetBox2'].Text;
end;

procedure TXMLVisitingAddressType.Set_VisitingAddressStreetBox2(Value: UnicodeString);
begin
  ChildNodes['VisitingAddressStreetBox2'].NodeValue := Value;
end;

function TXMLVisitingAddressType.Get_VisitingAddressZipCity1: Integer;
begin
  Result := ChildNodes['VisitingAddressZipCity1'].NodeValue;
end;

procedure TXMLVisitingAddressType.Set_VisitingAddressZipCity1(Value: Integer);
begin
  ChildNodes['VisitingAddressZipCity1'].NodeValue := Value;
end;

function TXMLVisitingAddressType.Get_VisitingAddressZipCity2: Integer;
begin
  Result := ChildNodes['VisitingAddressZipCity2'].NodeValue;
end;

procedure TXMLVisitingAddressType.Set_VisitingAddressZipCity2(Value: Integer);
begin
  ChildNodes['VisitingAddressZipCity2'].NodeValue := Value;
end;

function TXMLVisitingAddressType.Get_VisitingAddressCountry: Integer;
begin
  Result := ChildNodes['VisitingAddressCountry'].NodeValue;
end;

procedure TXMLVisitingAddressType.Set_VisitingAddressCountry(Value: Integer);
begin
  ChildNodes['VisitingAddressCountry'].NodeValue := Value;
end;

{ TXMLFactoringType }

function TXMLFactoringType.Get_FactoringSetting: Integer;
begin
  Result := ChildNodes['FactoringSetting'].NodeValue;
end;

procedure TXMLFactoringType.Set_FactoringSetting(Value: Integer);
begin
  ChildNodes['FactoringSetting'].NodeValue := Value;
end;

function TXMLFactoringType.Get_FactoringBankName: UnicodeString;
begin
  Result := ChildNodes['FactoringBankName'].Text;
end;

procedure TXMLFactoringType.Set_FactoringBankName(Value: UnicodeString);
begin
  ChildNodes['FactoringBankName'].NodeValue := Value;
end;

function TXMLFactoringType.Get_FactoringAccountNumber: UnicodeString;
begin
  Result := ChildNodes['FactoringAccountNumber'].Text;
end;

procedure TXMLFactoringType.Set_FactoringAccountNumber(Value: UnicodeString);
begin
  ChildNodes['FactoringAccountNumber'].NodeValue := Value;
end;

function TXMLFactoringType.Get_FactoringSwiftAddress: UnicodeString;
begin
  Result := ChildNodes['FactoringSwiftAddress'].Text;
end;

procedure TXMLFactoringType.Set_FactoringSwiftAddress(Value: UnicodeString);
begin
  ChildNodes['FactoringSwiftAddress'].NodeValue := Value;
end;

function TXMLFactoringType.Get_FactoringBankGiroNumber: UnicodeString;
begin
  Result := ChildNodes['FactoringBankGiroNumber'].Text;
end;

procedure TXMLFactoringType.Set_FactoringBankGiroNumber(Value: UnicodeString);
begin
  ChildNodes['FactoringBankGiroNumber'].NodeValue := Value;
end;

function TXMLFactoringType.Get_FactoringPlusGiroNumber: UnicodeString;
begin
  Result := ChildNodes['FactoringPlusGiroNumber'].Text;
end;

procedure TXMLFactoringType.Set_FactoringPlusGiroNumber(Value: UnicodeString);
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

function TXMLRowType.Get_RowType: Integer;
begin
  Result := AttributeNodes['RowType'].NodeValue;
end;

procedure TXMLRowType.Set_RowType(Value: Integer);
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

function TXMLRowType.Get_CostType: Integer;
begin
  Result := AttributeNodes['CostType'].NodeValue;
end;

procedure TXMLRowType.Set_CostType(Value: Integer);
begin
  SetAttribute('CostType', Value);
end;

function TXMLRowType.Get_BuyersPartNumber: Integer;
begin
  Result := ChildNodes['BuyersPartNumber'].NodeValue;
end;

procedure TXMLRowType.Set_BuyersPartNumber(Value: Integer);
begin
  ChildNodes['BuyersPartNumber'].NodeValue := Value;
end;

function TXMLRowType.Get_SellersPartNumber: Integer;
begin
  Result := ChildNodes['SellersPartNumber'].NodeValue;
end;

procedure TXMLRowType.Set_SellersPartNumber(Value: Integer);
begin
  ChildNodes['SellersPartNumber'].NodeValue := Value;
end;

function TXMLRowType.Get_PartDescription: Integer;
begin
  Result := ChildNodes['PartDescription'].NodeValue;
end;

procedure TXMLRowType.Set_PartDescription(Value: Integer);
begin
  ChildNodes['PartDescription'].NodeValue := Value;
end;

function TXMLRowType.Get_DeliveryDate: Integer;
begin
  Result := ChildNodes['DeliveryDate'].NodeValue;
end;

procedure TXMLRowType.Set_DeliveryDate(Value: Integer);
begin
  ChildNodes['DeliveryDate'].NodeValue := Value;
end;

function TXMLRowType.Get_Quantity: Integer;
begin
  Result := ChildNodes['Quantity'].NodeValue;
end;

procedure TXMLRowType.Set_Quantity(Value: Integer);
begin
  ChildNodes['Quantity'].NodeValue := Value;
end;

function TXMLRowType.Get_Unit_: Integer;
begin
  Result := ChildNodes['Unit'].NodeValue;
end;

procedure TXMLRowType.Set_Unit_(Value: Integer);
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

function TXMLRowType.Get_Discount: Integer;
begin
  Result := ChildNodes['Discount'].NodeValue;
end;

procedure TXMLRowType.Set_Discount(Value: Integer);
begin
  ChildNodes['Discount'].NodeValue := Value;
end;

function TXMLRowType.Get_Price: Integer;
begin
  Result := ChildNodes['Price'].NodeValue;
end;

procedure TXMLRowType.Set_Price(Value: Integer);
begin
  ChildNodes['Price'].NodeValue := Value;
end;

function TXMLRowType.Get_VatRate: Integer;
begin
  Result := ChildNodes['VatRate'].NodeValue;
end;

procedure TXMLRowType.Set_VatRate(Value: Integer);
begin
  ChildNodes['VatRate'].NodeValue := Value;
end;

function TXMLRowType.Get_RowSum: Integer;
begin
  Result := ChildNodes['RowSum'].NodeValue;
end;

procedure TXMLRowType.Set_RowSum(Value: Integer);
begin
  ChildNodes['RowSum'].NodeValue := Value;
end;

function TXMLRowType.Get_BuyersOrderNumber: Integer;
begin
  Result := ChildNodes['BuyersOrderNumber'].NodeValue;
end;

procedure TXMLRowType.Set_BuyersOrderNumber(Value: Integer);
begin
  ChildNodes['BuyersOrderNumber'].NodeValue := Value;
end;

function TXMLRowType.Get_SellersOrderNumber: Integer;
begin
  Result := ChildNodes['SellersOrderNumber'].NodeValue;
end;

procedure TXMLRowType.Set_SellersOrderNumber(Value: Integer);
begin
  ChildNodes['SellersOrderNumber'].NodeValue := Value;
end;

function TXMLRowType.Get_CountryOfOriginCode: Integer;
begin
  Result := ChildNodes['CountryOfOriginCode'].NodeValue;
end;

procedure TXMLRowType.Set_CountryOfOriginCode(Value: Integer);
begin
  ChildNodes['CountryOfOriginCode'].NodeValue := Value;
end;

end.