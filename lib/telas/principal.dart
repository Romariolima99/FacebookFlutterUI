import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:my_flutter_web_app/componentes/navegacao_abas.dart';
import 'package:my_flutter_web_app/componentes/navegacao_abas_desktop.dart';
import 'package:my_flutter_web_app/telas/home.dart';
import 'package:my_flutter_web_app/uteis/responsivo.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

final List<Widget> _telas = [
  Home(),

  const Scaffold(
    backgroundColor: Colors.green,
  ),
  const Scaffold(
    backgroundColor: Colors.red,
  ),
  const Scaffold(
    backgroundColor: Colors.blue,
  ),

  const Scaffold(
    backgroundColor: Colors.purple,
  ),
  const Scaffold(
    backgroundColor: Colors.orange,
  ),



];

final List<IconData> _icones = [

Icons.home,
Icons.ondemand_video,
Icons.storefront_outlined,
Icons.flag_circle_outlined,
LineIcons.bell,
Icons.menu,
];

int _indiceAbaSelecionada = 0;


  @override
  Widget build(BuildContext context) {

    final bool isDesktop = Responsivo.isDesktop(context);
    Size tamanho = MediaQuery.of(context).size;

    return DefaultTabController(
      length: _icones.length, 
      child: Scaffold(
        appBar: isDesktop 
         ? PreferredSize(
          preferredSize: Size(tamanho.width , 100),
          child: NavegacaoAbasDesktop(),
          )
         : null,

        body:TabBarView(
          children: _telas,
        ),
          bottomNavigationBar: isDesktop 
          ? null
          : NavegacaoAbas(
            icones: _icones,
            indiceAbaSelecionada: _indiceAbaSelecionada,
            onTap: (indice){
              setState(() {
                _indiceAbaSelecionada  = indice;
              });
            },
          ),
  
      )
      
      );
  }
}