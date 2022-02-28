import '../../common.dart';
import 'widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        title: Text(
          'Edit profile',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileAvatar(),
          ],
        ),
      ),
    );
  }
}
