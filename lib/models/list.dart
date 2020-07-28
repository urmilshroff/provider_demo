import 'package:flutter/material.dart';
import 'package:provider_demo/models/note.dart';

class ListModel extends ChangeNotifier {
  List<NoteModel> noteList = [];

  void addNote() {
    NoteModel note = NoteModel(
      title: 'Hello',
      body: 'World',
    );

    noteList.add(note);
    notifyListeners();
  }
}
