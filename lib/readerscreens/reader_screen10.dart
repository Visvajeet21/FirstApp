import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:first_app/models/document_models10.dart';

class ReaderScreenTen extends StatefulWidget {
  ReaderScreenTen(this.docone,{Key? key}) : super(key: key);

  DocumentOne docone;

  @override
  State<ReaderScreenTen> createState() => _ReaderScreenTenState();
}

class _ReaderScreenTenState extends State<ReaderScreenTen> {
  @override

  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(widget.docone.docone_title!),
        ),
        // body : Container(
        //   key: _pdfViewerKey,
        //   child: SfPdfViewer.network(widget.doc.doc_url!),
        // ),
        body: Container(
          child: SfPdfViewer.network(widget.docone.docone_url!),
            // initialScrollOffset: const Offset(0, 500),
            // initialZoomLevel: 1.5,
          ),
    );
  }
}
