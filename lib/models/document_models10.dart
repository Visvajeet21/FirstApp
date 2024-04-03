class DocumentOne {
  // ignore: non_constant_identifier_names
  final String? docone_title;
  // ignore: non_constant_identifier_names
  final String? docone_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  final int? pageone_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  DocumentOne(this.docone_title,this.docone_url, this.pageone_num);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<DocumentOne> docone_list = [
    DocumentOne(
        "Chapter 1 (Real Numbers)",
        "https://ncert.nic.in/textbook/pdf/jemh101.pdf",
        10
    ),
    DocumentOne(
        "Chapter 2 (Polynomials)",
        "https://ncert.nic.in/textbook/pdf/jemh102.pdf",
        10
    ),
    DocumentOne(
        "Chapter 3 (Pair of linear equation in two variables)",
        "https://ncert.nic.in/textbook/pdf/jemh103.pdf",
        10
    ),
    DocumentOne(
        "Chapter 4 (Quadratic Equations)",
        "https://ncert.nic.in/textbook/pdf/jemh104.pdf",
        10
    ),
    DocumentOne(
        "Chapter 5 (Arithmetic Progression)",
        "https://ncert.nic.in/textbook/pdf/jemh105.pdf",
        10
    ),
    DocumentOne(
        "Chapter 6 (Triangles)",
        "https://ncert.nic.in/textbook/pdf/jemh106.pdf",
        10
    ),
    DocumentOne(
        "Chapter 7 (Coordinate Geometry)",
        "https://ncert.nic.in/textbook/pdf/jemh107.pdf",
        10
    ),
    DocumentOne(
        "Chapter 8 (Trigonometry)",
        "https://ncert.nic.in/textbook/pdf/jemh108.pdf",
        10
    ),
    DocumentOne(
        "Chapter 9 (Applications of Trigonometry)",
        "https://ncert.nic.in/textbook/pdf/jemh109.pdf",
        10
    ),
    DocumentOne(
        "Chapter 10 (Circles)",
        "https://ncert.nic.in/textbook/pdf/jemh110.pdf",
        10
    ),
    DocumentOne(
        "Chapter 11 (Area related to circles)",
        "https://ncert.nic.in/textbook/pdf/jemh111.pdf",
        10
    ),
    DocumentOne(
        "Chapter 12 (Surface Area and volume)",
        "https://ncert.nic.in/textbook/pdf/jemh112.pdf",
        10
    ),
    DocumentOne(
        "Chapter 13 (Statistics)",
        "https://ncert.nic.in/textbook/pdf/jemh113.pdf",
        10
    ),
    DocumentOne(
        "Chapter 14 (Probability)",
        "https://ncert.nic.in/textbook/pdf/jemh114.pdf",
        10
    ),
  ];

}