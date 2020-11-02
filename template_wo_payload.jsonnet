local template_type = 'E-Invoice';
local author = 'ClearTax';
local template_margin = 40;
local utils = import 'utils.libsonnet';
local buyerSupplierDetails = [
  {
    sectionHeader: 'Details Of Supplier',
    details: [
      { field_id: 'supplier_name', label: 'Name', value: 'Seller Legal Name', disabled: false },
      { field_id: 'supplier_pan', label: 'PAN', value: 'AAFCD5862R', disabled: false },
      { field_id: 'supplier_addr', label: 'Address', value: 'Seller Address 1\n Seller Address 23', disabled: false },
      { field_id: 'supplier_city', label: 'City', value: 'Seller location', disabled: false },
      { field_id: 'supplier_state', label: 'State Name', value: 'Uttar Pradesh', disabled: false },
      { field_id: 'supplier_state_code', label: 'State Code', value: '09', disabled: false },
      { field_id: 'supplier_pin_code', label: 'Pin Code', value: '560027', disabled: false },
      { field_id: 'supplier_gstin', label: 'GSTIN', value: '29AAFCD5862R000', disabled: false },
    ],
  },
  {
    sectionHeader: 'Details of Customer (Bill to)',
    details: [
      { field_id: 'customer_name', label: 'Name', value: 'XYZ company pvt ltd', disabled: false },
      { field_id: 'customer_pan', label: 'PAN', value: '<buyerdtls.pan>', disabled: false },
      { field_id: 'customer_addr', label: 'Address', value: '7th block, kuvempu layout\nkuvempu layout', disabled: false },
      { field_id: 'customer_city', label: 'City', value: 'GANDHINAGAR', disabled: false },
      { field_id: 'customer_state', label: 'State Name', value: '<buyerdtls.statename>', disabled: false },
      { field_id: 'customer_state_code', label: 'State Code', value: '24', disabled: false },
      { field_id: 'customer_pin_code', label: 'Pin Code', value: '382020', disabled: false },
      { field_id: 'customer_gstin', label: 'GSTIN', value: '24AAFCD5862R005', disabled: false },
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
            utils.columnField('invoice_date', false, 'Invoice Date', '<docdtls.dt>'),
            utils.columnField('invoice_no', false, 'Invoice No', '<docdtls.no>'),
            utils.columnField('service_period', false, 'Service Period', '<refdtls.docperddtls.invstdt>'),
            utils.columnField('rev_reg', false, 'Applicability of reverse charge', '<trandtls.regrev>'),
            utils.columnField('irn', false, 'IRN', '<govt_response.irn>'),
          ],
        },
        {
          width: '*',
          stack: [
            utils.qrCode(200, 'right', '<govt_response.signedqrcode>'),
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
              utils.columnField('bank_instr', false, 'Credit the payment to our bank account', '', false),
              utils.columnField('paymt_instr', false, 'Payment Instructions', '', false),
              utils.columnField('benf_name', false, 'Beneficiary Name', 'ABCDE', false),
              utils.columnField('benf_acct', false, 'Beneficiary Account', '', false),
              utils.columnField('benf_ifsc', false, 'Beneficiary Bank IFSC Code', '', false),
              utils.columnField('paymt_email', false, 'Payment Advice E-mail Address', '<sellerdtls.em>', false),
            ],
            [
              utils.columnField('terms_extra', false, '\n\nTerms & Conditions: \n Invoice is valid if digitally signed', '', false),
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