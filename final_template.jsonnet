local template_type = 'E-Invoice';
local author = 'ClearTax';
local template_margin = 40;
local payload = {
  documentType: 'einvoice',
  documentData: {
    invoice: {
      custom_fields: {
        vencode: 'ljdsfkdsfsdk',
        toPrint: 'true',
        'ST Global I/V No': '34567894567856',
        terms: 'Invoice is valid if digitally signed',
        dealer_code: '6480001-8400009',
        cin: 'U24231TN1992PLC062306',
        phone_no: '9848477374647',
        fax_no: '+91 80 6735 7800',
        mot: 'MOT',
        eta: 'eta',
        awb: 'awb',
        carrier: '3456',
        micr: 'micr',
        swift_code: 'hjgj',
        reg_addr: ' MphasiS Limited, Bagmane World Technology  Center, Marathalli Ring Road, Doddanakhundi Village,  Mahadevapura, BANGALORE – 560 048',
        'Qty in WMT': '1444442',
        'Moisture %': '12',
        'Contractual Fe': '12',
        actual_fe: '12',
        lut: 'AAD2903190072840RN',
        email: 'admin@testemail.com',
        website: 'https://example.website.hq',
        pan: 'AAACF6175E',
        'Transportation mode': 'Tansprtation mode fields',
        'Vessel Name/Truck No/Container No': 'I dont know what are these',
        'Delivery Terms': 'Delivery terms',
        'Contract Date': 'Contratc Date',
        'Item Price per DMT in FC': 'Item Price per DMT',
        'Exchange rate': 'Excahneg Rate',
        'TCS %': '',
        'Sale Order No': 'Sale Order No',
        'Sale Order Date': 'Sale Order Date',
        Grade: 'Grade',
      },
      deleted: false,
      document_status: 'IRN_GENERATED',
      error_response: null,
      errors: null,
      govt_response: {
        Success: true,
        AckNo: 112010009045094,
        AckDt: '2020-09-25 15:01:00',
        Irn: 'da9df139a44774792b229800430012237d85da79a0721efcbd2edda2c49733ff',
        SignedInvoice: 'eyJhbGciOiJSUzI1NiIsImtpZCI6IkVEQzU3REUxMzU4QjMwMEJBOUY3OTM0MEE2Njk2ODMxRjNDODUwNDciLCJ0eXAiOiJKV1QiLCJ4NXQiOiI3Y1Y5NFRXTE1BdXA5NU5BcG1sb01mUElVRWMifQ.eyJkYXRhIjoie1wiQWNrTm9cIjoxMTIwMTAwMDkwNDUwOTQsXCJBY2tEdFwiOlwiMjAyMC0wOS0yNSAxNTowMTowMFwiLFwiSXJuXCI6XCJkYTlkZjEzOWE0NDc3NDc5MmIyMjk4MDA0MzAwMTIyMzdkODVkYTc5YTA3MjFlZmNiZDJlZGRhMmM0OTczM2ZmXCIsXCJWZXJzaW9uXCI6XCIxLjAxXCIsXCJUcmFuRHRsc1wiOntcIlRheFNjaFwiOlwiR1NUXCIsXCJTdXBUeXBcIjpcIkIyQlwiLFwiUmVnUmV2XCI6XCJOXCIsXCJJZ3N0T25JbnRyYVwiOlwiTlwifSxcIkRvY0R0bHNcIjp7XCJUeXBcIjpcIklOVlwiLFwiTm9cIjpcIklOTC0zNVwiLFwiRHRcIjpcIjE4LzA5LzIwMjBcIn0sXCJTZWxsZXJEdGxzXCI6e1wiR3N0aW5cIjpcIjI5QUFGQ0Q1ODYyUjAwMFwiLFwiTGdsTm1cIjpcIkRlZm1hY3JvIHB2dCBsdGRcIixcIlRyZE5tXCI6XCJEZWZtYWNyb1wiLFwiQWRkcjFcIjpcIjV0aCBibG9jaywga3V2ZW1wdSBsYXlvdXRcIixcIkFkZHIyXCI6XCJrdXZlbXB1IGxheW91dFwiLFwiTG9jXCI6XCJHQU5ESElOQUdBUlwiLFwiUGluXCI6NTYwMDI3LFwiU3RjZFwiOlwiMjlcIixcIlBoXCI6XCI5MDAwMDAwMDAwXCIsXCJFbVwiOlwiYWJjQGdtYWlsLmNvbVwifSxcIkJ1eWVyRHRsc1wiOntcIkdzdGluXCI6XCIyNEFBRkNENTg2MlIwMDVcIixcIkxnbE5tXCI6XCJYWVogY29tcGFueSBwdnQgbHRkXCIsXCJUcmRObVwiOlwiWFlaIEluZHVzdHJpZXNcIixcIlBvc1wiOlwiMjRcIixcIkFkZHIxXCI6XCI3dGggYmxvY2ssIGt1dmVtcHUgbGF5b3V0XCIsXCJBZGRyMlwiOlwia3V2ZW1wdSBsYXlvdXRcIixcIkxvY1wiOlwiR0FOREhJTkFHQVJcIixcIlBpblwiOjM4MjAyMCxcIlBoXCI6XCI5MTExMTExMTExMVwiLFwiRW1cIjpcInh5ekB5YWhvby5jb21cIixcIlN0Y2RcIjpcIjI0XCJ9LFwiRGlzcER0bHNcIjp7XCJObVwiOlwiQUJDIGNvbXBhbnkgcHZ0IGx0ZFwiLFwiQWRkcjFcIjpcIjd0aCBibG9jaywga3V2ZW1wdSBsYXlvdXRcIixcIkFkZHIyXCI6XCJrdXZlbXB1IGxheW91dFwiLFwiTG9jXCI6XCJCYW5hZ2Fsb3JlXCIsXCJQaW5cIjo1NjIxNjAsXCJTdGNkXCI6XCIyOVwifSxcIlNoaXBEdGxzXCI6e1wiR3N0aW5cIjpcIjI5QVdHUFY3MTA3QjFaMVwiLFwiTGdsTm1cIjpcIkNCRSBjb21wYW55IHB2dCBsdGRcIixcIlRyZE5tXCI6XCJrdXZlbXB1IGxheW91dFwiLFwiQWRkcjFcIjpcIjd0aCBibG9jaywga3V2ZW1wdSBsYXlvdXRcIixcIkFkZHIyXCI6XCJrdXZlbXB1IGxheW91dFwiLFwiTG9jXCI6XCJCYW5hZ2Fsb3JlXCIsXCJQaW5cIjo1NjIxNjAsXCJTdGNkXCI6XCIyOVwifSxcIkl0ZW1MaXN0XCI6W3tcIkl0ZW1Ob1wiOjAsXCJTbE5vXCI6XCIxXCIsXCJJc1NlcnZjXCI6XCJOXCIsXCJQcmREZXNjXCI6XCJQQU5FTCBDT09MRVI6IENPTVBSRVNTT1JcIixcIkhzbkNkXCI6XCI4NzA4OTkwMFwiLFwiUXR5XCI6MTAwLjAsXCJVbml0XCI6XCJOT1NcIixcIlVuaXRQcmljZVwiOjEwMDAsXCJUb3RBbXRcIjoxMDAwMDAsXCJEaXNjb3VudFwiOjAsXCJBc3NBbXRcIjoxMDAwMDAsXCJHc3RSdFwiOjE4LjAwMCxcIklnc3RBbXRcIjoxODAwMCxcIkNnc3RBbXRcIjowLFwiU2dzdEFtdFwiOjAsXCJDZXNSdFwiOjAuMDAwLFwiQ2VzQW10XCI6MCxcIkNlc05vbkFkdmxBbXRcIjowLFwiU3RhdGVDZXNSdFwiOjAuMDAwLFwiU3RhdGVDZXNBbXRcIjowLFwiU3RhdGVDZXNOb25BZHZsQW10XCI6MCxcIk90aENocmdcIjowLFwiVG90SXRlbVZhbFwiOjExODAwMH1dLFwiVmFsRHRsc1wiOntcIkFzc1ZhbFwiOjEwMDAwMCxcIkNnc3RWYWxcIjowLFwiU2dzdFZhbFwiOjAsXCJJZ3N0VmFsXCI6MTgwMDAsXCJDZXNWYWxcIjowLFwiU3RDZXNWYWxcIjowLFwiT3RoQ2hyZ1wiOjAsXCJSbmRPZmZBbXRcIjowLFwiVG90SW52VmFsXCI6MTE4MDAwfSxcIlBheUR0bHNcIjp7XCJObVwiOlwiQUJDREVcIixcIk1vZGVcIjpcIkNhc2hcIn0sXCJSZWZEdGxzXCI6e1wiSW52Um1cIjpcIlRFU1RcIixcIkRvY1BlcmREdGxzXCI6e1wiSW52U3REdFwiOlwiMDEvMDgvMjAyMFwiLFwiSW52RW5kRHRcIjpcIjAxLzA5LzIwMjBcIn0sXCJQcmVjRG9jRHRsc1wiOlt7XCJJbnZOb1wiOlwiRE9DLTk4MlwiLFwiSW52RHRcIjpcIjAxLzA4LzIwMjBcIixcIk90aFJlZk5vXCI6XCIxMjM0NTZcIn1dLFwiQ29udHJEdGxzXCI6W3tcIlJlY0FkdkR0XCI6XCIwMS8wOC8yMDIwXCJ9XX19IiwiaXNzIjoiTklDIn0.ZzMLDxJKvNAsw_XbDRfMlRXSAXaB39I1EYwBGm6sRl47VKz0n3Blku-URWTGI6KCJX2eQm7wfxcDK6Fgad3vFVm_YtVveO35sFlq6hGDb7sKaZwLXSNEyKJex_SlJtaGmbEnxTPWA1BnmyX4ndscywUh4lGTOvwDuv4wTY0OJ3rBkLV-TApIMv6jceR_XZTfAPXkJi5qYBG3WmJ4xwCBU9j4QuV87zMr_cY9D8H_RYD4qOiZfrHVSnx_XvpfX5HK1Qw4Wb8VtqudrsHPNdszyKjkK7ZsYjQ2TZIsTUWlYF7dkapPLtLkCYuUPfchmiUYJDz58LCorJAoVYSpQqRZqg',
        SignedQRCode: 'eyJhbGciOiJSUzI1NiIsImtpZCI6IkVEQzU3REUxMzU4QjMwMEJBOUY3OTM0MEE2Njk2ODMxRjNDODUwNDciLCJ0eXAiOiJKV1QiLCJ4NXQiOiI3Y1Y5NFRXTE1BdXA5NU5BcG1sb01mUElVRWMifQ.eyJkYXRhIjoie1wiU2VsbGVyR3N0aW5cIjpcIjI5QUFGQ0Q1ODYyUjAwMFwiLFwiQnV5ZXJHc3RpblwiOlwiMjRBQUZDRDU4NjJSMDA1XCIsXCJEb2NOb1wiOlwiSU5MLTM1XCIsXCJEb2NUeXBcIjpcIklOVlwiLFwiRG9jRHRcIjpcIjE4LzA5LzIwMjBcIixcIlRvdEludlZhbFwiOjExODAwMCxcIkl0ZW1DbnRcIjoxLFwiTWFpbkhzbkNvZGVcIjpcIjg3MDg5OTAwXCIsXCJJcm5cIjpcImRhOWRmMTM5YTQ0Nzc0NzkyYjIyOTgwMDQzMDAxMjIzN2Q4NWRhNzlhMDcyMWVmY2JkMmVkZGEyYzQ5NzMzZmZcIixcIklybkR0XCI6XCIyMDIwLTA5LTI1IDE1OjAxOjAwXCJ9IiwiaXNzIjoiTklDIn0.A5ocnZJRD-DB395r3X-mQ0-19E0XvR-1eq73ZNPPbDrih0QaQQuq4LT05NN7I4uEcrdAkOwgVxp3XK4wugYwRiME8n9Lhi8oVV9J4uM6vRz5zc6i8CQj-W9YDgnbqW-xLeCSi3LaibV5qMNyOMHadw_pileFM8nL_mzRetYr1JzCgzepCvglSiC5szJAmCRc1aZ9_ub8gZgsDPMfGgwDnS_iCO3peqgPLji9c2kzb4AkU-pqLVy6FwoyFfnt0KYVyUEFwUkp3XO2Gvmj4Q0kmMWbdA83RT1IoAVMJbBumJhngoLHs_80BsA2BtTDR7NYUjKGzcOjYPsxVAO8CLvH0Q',
        Status: 'ACT',
        EwbNo: 601008685963,
      },
      group_id: null,
      gstin: '29AAFCD5862R000',
      is_deleted: false,
      owner_id: '9d91621f-414a-442a-b90e-175f8c25c1e9',
      tag_identifier: '9d91621f-414a-442a-b90e-175f8c25c1e9',
      transaction: {
        Version: '1.01',
        TranDtls: {
          TaxSch: 'GST',
          RegRev: 'N',
          SupTyp: 'SEZWP',
          IgstOnIntra: 'N',
        },
        DocDtls: {
          Typ: 'CRN',
          No: 'INL-35',
          Dt: [
            2020,
            9,
            18,
          ],
        },
        SellerDtls: {
          Gstin: '29AAFCD5862R000',
          LglNm: 'Seller Legal Name',
          TrdNm: 'Seller trade name',
          Addr1: 'Seller Address 1',
          Addr2: 'Seller Address 23',
          Loc: 'Seller location',
          Pin: 560027,
          Stcd: '9',
          Ph: '9000000000',
          Em: 'abc@gmail.com',
        },
        BuyerDtls: {
          Gstin: '24AAFCD5862R005',
          LglNm: 'XYZ company pvt ltd',
          TrdNm: 'XYZ Industries',
          Pos: '9',
          Addr1: '7th block, kuvempu layout',
          Addr2: 'kuvempu layout',
          Loc: 'GANDHINAGAR',
          Pin: 382020,
          Stcd: '24',
          Ph: '91111111111',
          Em: 'xyz@yahoo.com',
        },
        DispDtls: {
          Nm: 'ABC company pvt ltd',
          Addr1: 'Dispatch detials line1',
          Addr2: 'Dispatch details line 2',
          Loc: 'Banagalore',
          Pin: 562160,
          Stcd: '29',
        },
        ShipDtls: {
          Gstin: '29AWGPV7107B1Z1',
          LglNm: 'CBE company pvt ltd',
          TrdNm: 'kuvempu layout',
          Addr1: '7th block, kuvempu layout',
          Addr2: 'kuvempu layout',
          Loc: 'Banagalore',
          Pin: 562160,
          Stcd: '29',
        },
        ItemList: [
          {
            SlNo: '23',
            PrdDesc: '3ML DISPOVAN SYRINGES WITH NEEDLES 0.60*25 (  23G )',
            IsServc: 'N',
            HsnCd: '9018',
            Barcde: '123456',
            Qty: 2000.0,
            FreeQty: 0.0,
            Unit: 'NOS',
            UnitPrice: 0.00,
            TotAmt: 3360.00,
            Discount: 0.00,
            PreTaxVal: 0.00,
            AssAmt: 3360.00,
            GstRt: {
              value: 12.00,
            },
            IgstAmt: 0.00,
            CgstAmt: 202.00,
            SgstAmt: 202.00,
            CesRt: {
              value: 0.00,
            },
            CesAmt: 0.00,
            CesNonAdvlAmt: 0.00,
            StateCesRt: {
              value: 0.00,
            },
            StateCesAmt: 0.00,
            StateCesNonAdvlAmt: 0.00,
            OthChrg: 0.00,
            TotItemVal: 3764.00,
            OrdLineRef: '3256',
            OrgCntry: 'IN',
            PrdSlNo: '1',
            BchDtls: {
              Nm: '037032SE2',
              ExpDt: [
                2020,
                8,
                1,
              ],
            },
            AttribDtls: [
              {
                Nm: '3ML DISPOVAN SYRINGES WITH NEEDLES 0.60*25 (  23G )',
                Val: '3,360.00',
              },
            ],
          },
          {
            SlNo: '2',
            PrdDesc: '3ML DISPOVAN SYRINGES WITH NEEDLES 0.60*25 (  23G )',
            IsServc: 'N',
            HsnCd: '9018',
            Barcde: '123456',
            Qty: 2000.0,
            FreeQty: 0.0,
            Unit: 'NOS',
            UnitPrice: 0.00,
            TotAmt: 3360.00,
            Discount: 0.00,
            PreTaxVal: 0.00,
            AssAmt: 3360.00,
            GstRt: {
              value: 12.00,
            },
            IgstAmt: 0.00,
            CgstAmt: 202.00,
            SgstAmt: 202.00,
            CesRt: {
              value: 0.00,
            },
            CesAmt: 0.00,
            CesNonAdvlAmt: 0.00,
            StateCesRt: {
              value: 0.00,
            },
            StateCesAmt: 0.00,
            StateCesNonAdvlAmt: 0.00,
            OthChrg: 0.00,
            TotItemVal: 3764.00,
            OrdLineRef: '3256',
            OrgCntry: 'IN',
            PrdSlNo: '1',
            BchDtls: {
              Nm: '037032SE2',
              ExpDt: [
                2020,
                8,
                1,
              ],
            },
            AttribDtls: [
              {
                Nm: '3ML DISPOVAN SYRINGES WITH NEEDLES 0.60*25 (  23G )',
                Val: '3,360.00',
              },
            ],
          },
        ],
        ValDtls: {
          AssVal: 100000,
          CgstVal: 0,
          SgstVal: 0,
          IgstVal: 18000,
          CesVal: 0,
          Discount: 10,
          StCesVal: 0,
          OthChrg: 0,
          RndOffAmt: 0,
          TotInvVal: 118000,
        },
        PayDtls: {
          Nm: 'ABCDE',
          Mode: 'Cash',
          AccDet: '345678',
          FininsBr: 'FininsBr',
        },
        RefDtls: {
          InvRm: 'TEST',
          DocPerdDtls: {
            InvStDt: [
              2020,
              8,
              1,
            ],
            InvEndDt: [
              2020,
              9,
              1,
            ],
          },
          PrecDocDtls: [
            {
              InvNo: 'DOC-982',
              InvDt: [
                2020,
                8,
                1,
              ],
              OthRefNo: '123456',
            },
          ],
          ContrDtls: [
            {
              RecAdvDt: [
                2020,
                8,
                1,
              ],
              RecAdvRefr: 'Doc/003',
              Tendrefr: 'Abc001',
              Contrrefr: 'Co123',
              Extrefr: 'Yo456',
              Projrefr: 'Doc-456',
              PORefr: 'ZGOE174134',
              PORefDt: [
                2017,
                6,
                28,
              ],
            },
          ],
        },
        EwbDtls: {
          TransId: '12AWGPV7107B1Z1',
          TransName: 'XYZ EXPORTS',
          TransMode: '1',
          Distance: 100,
          TransDocNo: 'DOC01',
          TransDocDt: [
            2020,
            9,
            1,
          ],
          VehNo: 'ka123456',
          VehType: 'R',
        },
      },
      transaction_id: '29AAFCD5862R000_INL-35_INV_2020',
      transaction_metadata: null,
    },
    parameters: {
      printFor: 'customer',
      supplyOf: 'goods',
      template: '9efaf524-9510-499b-bc84-092bbd2f2866',
    },
    images: {
      logo: 'https://assets1.cleartax-cdn.com/s/img/2019/08/07122607/h-quality-logo.png',
    },
  },
};
local docHeader(field_id, disabled_val, text_val) = {
  section_id: 'document_heading',
  field_id: field_id,
  meta_tags: {
    disabled: disabled_val,
  },
  style: 'documentHeading',
  text: text_val,
};
local columnField(label_val, field_val, bold_labels=true) = {
  text: [
    {
      text: label_val + ': ',
      style: if bold_labels then ['fontStyleBold'] else [],
    },
    {
      text: field_val,
    },
  ],
  style: [
    'mb5',
  ],
};
local qrCode(fit_size, alignment, code_val) = {
  qr: code_val,
  fit: fit_size,
  eccLevel: 'L',
  alignment: alignment,
};
local buyerSupplierDetails = [
  {
    sectionHeader: 'Details Of Supplier',
    details: [
      { label: 'Name', value: 'Seller Legal Name', disabled: false },
      { label: 'PAN', value: 'AAFCD5862R', disabled: false },
      { label: 'Address', value: 'Seller Address 1\n Seller Address 23', disabled: false },
      { label: 'City', value: 'Seller location', disabled: false },
      { label: 'State Name', value: 'Uttar Pradesh', disabled: false },
      { label: 'State Code', value: '09', disabled: false },
      { label: 'Pin Code', value: '560027', disabled: false },
      { label: 'GSTIN', value: '29AAFCD5862R000', disabled: false },
    ],
  },
  {
    sectionHeader: 'Details of Customer (Bill to)',
    details: [
      { label: 'Name', value: 'XYZ company pvt ltd', disabled: false },
      { label: 'PAN', value: '<buyerdtls.pan>', disabled: false },
      { label: 'Address', value: '7th block, kuvempu layout\nkuvempu layout', disabled: false },
      { label: 'City', value: 'GANDHINAGAR', disabled: false },
      { label: 'State Name', value: '<buyerdtls.statename>', disabled: false },
      { label: 'State Code', value: '24', disabled: false },
      { label: 'Pin Code', value: '382020', disabled: false },
      { label: 'GSTIN', value: '24AAFCD5862R005', disabled: false },
    ],
  },
];
local genDetailsTable(table_id, table_borders, table_details) = {
  id: table_id,
  style: [
    'fontSize9',
    'mb5',
  ],
  layout: table_borders,
  table: {
    widths: '*',
    body: [
      [
        [
          {
            style: 'sectionHeading',
            text: x.sectionHeader + ': ',
          },
          {
            layout: table_borders,
            table: {
              widths: [
                50,
                '*',
              ],
              body: [
                [
                  {
                    section_id: 'invoice_details',
                    field_id: 'supplier_name_label',
                    meta_tags: {
                      disabled: y.disabled,
                    },
                    text: y.label + ': ',
                    style: 'fontStyleBold',
                  },
                  {
                    section_id: 'invoice_details',
                    field_id: 'supplier_name_value',
                    meta_tags: {
                      disabled: y.disabled,
                    },
                    text: y.value,
                  },
                ]
                for y in x.details
              ],
            },
          },
        ]
        for x in buyerSupplierDetails
      ],
    ],
  },
};
local itemListDetails = {
  header_widths: [
    '3.5%',
    '16%',
    '6%',
    '6%',
    '6%',
    '6%',
    '6%',
    '8.5%',
    '8%',
    '6%',
    '7%',
    '6%',
    '7%',
    '6%',
    '9%',
  ],
  row_values: [
    [
      { val: 'Sr No.', header: true },
      { val: 'Description of Goods/Service', header: true },
      { val: 'HSN Code/SAC', header: true },
      { val: 'Qty.', header: true },
      { val: 'Unit', header: true },
      { val: 'Rate (per item)', header: true },
      { val: 'Total', header: true },
      { val: 'Discount', header: true },
      { val: 'Taxable Value', header: true },
      { val: 'GST', header: true },
      { val: 'Central Tax', header: true },
      { val: 'State/UT Tax', header: true },
      { val: 'Integrated Tax', header: true },
      { val: 'Other Charges', header: true },
      { val: 'Total Value', header: true },
    ],
    [
      { val: '', header: true },
      { val: '', header: true },
      { val: '', header: true },
      { val: '', header: true },
      { val: '', header: true },
      { val: 'Amt\n₹', header: true },
      { val: 'Amt\n₹', header: true },
      { val: 'Amt\n₹', header: true },
      { val: 'Amt\n₹', header: true },
      { val: 'Rate\n%', header: true },
      { val: 'Amt\n₹', header: true },
      { val: 'Amt\n₹', header: true },
      { val: 'Amt\n₹', header: true },
      { val: 'Amt\n₹', header: true },
      { val: 'Amt\n₹', header: true },
    ],
    [
      { val: '23', header: false },
      { val: '3ML DISPOVAN SYRINGES WITH NEEDLES 0.60*25 (  23G )', header: false },
      { val: '9018', header: false },
      { val: '2000', header: false },
      { val: 'NOS', header: false },
      { val: '0', header: false },
      { val: '3360', header: false },
      { val: '0', header: false },
      { val: '3360', header: false },
      { val: '12', header: false },
      { val: '202', header: false },
      { val: '202', header: false },
      { val: '0', header: false },
      { val: '0', header: false },
      { val: '3764', header: false },
    ],
    [
      { val: '2', header: false },
      { val: '3ML DISPOVAN SYRINGES WITH NEEDLES 0.60*25 (  23G )', header: false },
      { val: '9018', header: false },
      { val: '2000', header: false },
      { val: 'NOS', header: false },
      { val: '0', header: false },
      { val: '3360', header: false },
      { val: '0', header: false },
      { val: '3360', header: false },
      { val: '12', header: false },
      { val: '202', header: false },
      { val: '202', header: false },
      { val: '0', header: false },
      { val: '0', header: false },
      { val: '3764', header: false },
    ],
  ],
};
local genItemListTable(header_rows, item_details_array) = {
  id: 'section_line_item',
  no_of_headers: header_rows,
  style: [
    'itemListTable',
  ],
  table: {
    widths: item_details_array.header_widths,
    headerRows: header_rows,
    body: [
      [
        {
          text: column.val,
          style: if column.header then ['itemListTableHeader'] else [],
        }
        for column in rowEntry
      ]
      for rowEntry in item_details_array.row_values
    ],
  },
};
local signatureBlock(sig_name, sig_text, auth_text) = {
  style: 'signature',
  stack: [
    {
      text: sig_name,
    },
    {
      text: sig_text,
      margin: [
        0,
        0,
        0,
        30,
      ],
    },
    {
      text: auth_text,
    },
  ],
};
{
  info: {
    title: template_type,
    author: author,
    subject: author,
    keywords: author,
    creator: author,
    producer: author,
  },
  pageSize: 'A4',
  pageOrientation: 'portrait',
  pageMargins: [
    template_margin,
    template_margin,
    template_margin,
    template_margin,
  ],
  content: [
    docHeader('document_header', false, 'CREDIT NOTE'),
    {
      id: 'invoice',
      style: [
        'fontSize9',
        'textAlignLeft',
        'mb5',
      ],
      columns: [
        {
          width: 'auto',
          stack: [
            columnField('Invoice Date', std.join('-', std.map(std.toString, payload.documentData.invoice.transaction.DocDtls.Dt))),
            columnField('Invoice No', payload.documentData.invoice.transaction.DocDtls.No),
            columnField('Service Period', std.join('-', std.map(std.toString, payload.documentData.invoice.transaction.RefDtls.DocPerdDtls.InvStDt)) + ' to ' + std.join('-', std.map(std.toString, payload.documentData.invoice.transaction.RefDtls.DocPerdDtls.InvEndDt))),
            columnField('Applicability of reverse charge', payload.documentData.invoice.transaction.TranDtls.RegRev),
            columnField('IRN', payload.documentData.invoice.govt_response.Irn),
          ],
        },
        {
          width: '*',
          stack: [
            qrCode(200, 'right', payload.documentData.invoice.govt_response.SignedQRCode),
          ],
        },
      ],
    },
    genDetailsTable('sellerbuyer', 'noBorders', buyerSupplierDetails),
    genItemListTable(2, itemListDetails),
    {
      columns: [
        {
          style: [
            'fontSize8',
            'textAlignLeft',
          ],
          stack: [
            [
              columnField('Credit the payment to our bank account', '', false),
              columnField('Payment Instructions', '', false),
              columnField('Beneficiary Name', 'ABCDE', false),
              columnField('Beneficiary Account', '', false),
              columnField('Beneficiary Bank IFSC Code', '', false),
              columnField('Payment Advice E-mail Address', payload.documentData.invoice.transaction.SellerDtls.Em, false),
            ],
            [
              columnField('\n\nTerms & Conditions: \n Invoice is valid if digitally signed', '', false),
            ],
          ],
        },
        signatureBlock('Seller Legal Name', '', 'Authorized Signatory'),
      ],
    },
  ],
  styles: {
    documentCopy: {
      fontSize: 12,
      alignment: 'right',
    },
    documentHeading: {
      fontSize: 16,
      bold: true,
      decoration: 'underline',
      alignment: 'center',
      margin: [
        0,
        0,
        0,
        20,
      ],
    },
    mb5: {
      margin: [
        0,
        0,
        0,
        5,
      ],
    },
    textAlignLeft: {
      alignment: 'left',
    },
    sectionHeading: {
      fontSize: 10,
      bold: true,
      margin: [
        0,
        0,
        0,
        5,
      ],
    },
    fontStyleBold: {
      bold: true,
    },
    fontSize8: {
      fontSize: 8,
    },
    fontSize9: {
      fontSize: 9,
    },
    itemListTable: {
      margin: [
        0,
        5,
        0,
        15,
      ],
      fontSize: 6,
      color: 'black',
    },
    itemListTableHeader: {
      bold: true,
      fontSize: 8,
      color: 'black',
      fillColor: '#cccccc',
      alignment: 'center',
    },
    signature: {
      margin: [
        0,
        70,
        0,
        0,
      ],
      fontSize: 10,
      bold: true,
      alignment: 'right',
    },
  },
  defaultStyle: {
    columnGap: 20,
  },
}
