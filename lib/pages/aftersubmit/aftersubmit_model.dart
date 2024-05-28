import '/flutter_flow/flutter_flow_util.dart';
import 'aftersubmit_widget.dart' show AftersubmitWidget;
import 'package:flutter/material.dart';

class AftersubmitModel extends FlutterFlowModel<AftersubmitWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
