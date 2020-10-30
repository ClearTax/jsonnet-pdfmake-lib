local template_type = 'E-Invoice';
local author = 'ClearTax';
local template_margin = 40;
local payload = import './payload/1.json';
local utils = import 'utils.libsonnet';
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
    utils.docHeader('document_header', false, 'CREDIT NOTE'),
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
            utils.columnField('Invoice Date', std.join('-', std.map(std.toString, payload.documentData.invoice.transaction.DocDtls.Dt))),
            utils.columnField('Invoice No', payload.documentData.invoice.transaction.DocDtls.No),
            utils.columnField('Service Period', std.join('-', std.map(std.toString, payload.documentData.invoice.transaction.RefDtls.DocPerdDtls.InvStDt)) + ' to ' + std.join('-', std.map(std.toString, payload.documentData.invoice.transaction.RefDtls.DocPerdDtls.InvEndDt))),
            utils.columnField('Applicability of reverse charge', payload.documentData.invoice.transaction.TranDtls.RegRev),
            utils.columnField('IRN', payload.documentData.invoice.govt_response.Irn),
          ],
        },
        {
          width: '*',
          stack: [
            utils.qrCode(200, 'right', payload.documentData.invoice.govt_response.SignedQRCode),
          ],
        },
      ],
    },
    utils.genDetailsTable('sellerbuyer', 'noBorders', buyerSupplierDetails),
    utils.genItemListTable(2, itemListDetails),
    {
      columns: [
        {
          style: [
            'fontSize8',
            'textAlignLeft',
          ],
          stack: [
            [
              utils.columnField('Credit the payment to our bank account', '', false),
              utils.columnField('Payment Instructions', '', false),
              utils.columnField('Beneficiary Name', 'ABCDE', false),
              utils.columnField('Beneficiary Account', '', false),
              utils.columnField('Beneficiary Bank IFSC Code', '', false),
              utils.columnField('Payment Advice E-mail Address', payload.documentData.invoice.transaction.SellerDtls.Em, false),
            ],
            [
              utils.columnField('\n\nTerms & Conditions: \n Invoice is valid if digitally signed', '', false),
            ],
          ],
        },
        utils.signatureBlock('Seller Legal Name', '', 'Authorized Signatory'),
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
