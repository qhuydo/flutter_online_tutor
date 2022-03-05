import '../../common.dart';
import '../../utils/default_app_bar.dart';
import 'helpers/message.dart';
import 'widgets/widgets.dart';

class MessageDetailsPage extends StatefulWidget {
  final String tutorId;

  const MessageDetailsPage({
    Key? key,
    required this.tutorId,
  }) : super(key: key);

  @override
  State<MessageDetailsPage> createState() => _MessageDetailsPageState();
}

class _MessageDetailsPageState extends State<MessageDetailsPage> {
  late final List<Message> data;

  @override
  void initState() {
    super.initState();
    data = MessageGenerator.generate(20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: AppLocalizations.of(context)!.chatButtonText,
      ),
      body: Stack(
        children: [
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 16.0, bottom: 60),
            reverse: true,
            itemBuilder: (context, index) {
              final message = data[index];
              return MessageBubble(
                message: message,
                child: Text(message.text),
              );
            },
            itemCount: data.length,
          ),
          const MessageInputRow(),
        ],
      ),
    );
  }
}
