{
  docHeader(field_id, disabled_val, text_val)::{
    section_id: 'heading',
    field_id: field_id,
    meta_tags: {
      disabled: disabled_val,
    },
    style: 'documentHeading',
    text: text_val,
  },
  columnField(field_id, disabled_val, label_val, field_val, bold_text=true)::{
    section_id: 'column_field',
    field_id: field_id,
    meta_tags: {
      disabled: disabled_val,
    },
    text: [
      {
        text: label_val + ': ' + field_val,
        style: if bold_text then ['fontStyleBold'] else [],
      },
    ],
    style: [
      'mb5',
    ],
  },
  qrCode(fit_size, alignment, code_val)::{
    qr: code_val,
    fit: fit_size,
    eccLevel: 'L',
    alignment: alignment,
  },
  genDetailsTable(table_id, table_borders, table_details)::{
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
                      field_id: y.field_id,
                      meta_tags: {
                        disabled: y.disabled,
                      },
                      text: y.label + ': ',
                      style: 'fontStyleBold',
                    },
                    {
                      section_id: 'invoice_details',
                      field_id: y.field_id,
                      meta_tags: {
                        disabled: y.disabled,
                      },
                      text: y.value
                    }
                  ]
                  for y in x.details
                ],
              },
            },
          ]
          for x in table_details
        ],
      ],
    },
  },
  genItemListTable(header_rows, item_details_array)::{
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
  },
  signatureBlock(sig_name, sig_text, auth_text)::{
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
  }
}