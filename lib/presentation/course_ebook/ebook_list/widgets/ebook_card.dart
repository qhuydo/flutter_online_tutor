import 'package:auto_route/auto_route.dart';

import '../../../../domain/course_ebook/models/ebook.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/widgets/outlined_card.dart';

class EbookCard extends StatelessWidget {
  final Ebook ebook;

  const EbookCard({
    Key? key,
    required this.ebook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
      child: Stack(
        children: [
          Column(
            children: [
              Image.network(
                ebook.imageUrl ?? '',
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      ebook.name,
                      maxLines: 3,
                      style:
                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      ebook.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => context.router.push(EbookDetailsRoute(
                  ebookId: ebook.id,
                  thumbnail: '',
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
