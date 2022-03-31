import '../../../common.dart';

class TopicChip extends StatelessWidget {
  final String label;

  const TopicChip({
    Key? key,
    required this.label,
  }) : super(key: key);

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
      )),
      // shape: StadiumBorder(
      //   side: BorderSide(
      //     width: 1,
      //     color: chipColour,
      //   ),
      // ),
      child: Text(
        label,
        style:
            Theme.of(context).textTheme.bodySmall?.copyWith(color: chipColour),
      ),
    );
  }
}
