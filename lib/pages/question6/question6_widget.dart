import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'question6_model.dart';
export 'question6_model.dart';

class Question6Widget extends StatefulWidget {
  const Question6Widget({Key? key}) : super(key: key);

  @override
  _Question6WidgetState createState() => _Question6WidgetState();
}

class _Question6WidgetState extends State<Question6Widget> {
  late Question6Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Question6Model());
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
                  '6. Trabajo en grupo',
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
                    'Me gusta el trabajo en grupo, se divierte uno, se discute, se cambia; siempre sale algo de ello. ',
                    'El trabajo en grupo es eficaz si está bien planeado; es necesario que las instrucciones sean muy claras y que el profesor imponga su disciplina. ',
                    'No me gusta el trabajo en grupo, hay que seguir las instrucciones y respetar las opiniones de los compañeros; no consigo hacer valer mis ideas originales, tengo que seguir la ley del grupo. ',
                    'El trabajo en grupo casi nunca es eficaz, siempre hay compañeros que se aprovechan de él para no hacer nada o hablar de otra cosa… no se puede trabajar seriamente. '
                  ].toList(),
                  onChanged: (val) => setState(() {}),
                  controller: _model.radioButtonValueController ??=
                      FormFieldController<String>(null),
                  optionHeight: 120.0,
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
                    context.pushNamed('Question7');
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
