import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'question5_model.dart';
export 'question5_model.dart';

class Question5Widget extends StatefulWidget {
  const Question5Widget({Key? key}) : super(key: key);

  @override
  _Question5WidgetState createState() => _Question5WidgetState();
}

class _Question5WidgetState extends State<Question5Widget> {
  late Question5Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Question5Model());
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
                  '5. Métodos de aprendizaje',
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
                    'Hago los deberes y aprendo las lecciones de forma relajada. ',
                    'Para trabajar bien necesito que haya alguien cerca de mi: mi madre, padre, compañero, compañera… Con frecuencia les hago preguntas o les pido ayuda. ',
                    'Trabajo siempre en el mismo sitio y a la misma hora; hago por punto lo que me han aconsejado. Me gusta tener cosas que hacer en casa. ',
                    'Trabajo solo y bastante deprisa, sé exactamente cómo hacer el trabajo que me han asignado; me concentro y no dejo que nada me distraiga antes de terminar. '
                  ].toList(),
                  onChanged: (val) => setState(() {}),
                  controller: _model.radioButtonValueController ??=
                      FormFieldController<String>(null),
                  optionHeight: 100.0,
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
                    context.pushNamed('Question6');
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
