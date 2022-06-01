import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VentasWidget extends StatefulWidget {
  const VentasWidget({Key key}) : super(key: key);

  @override
  _VentasWidgetState createState() => _VentasWidgetState();
}

class _VentasWidgetState extends State<VentasWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFFDD2F),
        automaticallyImplyLeading: false,
        title: Text(
          'Tus Articulos',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 22,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.search_rounded,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: 400,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Color(0xFF016DB6),
                          unselectedLabelColor: Colors.black,
                          labelStyle: FlutterFlowTheme.of(context).subtitle1,
                          indicatorColor: Color(0xFF016DB6),
                          tabs: [
                            Tab(
                              text: 'Carrito',
                            ),
                            Tab(
                              text: 'Guardados',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Tu carrito está vacío',
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 0, 10),
                                          child: Text(
                                            'Sabemos que es difícil elegir.\nQuizás algunas ofertas te ayuden.',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 300),
                                                reverseDuration:
                                                    Duration(milliseconds: 300),
                                                child: NavBarPage(
                                                    initialPage: 'Articulos'),
                                              ),
                                            );
                                          },
                                          text: 'VER OFERTAS',
                                          options: FFButtonOptions(
                                            width: 160,
                                            height: 40,
                                            color: Color(0xFF016DB6),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Ofertas de la semana',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.black,
                                              ),
                                        ),
                                        Icon(
                                          Icons.chevron_right,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 5, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 5, 0),
                                          child: Container(
                                            width: 180,
                                            height: 320,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.network(
                                                  'data:image/jpeg;base64,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',
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 10, 0, 5),
                                                  child: Container(
                                                    width: 100,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x1DFF0000),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Text(
                                                      'Oferta',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFFFF0000),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Text(
                                                    'Laptop HP-AX111LA 14\" Intel Celeron 4GB 64GB',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 5, 0, 0),
                                                  child: Text(
                                                    'Precio contado:',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Text(
                                                    '\$8,299',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFFF0000),
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 180,
                                          height: 320,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.network(
                                                'https://mobomx.vteximg.com.br/arquivos/ids/172799/telefono-seminuevo-iph-8-plus-64gb-negro-pt-grado-b-portada-01.jpg?v=637751512161500000',
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 150,
                                                fit: BoxFit.contain,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 10, 0, 5),
                                                child: Container(
                                                  width: 100,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x1DFF0000),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'Oferta',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFFFF0000),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 10, 0),
                                                child: Text(
                                                  'Celular iPhone 8 64GB Liberado color Gris',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 5, 0, 0),
                                                child: Text(
                                                  'Precio contado:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Text(
                                                  '\$4,777',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFFF0000),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Color(0xFF313131),
                                    size: 35,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Text(
                                      'No tienes productos guardados',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 10),
                                    child: Text(
                                      'Aquí aparecerán los productos que te gustaron, pero quieres comprar despues',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: NavBarPage(
                                              initialPage: 'Articulos'),
                                        ),
                                      );
                                    },
                                    text: 'VER OFERTAS',
                                    options: FFButtonOptions(
                                      width: 300,
                                      height: 50,
                                      color: Color(0xFF016DB6),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
