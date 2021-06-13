import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  // ignore: unnecessary_null_comparison
  const HomeDetailPage({Key? key, required this.catalog})
      // ignore: unnecessary_null_comparison
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.red800.bold.xl4.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              child: "Add to cart".text.make(),
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(context.accentColor)
                            .bold
                            .xl
                            .make(),
                        // catalog.desc.text.make(),
                        Text(
                          catalog.desc,
                          style: Theme.of(context).textTheme.caption,
                        ),
                        10.heightBox,
                        Text(
                          "Et sed at duo dolores nonumy lorem takimata, erat sadipscing clita eos eos amet at takimata, clita duo accusam diam clita consetetur ut. Ipsum et aliquyam labore accusam elitr dolor magna diam. Est kasd et ut justo clita. Et voluptua sadipscing magna eirmod amet sit, ut diam eirmod et diam.",
                          style: Theme.of(context).textTheme.caption,
                        ).p16(),
                      ],
                    ).py64(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
