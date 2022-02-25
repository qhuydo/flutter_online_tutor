import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../common.dart';
import '../../tutor/widgets/tutor_card.dart';

const appBarHeight = 64;

class CourseTabPage extends StatefulWidget {
  const CourseTabPage({Key? key}) : super(key: key);

  @override
  State<CourseTabPage> createState() => _CourseTabPageState();
}

class _CourseTabPageState extends State<CourseTabPage> {
  final controller = FloatingSearchBarController();

  Widget buildSearchBar(BuildContext context) {
    final actions = [
      FloatingSearchBarAction.searchToClear(
        showIfClosed: true,
      ),
      FloatingSearchBarAction(
        showIfOpened: true,
        child: CircularButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () {},
        ),
      ),
    ];

    final leadingActions = [
      FloatingSearchBarAction.back(),
    ];

    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      height: 64,
      border: BorderSide(
        color: Colors.grey.withOpacity(0.4),
        width: 1.25,
      ),
      elevation: 0,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      automaticallyImplyBackButton: false,
      controller: controller,
      clearQueryOnClose: false,
      hint: 'Find courses...',
      iconColor: Colors.grey,
      transitionDuration: const Duration(milliseconds: 300),
      transitionCurve: Curves.easeInOutCubic,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      actions: actions,
      leadingActions: leadingActions,
      debounceDelay: const Duration(milliseconds: 200),
      scrollPadding: EdgeInsets.zero,
      transition: CircularFloatingSearchBarTransition(spacing: 16),
      builder: (context, _) => buildExpandableBody(),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return FloatingSearchBarScrollNotifier(
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(top: 64),
        itemCount: 5,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return const TutorCard();
        },
      ),
    );
  }

  Widget buildExpandableBody() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        clipBehavior: Clip.antiAlias,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, item) {
            return buildItem(context);
          },
          itemCount: 5,
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            FloatingSearchBar.of(context)?.close();
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const SizedBox(
                  width: 36,
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    child: Icon(Icons.history, key: Key('history')),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'JLPT N2',
                        style: textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(height: 0),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildSearchBar(context),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
