import '../../common.dart';

class TopicChip extends StatelessWidget {
  const TopicChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputChip(
      backgroundColor: Colors.transparent,
      shape: const StadiumBorder(
          side: BorderSide(color: Colors.blue, width: 1.25)),
      label: Text(
        'English of adults',
        style: Theme.of(context).textTheme.caption?.copyWith(
          color: Colors.blue
        ),
      ),
      onSelected: (bool value) {},
    );
  }
}
