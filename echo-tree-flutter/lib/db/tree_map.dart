import 'dart:async';

import 'package:echo_tree_flutter/db/managed_tree.dart';
import 'package:echo_tree_flutter/logging/logger.dart';

class TreeMap {
  final Map<String, ManagedTree> _treeMap = {};
  final StreamController<String> _treeQueueController = StreamController<String>.broadcast();

  Stream<String> get treeQueueStream => _treeQueueController.stream;

  void onTreeOpen(String treeName, Function callback) {
    if (treeOpen(treeName)) {
      callback();
      return;
    }
    _treeQueueController.stream.firstWhere((event) => event == treeName).then((_) {
      callback();
    });
  }

  void clear() async {
    List<Future> futures = [];
    _treeMap.forEach((key, tree) {
      futures.add(tree.clear());
    });

    await Future.wait(futures);
  }

  void drop() async {
    List<Future> futures = [];
    _treeMap.forEach((key, tree) {
      futures.add(tree.drop());
    });

    await Future.wait(futures);
    _treeMap.clear();
  }

  bool treeOpen(String treeName) {
    return _treeMap[treeName]?.isOpen == true;
  }

  Future<void> openTree(String treeName) async {
    if (_treeMap.containsKey(treeName) && _treeMap[treeName]?.isOpen == true) {
      EchoTreeLogger().w("Tree already open: $treeName");
      return;
    }

    _treeMap[treeName] = ManagedTree(treeName: treeName);
    await _treeMap[treeName]?.open();
    // Notify listeners that the tree is now open/exists
    _treeQueueController.add(treeName);
  }

  void removeTree(String treeName) {
    if (_treeMap.containsKey(treeName)) {
      _treeMap[treeName]?.clear();
      _treeMap[treeName]?.drop();
      _treeMap.remove(treeName);
    }
  }

  Future<ManagedTree> getTree(String treeName) async {
    if (_treeMap.containsKey(treeName)) {
      return _treeMap[treeName]!;
    } else {
      await openTree(treeName);
      if (_treeMap.containsKey(treeName)) {
        return _treeMap[treeName]!;
      } else {
        EchoTreeLogger().e("Tree not found: $treeName, providing a new tree.");
        return ManagedTree(treeName: treeName);
      }
    }
  }

  void forEach(void Function(String, ManagedTree) f) {
    _treeMap.forEach(f);
  }

  bool get isEmpty => _treeMap.isEmpty;
}
