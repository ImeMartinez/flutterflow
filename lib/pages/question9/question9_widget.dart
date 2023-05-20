import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'question9_model.dart';
export 'question9_model.dart';

class Question9Widget extends StatefulWidget {
  const Question9Widget({Key? key}) : super(key: key);

  @override
  _Question9WidgetState createState() => _Question9WidgetState();
}

class _Question9WidgetState extends State<Question9Widget> {
  late Question9Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Question9Model());
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
                  '9. Sensibilidad a las calificaciones',
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
                    'Doy mucha importancia a las notas, pregunto por el criterio que se va a aplicar antes de comenzar mis exámenes. Apunto todas mis notas y trazo mis gráficas de cada asignatura para verificar mi marcha a lo largo del curso. ',
                    'No apunto mis notas, conozco más o menos mi nivel y cuando lo necesito pido mis notas a los profesores para sacar el promedio. ',
                    'Guardo todos mis exámenes calificados, sumo los puntos cuidadosamente porque he observado que muchos profesores se olvidan de los medios puntos y los cuartos de punto.',
                    'Cuando he realizado un examen trato de saber mi nota lo antes posible; si encuentro al profesor, le pregunto si lo he hecho bien y qué nota he tenido; no dudo en pedirle que me ponga un poco más. '
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
                    context.pushNamed('Question10');
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
