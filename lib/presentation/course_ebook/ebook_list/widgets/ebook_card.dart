import 'package:auto_route/auto_route.dart';

import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';

class EbookCard extends StatelessWidget {
  final String thumbnail;

  const EbookCard({
    Key? key,
    required this.thumbnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(EbookDetailsRoute(
            ebookId: '',
            thumbnail: thumbnail,
          ));
        },
        child: Column(
          children: [
            // Container(
            //   height: [200.0, 100.0, 300.0][Random().nextInt(2)],
            //   color: Colors.blue,
            // ),
            Image.asset(
              thumbnail,
              fit: BoxFit.fitWidth,
              // height: double.infinity,
              // width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    // generateWordPairs().first.join(' '),
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    AppLocalizations.of(context)!.loremIpsum,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
