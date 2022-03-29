import '../../../common.dart';

class SaveButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool enabled;

  const SaveButton({
    Key? key,
    this.onPressed,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.save_outlined),
      label: Text(
        context.l10n.saveButtonLabel,
        style: TextStyle(
          fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(56),
      ),
      onPressed: enabled ? onPressed : null,
    );
  }
}
