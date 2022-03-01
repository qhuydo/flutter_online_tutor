import 'dart:math';

import '../../common.dart';

class EbookCard extends StatelessWidget {
  const EbookCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Container(
              height: [200.0, 100.0, 300.0][Random().nextInt(2)],
              color: Colors.blue,
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
