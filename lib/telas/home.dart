import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/componentes/area_criar_postagem.dart';
import 'package:my_flutter_web_app/componentes/area_story.dart';
import 'package:my_flutter_web_app/componentes/botao_circulo.dart';
import 'package:my_flutter_web_app/componentes/cartao_postagem.dart';
import 'package:my_flutter_web_app/componentes/lista_contatos.dart';
import 'package:my_flutter_web_app/componentes/lista_opcoes.dart';
import 'package:my_flutter_web_app/dados/dados.dart';
import 'package:my_flutter_web_app/modelos/modelos.dart';
import 'package:my_flutter_web_app/uteis/paletasCores.dart';
import 'package:line_icons/line_icons.dart';
import 'package:my_flutter_web_app/uteis/responsivo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

final TrackingScrollController _scrollController = TrackingScrollController();

@override
  void dispose() {
   _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
      body: Responsivo(
        mobile: HomeMobile(scrollController: _scrollController,),
        desktop: HomeDesktop(scrollController: _scrollController,),
        // tablet: HomeTablet(),
      ),
    ),);
  }
}


class HomeMobile extends StatelessWidget {

  final TrackingScrollController scrollController;


  const HomeMobile({
    super.key,
    
    required this.scrollController,
    
    });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            // expandedHeight: 250,
            floating: true,
            centerTitle: false,
            title: const Text(
              "Facebook",
              style: TextStyle(
                color: PaletaCores.azulfFacebook,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: 1.2,
              ),
            ),
            actions: [
              BotaoCirculo(
                  icone: Icons.search, iconeTamanho: 30, onPressed: () {}
                  ),
              BotaoCirculo(
                  icone: LineIcons.facebookMessenger,
                  iconeTamanho: 30,
                  onPressed: () {}
                  )
            ],
          ),
          SliverToBoxAdapter(
            child: AreaCriarPostagem(
              usuario: usuarioAtual,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: AreaStoria(
                usuario: usuarioAtual,
                estorias: estorias,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, indice) {
                Postagem postagem = postagens[indice];
                return CartaoPostagem(
                  postagem: postagem,
                );
              },
              childCount: postagens.length,
            ),
          )
        ],
      );
  }
}


class HomeDesktop extends StatelessWidget {

  final TrackingScrollController scrollController;

  const HomeDesktop({
    Key? key,

    required this.scrollController,
    
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ListaOpcoes(
              usuario: usuarioAtual,
            ),
          )
          ),
        const Spacer(),
        Flexible(
          flex: 4,
          child: CustomScrollView(
         controller: scrollController,
        slivers: [
           SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: AreaStoria(
                usuario: usuarioAtual,
                estorias: estorias,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: AreaCriarPostagem(
              usuario: usuarioAtual,
            ),
          ),
         
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, indice) {
                Postagem postagem = postagens[indice];
                return CartaoPostagem(
                  postagem: postagem,
                );
              },
              childCount: postagens.length,
            ),
          )
        ],
      )
      ),
      const Spacer(),
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ListaContatos(
              usuarios: usuariosOnline,
            ),
          )
        ),
      ],
    );
  }
}

// class HomeTablet extends StatelessWidget {
//   const HomeTablet({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//         slivers: [
//            SliverPadding(
//             padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
//             sliver: SliverToBoxAdapter(
//               child: AreaStoria(
//                 usuario: usuarioAtual,
//                 estorias: estorias,
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: AreaCriarPostagem(
//               usuario: usuarioAtual,
//             ),
//           ),
         
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, indice) {
//                 Postagem postagem = postagens[indice];
//                 return CartaoPostagem(
//                   postagem: postagem,
//                 );
//               },
//               childCount: postagens.length,
//             ),
//           )
//         ],
//       );
//   }
// }