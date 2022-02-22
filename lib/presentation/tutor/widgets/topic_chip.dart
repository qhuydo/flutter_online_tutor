import '../../common.dart';

class TopicChip extends StatelessWidget {
  const TopicChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return InputChip(
    //   backgroundColor: Colors.transparent,
    //   shape: const StadiumBorder(
    //     side: BorderSide(color: Colors.blue, width: 1.25),
    //   ),
    //   label: Text(
    //     'English for adults',
    //     style:
    //         Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.blue),
    //   ),
    //   onSelected: (bool value) {},
    // );
    return MaterialButton(
      onPressed: () {},
      shape: const StadiumBorder(
        side: BorderSide(
          width: 1.25,
          color: Colors.blue,
        ),
      ),
      child: Text(
        'English for adults',
        style:
            Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.blue),
      ),
    );
  }
}
