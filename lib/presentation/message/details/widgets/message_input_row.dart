import '../../../common.dart';

class MessageInputRow extends StatelessWidget {
  const MessageInputRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
            height: 60,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:
                          AppLocalizations.of(context)!.writeMessageInputText,
                      hintStyle: const TextStyle(color: Colors.black54),
                      border: InputBorder.none,
                    ),
                    minLines: 1,
                    maxLines: 10,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 18,
                  ),
                  backgroundColor: Colors.blue,
                  elevation: 0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
