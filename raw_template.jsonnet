local template_type = 'E-Invoice';
local author = 'ClearTax';
{
      "info": {
            "title": template_type,
            "author": author,
            "subject": author,
            "keywords": author,
            "creator": author,
            "producer": author
      },
      "pageSize": "A4",
      "pageOrientation": "portrait",
      "pageMargins": [
            40,
            40,
            40,
            40
      ],
      "content": [
            {
                  "section_id": "header",
                  "columns": [
                        {
                              "image": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVQYV2NgYAAAAAMAAWgmWQ0AAAAASUVORK5CYII=",
                              "width": 100
                        },
                        {
                              "style": "documentCopy",
                              "text": ""
                        }
                  ]
            },
            {
                  "section_id": "document_heading",
                  "field_id": "Document Header",
                  "meta_tags": {
                        "disabled": false
                  },
                  "style": "documentHeading",
                  "text": "<docdtls.typ>"
            },
            {
                  "id": "invoice",
                  "style": [
                        "fontSize9",
                        "textAlignLeft",
                        "mb5"
                  ],
                  "columns": [
                        {
                              "width": "auto",
                              "stack": [
                                    {
                                          "text": [
                                                {
                                                      "text": "Invoice Date: ",
                                                      "style": [
                                                            "fontStyleBold"
                                                      ]
                                                },
                                                {
                                                      "text": "<docdtls.dt>"
                                                }
                                          ],
                                          "style": [
                                                "mb5"
                                          ]
                                    },
                                    {
                                          "text": [
                                                {
                                                      "text": "Invoice No: ",
                                                      "style": [
                                                            "fontStyleBold"
                                                      ]
                                                },
                                                {
                                                      "text": "<docdtls.no>"
                                                }
                                          ],
                                          "style": [
                                                "mb5"
                                          ]
                                    },
                                    {
                                          "text": [
                                                {
                                                      "text": "Service Period: ",
                                                      "style": [
                                                            "fontStyleBold"
                                                      ]
                                                },
                                                {
                                                      "text": "01-08-2020 to 01-09-2020"
                                                }
                                          ],
                                          "style": [
                                                "mb5"
                                          ]
                                    },
                                    {
                                          "text": [
                                                {
                                                      "text": "Applicability of reverse charge: ",
                                                      "style": [
                                                            "fontStyleBold"
                                                      ]
                                                },
                                                {
                                                      "text": "<trandtls.regrev>"
                                                }
                                          ],
                                          "style": [
                                                "mb5"
                                          ]
                                    },
                                    {
                                          "text": [
                                                {
                                                      "text": "IRN: ",
                                                      "style": [
                                                            "fontStyleBold"
                                                      ]
                                                },
                                                {
                                                      "text": "<govt_response.irn>"
                                                }
                                          ],
                                          "style": [
                                                "mb5"
                                          ]
                                    }
                              ]
                        },
                        {
                              "width": "*",
                              "stack": [
                                    {
                                          "qr": "<govt_response.signedqrcode>",
                                          "fit": 200,
                                          "eccLevel": "L",
                                          "alignment": "right"
                                    }
                              ]
                        }
                  ]
            },
            {
                  "id": "sellerbuyer",
                  "style": [
                        "fontSize9",
                        "mb5"
                  ],
                  "layout": "noBorders",
                  "table": {
                        "widths": "*",
                        "body": [
                              [
                                    [
                                          {
                                                "style": "sectionHeading",
                                                "text": "Details of Supplier:"
                                          },
                                          {
                                                "layout": "noBorders",
                                                "table": {
                                                      "widths": [
                                                            50,
                                                            "*"
                                                      ],
                                                      "body": [
                                                            [
                                                                  {
                                                                        "text": "Name:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<sellerdtls.lglnm>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "PAN:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<sellerdtls.pan>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "Address:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<sellerdtls.addr1>\n <sellerdtls.addr2>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "City:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<sellerdtls.loc>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "State Name:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<sellerdtls.statename>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "State Code:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<sellerdtls.stcd>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "Pin Code:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<sellerdtls.pin>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "GSTIN:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<sellerdtls.gstin>"
                                                            ]
                                                      ]
                                                }
                                          }
                                    ],
                                    [
                                          {
                                                "style": "sectionHeading",
                                                "text": "Details of Customer (Bill to):"
                                          },
                                          {
                                                "layout": "noBorders",
                                                "table": {
                                                      "widths": [
                                                            50,
                                                            "*"
                                                      ],
                                                      "body": [
                                                            [
                                                                  {
                                                                        "section_id": "invoice_details",
                                                                        "field_id": "Buyer Name Label",
                                                                        "meta_tags": {
                                                                              "disabled": false
                                                                        },
                                                                        "text": "Name:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  {
                                                                        "section_id": "invoice_details",
                                                                        "field_id": "Buyer Name Value",
                                                                        "meta_tags": {
                                                                              "disabled": false
                                                                        },
                                                                        "text": "<buyerdtls.lglnm>"
                                                                  }
                                                            ],
                                                            [
                                                                  {
                                                                        "section_id": "invoice_details",
                                                                        "field_id": "Buyer PAN Label",
                                                                        "meta_tags": {
                                                                              "disabled": false
                                                                        },
                                                                        "text": "PAN:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  {
                                                                        "section_id": "invoice_details",
                                                                        "field_id": "Buyer PAN Value",
                                                                        "meta_tags": {
                                                                              "disabled": false
                                                                        },
                                                                        "text": "<buyerdtls.pan>"
                                                                  }
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "Address:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<buyerdtls.addr1>\n<buyerdtls.addr2>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "City:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<buyerdtls.loc>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "State Name:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<buyerdtls.statename>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "State Code:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<buyerdtls.stcd>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "Pin Code:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<buyerdtls.pin>"
                                                            ],
                                                            [
                                                                  {
                                                                        "text": "GSTIN:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  "<buyerdtls.gstin>"
                                                            ],
                                                            [
                                                                  {
                                                                        "section_id": "invoice_details",
                                                                        "field_id": "Place of Supply Label",
                                                                        "meta_tags": {
                                                                              "disabled": false
                                                                        },
                                                                        "text": "Place of Supply:",
                                                                        "style": "fontStyleBold"
                                                                  },
                                                                  {
                                                                        "section_id": "invoice_details",
                                                                        "field_id": "Place of Supply Value",
                                                                        "meta_tags": {
                                                                              "disabled": false
                                                                        },
                                                                        "text": "<buyerdtls.pos>,Uttar Pradesh"
                                                                  }
                                                            ]
                                                      ]
                                                }
                                          }
                                    ]
                              ]
                        ]
                  }
            },
            {
                  "id": "section_line_item",
                  "no_of_headers": "2",
                  "style": [
                        "itemListTable"
                  ],
                  "table": {
                        "widths": [
                              "3.5%",
                              "16%",
                              "6%",
                              "6%",
                              "6%",
                              "6%",
                              "6%",
                              "8.5%",
                              "8%",
                              "6%",
                              "7%",
                              "6%",
                              "7%",
                              "6%",
                              "9%"
                        ],
                        "headerRows": 2,
                        "body": [
                              [
                                    {
                                          "text": "Sr No.",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Description of Goods/Service",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "HSN Code/SAC",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Qty.",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Unit",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Rate (per item)",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Total",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Discount",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Taxable Value",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "GST",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Central Tax",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "State/UT Tax",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Integrated Tax",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Other Charges",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Total Value",
                                          "style": "itemListTableHeader"
                                    }
                              ],
                              [
                                    {
                                          "text": "",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Amt\n₹",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Amt\n₹",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Amt\n₹",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Amt\n₹",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Rate\n%",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Amt\n₹",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Amt\n₹",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Amt\n₹",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Amt\n₹",
                                          "style": "itemListTableHeader"
                                    },
                                    {
                                          "text": "Amt\n₹",
                                          "style": "itemListTableHeader"
                                    }
                              ],
                              [
                                    {
                                          "text": "slno",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "prddesc",
                                          "alignment": "left"
                                    },
                                    {
                                          "text": "hsncd",
                                          "alignment": "left"
                                    },
                                    {
                                          "text": "qty",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "unit",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "unitprice",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "totamt",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "discount",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "assamt",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "gstrt",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "cgstamt",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "sgstamt",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "igstamt",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "othchrg",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "totitemval",
                                          "alignment": "right"
                                    }
                              ],
                              [
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {
                                          "text": "Total:",
                                          "alignment": "right"
                                    },
                                    {},
                                    {
                                          "text": "<valdtls.assval>",
                                          "alignment": "right"
                                    },
                                    {},
                                    {
                                          "text": "<valdtls.cgstval>",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "<valdtls.sgstval>",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "<valdtls.igstval>",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "<valdtls.othchrg>",
                                          "alignment": "right"
                                    },
                                    {
                                          "text": "<valdtls.totinvval>",
                                          "alignment": "right"
                                    }
                              ],
                              [
                                    {
                                          "text": "TCS ",
                                          "colSpan": 7,
                                          "alignment": "left"
                                    },
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {
                                          "text": "₹<valdtls.othchrg>",
                                          "colSpan": 8,
                                          "alignment": "right"
                                    },
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {}
                              ],
                              [
                                    {
                                          "text": "Total Invoice Value (In Figure) ",
                                          "colSpan": 7,
                                          "alignment": "left"
                                    },
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {
                                          "text": "₹<valdtls.totinvval>",
                                          "colSpan": 8,
                                          "alignment": "right"
                                    },
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {}
                              ],
                              [
                                    {
                                          "text": "Total Invoice Value (In Words) ",
                                          "colSpan": 7,
                                          "alignment": "left"
                                    },
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {
                                          "text": "One Lakh Eighteen Thousand Rupees Only",
                                          "colSpan": 8,
                                          "alignment": "left"
                                    },
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {},
                                    {}
                              ]
                        ]
                  }
            },
            {
                  "columns": [
                        {
                              "style": [
                                    "fontSize8",
                                    "textAlignLeft"
                              ],
                              "stack": [
                                    [
                                          {
                                                "text": "Credit the payment to our bank account:"
                                          },
                                          {
                                                "text": "Payment Instructions: "
                                          },
                                          {
                                                "text": "Beneficiary Name: ABCDE"
                                          },
                                          {
                                                "text": "Beneficiary Account: "
                                          },
                                          {
                                                "text": "Beneficiary Bank IFSC Code: "
                                          },
                                          {
                                                "text": "Payment Advice E-mail Address: abc@gmail.com"
                                          }
                                    ],
                                    [
                                          {
                                                "text": "\n\nTerms & Conditions: \n Invoice is valid if digitally signed"
                                          }
                                    ]
                              ]
                        },
                        {
                              "style": "signature",
                              "stack": [
                                    {
                                          "text": "<sellerdtls.lglnm>"
                                    },
                                    {
                                          "text": "",
                                          "margin": [
                                                0,
                                                0,
                                                0,
                                                30
                                          ]
                                    },
                                    {
                                          "text": "Authorized Signatory"
                                    }
                              ]
                        }
                  ]
            }
      ],
      "styles": {
            "documentCopy": {
                  "fontSize": 12,
                  "alignment": "right"
            },
            "documentHeading": {
                  "fontSize": 16,
                  "bold": true,
                  "decoration": "underline",
                  "alignment": "center",
                  "margin": [
                        0,
                        0,
                        0,
                        20
                  ]
            },
            "mb5": {
                  "margin": [
                        0,
                        0,
                        0,
                        5
                  ]
            },
            "textAlignLeft": {
                  "alignment": "left"
            },
            "sectionHeading": {
                  "fontSize": 10,
                  "bold": true,
                  "margin": [
                        0,
                        0,
                        0,
                        5
                  ]
            },
            "fontStyleBold": {
                  "bold": true
            },
            "fontSize8": {
                  "fontSize": 8
            },
            "fontSize9": {
                  "fontSize": 9
            },
            "itemListTable": {
                  "margin": [
                        0,
                        5,
                        0,
                        15
                  ],
                  "fontSize": 6,
                  "color": "black"
            },
            "itemListTableHeader": {
                  "bold": true,
                  "fontSize": 8,
                  "color": "black",
                  "fillColor": "#cccccc",
                  "alignment": "center"
            },
            "signature": {
                  "margin": [
                        0,
                        70,
                        0,
                        0
                  ],
                  "fontSize": 10,
                  "bold": true,
                  "alignment": "right"
            }
      },
      "defaultStyle": {
            "columnGap": 20
      }
}