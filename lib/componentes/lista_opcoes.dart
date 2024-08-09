import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:my_flutter_web_app/componentes/botao_imagem_perfil.dart';
import 'package:my_flutter_web_app/modelos/usuario.dart';
import 'package:my_flutter_web_app/uteis/paletasCores.dart';

class ListaOpcoes extends StatelessWidget {
  final Usuario usuario;

  final List<List> _opcoes = const [
    [LineIcons.userFriends, PaletaCores.azulfFacebook, "Amigos"],
    [LineIcons.facebookMessenger, PaletaCores.azulfFacebook, "Mensagens"],
    [LineIcons.flag, PaletaCores.azulfFacebook, "Paginas"],
    [LineIcons.users, PaletaCores.azulfFacebook, "Grupos"],
    [Icons.storefront_outlined, PaletaCores.azulfFacebook, "Marketplace"],
    [Icons.ondemand_video, Colors.red, "Assitir"],
    [LineIcons.calendar, Colors.deepPurple, "Eventos"],
    [LineIcons.chevronCircleDown, PaletaCores.azulfFacebook, "Ver mais"],
  ];

  const ListaOpcoes({
    super.key,
    required this.usuario,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10),
          itemCount: 1 + _opcoes.length,
          itemBuilder: (context, indice) {

            if (indice == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: BotaoImagemPerfil(
                  usuario: usuario,
                  onTap: () {},
                ),
              );
            }

            List item = _opcoes[indice - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Opcao(
                icone: item[0],
                cor: item[1],
                texto: item[2],
                onTap: (){},
              ),
            );
          }),
    );
  }
}

class Opcao extends StatelessWidget {

  final IconData icone;
  final Color cor;
  final String texto;
  final VoidCallback onTap;

  const Opcao({
    Key? key,

    required this.icone,
    required this.cor,
    required this.texto,
    required this.onTap,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icone,
            color: cor,
            size: 35,
          ),
          const SizedBox(
            width: 4,
          ),
          Flexible(
              child: Text(
            texto,
            style: const TextStyle(
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
          )
          )
        ],
      ),
    );
  }
}
