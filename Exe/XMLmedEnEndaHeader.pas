Procedure TfrmOrderLista.Skapa_Fakturaunderlag_XML;

var
  xml_filename: string;

  Nettosumma: double;
  Bruttosumma: double;
  MomsTotal: double;
  newInvoice: IXMLINVOIC416;
  Head: IXMLHead;
  Buyer: IXMLBuyer;
  InvoiceAddress: IXMLInvoiceAddress;
  DeliveryAddress: IXMLDeliveryAddress;
  Seller: IXMLSeller;
  Postaladdress: IXMLPostalAddress;
  Visitingaddress: IXMLVisitingAddress;
  Factoring: IXMLFactoring;
  rows: IXMLRows;
  row: IXMLRow;

  function FixcommaString(cvalue: double): string;
  BEGIN
    RESULT := stringreplace(floattostr(cvalue), ',', '.', [])
  END;

begin

  xml_filename := FoldernameFix(ftgsystemvalue('pdf.folder.fakturaunderlag', '')) + 'Fakturaunderlag_' +
    sp_OrderlistFakturanummer.asstring + '.xml';

  with qryFakturaunderlagXML do
  begin

    close;
    qryFakturaunderlagXML.params.ParamByName('Fakturanummer').Value := sp_Orderlist.fieldbyname('Fakturanummer').asInteger;
    open;

    Nettosumma := 0;

    while not eof do
    begin
      Nettosumma := Nettosumma + fieldbyname('Prisperenhet').AsCurrency * fieldbyname('Antal').AsFloat;
      next;
    end;

    qryFakturaunderlagXML.First;

    Bruttosumma := Nettosumma * 1.25;
    MomsTotal := Bruttosumma - Nettosumma;

    // Faktura

    newInvoice := NewINVOIC416;
    /// <summary>
    ///
    /// </summary>

    newInvoice.SoftwareVersion := '9.0.6p106';
    newInvoice.SoftwareManufacturer := 'Monitor ERP System AB';
    newInvoice.SoftwareName := 'Monitor';
    newInvoice.Invoice.InvoiceNumber := fieldbyname('Fakturanummer').asstring;
    newInvoice.Invoice.InvoiceType := 1;

    // Head
    Head := newInvoice.Head;

    Head.SellersOrderNumber := fieldbyname('OrderId').asstring;
    Head.OrderDate := fieldbyname('Orderdatum').asstring;

    // Head.BuyersOrderNumber := fieldbyname('Ordernummer').asstring;
    Head.BuyersOrderNumber := '12345';
    Head.DebitInvoiceNumber := '0';

    Head.InvoiceDate := fieldbyname('Dagensdatum').asstring;
    Head.LanguageNameCode := 'SV';
    // Buyer
    Buyer := Head.Buyer;

    Buyer.BuyerCode := '1001'; // ? Kundnummmer
    Buyer.BuyerName := 'INTERSYSTEM AB'; // string
    Buyer.BuyerVATRegistrationNumber := 'SE556594166201';
    Buyer.BuyerReference := fieldbyname('Referens').asstring;
    Buyer.BuyerReferencePhone := '';
    Buyer.BuyerReferenceFax := '';
    Buyer.BuyerReferenceEmail := ''; // ? Referensemail, finns det?

    InvoiceAddress := Buyer.InvoiceAddress;

    InvoiceAddress.InvoiceAddressName := 'INTERSYSTEM AB';
    InvoiceAddress.InvoiceAddressStreetBox1 := 'Brandsvigsgatan 3';
    InvoiceAddress.InvoiceAddressStreetBox2 := '';
    InvoiceAddress.InvoiceAddressZipCity1 := '262 73 Ängelholm';
    InvoiceAddress.InvoiceAddressZipCity2 := '';
    InvoiceAddress.InvoiceAddressCountry := 'Sverige';

    DeliveryAddress := Buyer.DeliveryAddress;
    DeliveryAddress.DeliveryAddressName := 'INTERSYSTEM AB';
    DeliveryAddress.DeliveryAddressStreetBox1 := 'Brandsvigsgatan 3';
    DeliveryAddress.DeliveryAddressStreetBox2 := '';
    DeliveryAddress.DeliveryAddressZipCity1 := '262 73 Ängelholm';
    DeliveryAddress.DeliveryAddressZipCity2 := '';
    DeliveryAddress.DeliveryAddressCountry := 'Sverige';

    Seller := Head.Seller;
    Seller.SellerSuplierCode := ''; // ?
    Seller.SellerName := 'Ängelholms Mekaniska Verkstad AB';
    Seller.SellerReference := ''; // ?
    Seller.SellerReferencePhone := '0431-15459'; // ?
    Seller.SellerReferenceFax := ''; // ?
    Seller.SellerReferenceEmail := 'info@angelholms-mekaniska.se';
    Seller.SellerOrigin := 'Ängelholm'; // ?
    Seller.SellerWeb := 'www.angelholms-mekaniska.se'; // ?
    Seller.SellerPhone := '0431-15459'; // 2018-11-14
    Seller.SellerFax := ''; // ?
    Seller.SellerRegistrationnumber := '556336-6490'; // ?
    Seller.SellerVatRegistrationNumber := 'SE556336649001'; // ?
    // Seller.SellerCountrycode := 'SE';

    Postaladdress := Seller.Postaladdress;

    Postaladdress.PostalAddressStreetBox1 := 'Verkstadsgatan 7'; // ?
    Postaladdress.PostalAddressStreetBox2 := ''; // ?
    Postaladdress.PostalAddressZipCity1 := '26271 Ängelholm'; // ?
    Postaladdress.PostalAddressZipCity2 := ''; // ?
    Postaladdress.PostalAddressCountry := 'Sverige'; // ?

    Visitingaddress := Seller.Visitingaddress;

    Visitingaddress.VisitingaddressStreetBox1 := 'Verkstadsgatan 7'; // ?
    Visitingaddress.VisitingaddressStreetBox2 := ''; // ?
    Visitingaddress.VisitingaddressZipCity1 := '26271 Ängelholm'; // ?
    Visitingaddress.VisitingaddressZipCity2 := ''; // ?
    Visitingaddress.VisitingaddressCountry := 'Sverige'; // ?

    Head.InvoiceCurrency := 'SEK';
    Head.PaymentDueDate := ''; // ?
    Head.CurrencyExchangeRate := '0'; // skall vara double
    Head.RateOfExchangeDate := ''; // ?
    Head.EuVatText := ''; // ?
    Head.GodsLabelLine1 := fieldbyname('Godsmärke').asstring;
    Head.GodsLabelLine2 := '';
    Head.HomeCurrency := 'SEK';
    Head.TermsOfPayment := ''; // ?
    Head.TermsOfPaymentNoOfDays := 30; // ?
    Head.BankName := ''; // ?
    Head.AccountNumber := ''; // ?
    Head.SwiftAddress := ''; // ?
    Head.BankGiroNumber := '';
    Head.PlusGiroNumber := '';

    Factoring := Head.Factoring;
    Factoring.FactoringSetting := 0;
    Factoring.FactoringBankname := '';
    Factoring.FactoringAccountnumber := '';
    Factoring.FactoringSwiftaddress := '';
    Factoring.FactoringBankgironumber := '';
    Factoring.FactoringPlusGiroNumber := '';

    Head.AlloyCost := '0';
    Head.FreightCost := '0';
    Head.PackingCost := '0';
    Head.InsuranceCost := '0';
    Head.NetAmountInInvoiceCurrency := stringreplace(floattostr(Nettosumma), ',', '.', []);
    // Summa av alla rader    ska vara currency
    Head.InvoicingCharge := '0';
    // Head.VatAmountInInvoiceCurrency := stringreplace(floattostr(MomsTotal),',','.',[]); // Summa Moms?
    Head.VatAmountInInvoiceCurrency := FixcommaString(MomsTotal); // Summa Moms?
    Head.Equalization := '';
    Head.PayableAmountInInvoiceCurrency := FixcommaString(Bruttosumma);
    // Summa ink moms;

    // Head.TermsOfPaymentCashDiscount := 0;
    // Head.TermsOfPaymentCashDiscountDate := '';
    // Head.AgreementNumber := '';

    // 'SE888888'     string

    rows := newInvoice.rows;
    while not eof do
    begin
      row := rows.Add;

      row.RowNumber := fieldbyname('PositionNummer').asInteger;
      row.RowType := 1; // Artikelnummer, måste finnas
      row.RowPosition := 0;
      row.CostType := 0; // Normal

      row.BuyersPartNumber := fieldbyname('Artikelnummer').asstring;
      row.SellersPartNumber := fieldbyname('Artikelnummer').asstring;
      row.PartDescription := fieldbyname('Beteckning').asstring;
      row.deliverydate := fieldbyname('Leveransdatum').asstring;
      row.Quantity := FixcommaString(fieldbyname('Antal').AsFloat);
      row.Unit_ := 'st'; // 2018-11-14
      row.Each := 1;
      row.Discount := '';
      row.Price := FixcommaString(fieldbyname('PrisperEnhet').AsFloat);

      row.RowSum := FixcommaString(fieldbyname('PrisperEnhet').AsCurrency * fieldbyname('Antal').AsFloat);
      row.BuyersOrderNumber := fieldbyname('Ordernummer').asstring;
      row.SellersOrderNumber := fieldbyname('OrderId').asstring;
      row.CountryOfOriginCode := 'SE';
      next;
    end;

    // Memo1.Text := newfaktura.Xml;

    newInvoice.OwnerDocument.Encoding := 'UTF-8';
    newInvoice.OwnerDocument.SaveToFile(xml_filename);

  end;
end;
