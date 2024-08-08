import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/componentes/area_criar_postagem.dart';
import 'package:my_flutter_web_app/componentes/area_story.dart';
import 'package:my_flutter_web_app/componentes/botao_circulo.dart';
import 'package:my_flutter_web_app/componentes/cartao_postagem.dart';
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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsivo(
        mobile: HomeMobile(),
        desktop: HomeDesktop(),
        // tablet: HomeTablet(),
      ),
    );
  }
}


class HomeMobile extends StatelessWidget {
  const HomeMobile({
    super.key
    
    
    });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            // expandedHeight: 250,
            floating: true,
            centerTitle: false,
            title: const Text(
              "Facebook-M",
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
  const HomeDesktop({
    super.key
    
    });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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