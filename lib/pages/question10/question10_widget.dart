import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'question10_model.dart';
export 'question10_model.dart';

class Question10Widget extends StatefulWidget {
  const Question10Widget({Key? key}) : super(key: key);

  @override
  _Question10WidgetState createState() => _Question10WidgetState();
}

class _Question10WidgetState extends State<Question10Widget> {
  late Question10Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Question10Model());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFA67FE7),
          automaticallyImplyLeading: false,
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 20.0),
                child: Text(
                  '10. Materias preferidas',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Italiana',
                        fontSize: 40.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, 0.0),
                child: FlutterFlowRadioButton(
                  options: [
                    'Soy sobre todo un “literato”, me gustan las clases de lengua o de idiomas. ',
                    'Me gustan las clases de matemáticas, de física o de informática. ',
                    'Realmente no tengo materias preferidas, me gusta todo lo que permite imaginar o crear. Pienso con frecuencia en otra cosa y me intereso por la lección cuando trata de algo nuevo o poco habitual. ',
                    'La historia es una de mis materias preferidas; me gusta también la biología. '
                  ].toList(),
                  onChanged: (val) => setState(() {}),
                  controller: _model.radioButtonValueController ??=
                      FormFieldController<String>(null),
                  optionHeight: 85.0,
                  optionWidth: 350.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.vertical,
                  radioButtonColor: Color(0xFFA67FE7),
                  inactiveRadioButtonColor: Color(0x8A000000),
                  toggleable: false,
                  horizontalAlignment: WrapAlignment.start,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Question11');
                  },
                  text: 'Siguiente',
                  options: FFButtonOptions(
                    width: 130.0,
                    height: 50.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFA67FE7),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Italiana',
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                    elevation: 5.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
