import '../../../common.dart';

class TutorDetailsButtonGroup extends StatelessWidget {
  const TutorDetailsButtonGroup({Key? key}) : super(key: key);

  Widget buildButton(
    BuildContext context, {
    required String title,
    required IconData icon,
    VoidCallback? onPressed,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Icon(icon),
          Text(title),
        ],
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 0, color: Colors.transparent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            runSpacing: 8,
            children: [
              buildButton(
                context,
                title: AppLocalizations.of(context)!.favouriteButtonIconText,
                icon: Icons.favorite_border_outlined,
                onPressed: () {},
              ),
              buildButton(
                context,
                title: AppLocalizations.of(context)!.chatButtonText,
                icon: Icons.message_outlined,
                onPressed: () {},
              ),
              buildButton(
                context,
                title: AppLocalizations.of(context)!.viewReviewButtonText,
                icon: Icons.star_outline,
                onPressed: () {},
              ),
              buildButton(
                context,
                title: AppLocalizations.of(context)!.reportIconButtonText,
                icon: Icons.report_gmailerrorred,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.calendar_today),
            label: Text(
              AppLocalizations.of(context)!.bookButtonText,
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(600, 44),
            ),
          ),
        ),
      ],
    );
  }
}