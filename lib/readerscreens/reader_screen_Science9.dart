import 'dart:io';

import 'package:first_app/models/document_models_Science9.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class ReaderScreenSci9 extends StatefulWidget {
  ReaderScreenSci9 (this.docSci,{Key? key}) : super(key: key);

  DocumentSci docSci;

  @override
  State<ReaderScreenSci9> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreenSci9> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(widget.docSci.docSci_title!),
        ),
        // body : Container(
        //   key: _pdfViewerKey,
        //   child: SfPdfViewer.network(widget.doc.doc_url!),
        // ),
        body: Container(
          child:
          SfPdfViewer.network(widget.docSci.docSci_url!,
            //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),
            // initialScrollOffset: const Offset(0, 500),
            // initialZoomLevel: 1.5,
          ),
        )
    );
  }
}
