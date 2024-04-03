class DocumentSci1{
  // ignore: non_constant_identifier_names
  final String? docSci1_title;
  // ignore: non_constant_identifier_names
  final String? docSci1_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  final int? pageSci1_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  DocumentSci1(this.docSci1_title,this.docSci1_url,this.pageSci1_num);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<DocumentSci1> docSci1_list = [
    DocumentSci1(
        "Chapter 1 (Chemical Reactions And Equations)",
        "https://ncert.nic.in/textbook/pdf/jesc101.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 2 (Acids,bases and salts)",
        "https://ncert.nic.in/textbook/pdf/jesc102.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 3 (Metals and Non-metals)",
        "https://ncert.nic.in/textbook/pdf/jesc103.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 4 (Carbon and its compounds)",
        "https://ncert.nic.in/textbook/pdf/jesc104.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 5 (Life Processes)",
        "https://ncert.nic.in/textbook/pdf/jesc105.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 6 (Control and coordination)",
        "https://ncert.nic.in/textbook/pdf/jesc106.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 7 (How do organisms reproduce?)",
        "https://ncert.nic.in/textbook/pdf/jesc107.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 8 (Heredity)",
        "https://ncert.nic.in/textbook/pdf/jesc108.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 9 (Light- Reflections and Refractions)",
        "https://ncert.nic.in/textbook/pdf/jesc109.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 10 (Human Eye)",
        "https://ncert.nic.in/textbook/pdf/jesc110.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 11 (Electricity)",
        "https://ncert.nic.in/textbook/pdf/jesc111.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 12 (Magnetic effects and electric currents)",
        "https://ncert.nic.in/textbook/pdf/jesc112.pdf",
        10
    ),
    DocumentSci1(
        "Chapter 13 (Our Environment)",
        "https://ncert.nic.in/textbook/pdf/jesc113.pdf",
        10
    ),
  ];

}