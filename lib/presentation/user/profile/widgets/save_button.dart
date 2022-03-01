import '../../../common.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.save_outlined),
      onPressed: () {},
      // child: const Text(
      //   'Save',
      // ),
      label: Text(
        AppLocalizations.of(context)!.saveButtonLabel,
        style: TextStyle(
          fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
      ),
    );
  }
}
