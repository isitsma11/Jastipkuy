import '/flutter_flow/flutter_flow_util.dart';
import 'profile_driver_widget.dart' show ProfileDriverWidget;
import 'package:flutter/material.dart';

class ProfileDriverModel extends FlutterFlowModel<ProfileDriverWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
