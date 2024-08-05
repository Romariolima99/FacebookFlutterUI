import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/uteis/paletasCores.dart';

class NavegacaoAbas extends StatelessWidget {
  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;
  final bool indicadorEmbaixo;

  const NavegacaoAbas(
      {super.key,
      required this.icones,
      required this.indiceAbaSelecionada,
      required this.onTap,
      this.indicadorEmbaixo = false});

  @override
  Widget build(BuildContext context) {
    return TabBar(
        onTap: onTap,
        indicator: BoxDecoration(
            border: indicadorEmbaixo
                ? const Border(
                    top: BorderSide(color: PaletaCores.azulfFacebook, width: 3),
                  )
                : const Border(
                    bottom: BorderSide(color: PaletaCores.azulfFacebook, width: 3),
                  )
                  ),
        tabs: icones
            .asMap()
            .map((indice, icone) {
              return MapEntry(
                  indice,
                  Tab(
                    icon: Icon(icone,
                        color: indiceAbaSelecionada == indice
                            ? PaletaCores.azulfFacebook
                            : Colors.black54,
                        size: 30),
                  ));
            })
            .values
            .toList());
  }
}
