import 'package:chat_gpt/services/api_services.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';

class ModelsProvider with ChangeNotifier {
  List<Model> modelList = [];
  String currentModel = "text-davinci-003";

  List<Model> get getModelList {
    return modelList;
  }

  String get getCurrentModel {
    return currentModel;
  }

  void setCurrentModel(String newModel) {
    currentModel = newModel;
    notifyListeners();
  }

  Future<List<Model>> getAllModels() async {
    modelList = await ApiService.getModels();
    return modelList;
  }
}
