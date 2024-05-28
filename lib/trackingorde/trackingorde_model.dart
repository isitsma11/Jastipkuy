import '/flutter_flow/flutter_flow_util.dart';
import 'trackingorde_widget.dart' show TrackingordeWidget;
import 'package:flutter/material.dart';

class TrackingordeModel extends FlutterFlowModel<TrackingordeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
