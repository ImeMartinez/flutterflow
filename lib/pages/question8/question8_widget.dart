import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'question8_model.dart';
export 'question8_model.dart';

class Question8Widget extends StatefulWidget {
  const Question8Widget({Key? key}) : super(key: key);

  @override
  _Question8WidgetState createState() => _Question8WidgetState();
}

class _Question8WidgetState extends State<Question8Widget> {
  late Question8Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Question8Model());
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
                  '8. Preguntas orales en matemáticas',
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
                    'Me da miedo pasar al pizarrón, no consigo escribir derecho y me cuesta trabajo concentrar mis ideas cuando me mira todo el mundo. ',
                    'Estoy a gusto en el pizarrón, pero no me gustan los profesores que califican las preguntas orales, porque los que más saben “soplan” a los que saben menos y así todo resulta falso. ',
                    'Cuando paso al pizarrón me las arreglo para que los demás se rían, y provocar así la benevolencia del profesor. Esto no resulta siempre y no consigo disimular durante mucho tiempo mis dificultades. ',
                    'Me gusta que me pregunten cuando puedo elegir el momento levantando la mano; a veces soy capaz de encontrar fácilmente la solución de problemas complicados y no veo la solución de otros más sencillos. '
                  ].toList(),
                  onChanged: (val) => setState(() {}),
                  controller: _model.radioButtonValueController ??=
                      FormFieldController<String>(null),
                  optionHeight: 115.0,
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
                    context.pushNamed('Question9');
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
