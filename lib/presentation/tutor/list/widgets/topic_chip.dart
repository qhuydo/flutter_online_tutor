import '../../../common.dart';

class TopicChip extends StatelessWidget {
  const TopicChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chipColour = Theme.of(context).colorScheme.secondary;
    return OutlinedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          StadiumBorder(
            side: BorderSide(
              width: 1,
              color: chipColour,
            ),
          ),
        )
      ),
      // shape: StadiumBorder(
      //   side: BorderSide(
      //     width: 1,
      //     color: chipColour,
      //   ),
      // ),
      child: Text(
        'English for adults',
        style:
            Theme.of(context).textTheme.bodySmall?.copyWith(color: chipColour),
      ),
    );
  }
}
