class Document {
  // ignore: non_constant_identifier_names
  final String? doc_title;
  // ignore: non_constant_identifier_names
  final String? doc_url;
  //String? doc_date;
  // ignore: non_constant_identifier_names
  final int? page_num;

  //Document(this.doc_title,this.doc_url,this.doc_date,this.page_num);
  //Document(this.doc_title);
  Document(this.doc_title,this.doc_url,this.page_num);
  //Now we will add all the chapter PDFs here so that we can use it


  // ignore: non_constant_identifier_names
  static List<Document> doc_list = [
    Document(
        "Chapter 1 (Number System)",
        "https://ncert.nic.in/textbook/pdf/iemh101.pdf",
        10
    ),
    Document(
        "Chapter 2 (Polynomials)",
        "https://ncert.nic.in/textbook/pdf/iemh102.pdf",
        10
    ),
    Document(
        "Chapter 3 (Coordinate Geometry)",
        "https://ncert.nic.in/textbook/pdf/iemh103.pdf",
        10
    ),
    Document(
        "Chapter 4 (Linear Equations)",
        "https://ncert.nic.in/textbook/pdf/iemh104.pdf",
        10
    ),
    Document(
        "Chapter 5 (Euclid's Geometry)",
        "https://ncert.nic.in/textbook/pdf/iemh105.pdf",
        10
    ),
    Document(
        "Chapter 6 (Lines and angles)",
        "https://ncert.nic.in/textbook/pdf/iemh106.pdf",
        10
    ),
    Document(
        "Chapter 7 (Triangles)",
        "https://ncert.nic.in/textbook/pdf/iemh107.pdf",
        10
    ),
    Document(
        "Chapter 8 (Quadrilaterals)",
        "https://ncert.nic.in/textbook/pdf/iemh108.pdf",
        10
    ),
    Document(
        "Chapter 9 (Circles)",
        "https://ncert.nic.in/textbook/pdf/iemh109.pdf",
        10
    ),
    Document(
        "Chapter 10 (Heron's Formula)",
        "https://ncert.nic.in/textbook/pdf/iemh110.pdf",
        10
    ),
    Document(
        "Chapter 11 (Surface area and volume)",
        "https://ncert.nic.in/textbook/pdf/iemh111.pdf",
        10
    ),
    Document(
        "Chapter 12 (Statistics)",
        "https://ncert.nic.in/textbook/pdf/iemh112.pdf",
        10
    ),
  ];
  
}