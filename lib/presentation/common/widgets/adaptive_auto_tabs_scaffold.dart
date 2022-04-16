import 'package:auto_route/auto_route.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class NavigationItem {
  final String title;
  final IconData icon;
  final IconData selectedIcon;

  const NavigationItem({
    required this.title,
    required this.icon,
    required this.selectedIcon,
  });
}

class AdaptiveAutoTabsScaffold extends StatefulWidget {
  final AnimatedIndexedStackBuilder? builder;
  final List<PageRouteInfo> routes;
  final Duration animationDuration;
  final Curve animationCurve;
  final bool lazyLoad;
  final NavigatorObserversBuilder navigatorObservers;
  final bool inheritNavigatorObservers;
  final int homeIndex;

  final PreferredSizeWidget appBar;

  // final Widget body;

  final List<NavigationItem> navigationItems;
  final ValueChanged<int>? onNavigationIndexChanged;
  final bool extendBody;
  final bool extendBodyBehindAppBar;

  const AdaptiveAutoTabsScaffold({
    required this.routes,
    this.lazyLoad = true,
    this.animationDuration = const Duration(milliseconds: 300),
    this.animationCurve = Curves.ease,
    this.builder,
    this.inheritNavigatorObservers = true,
    this.navigatorObservers =
        AutoRouterDelegate.defaultNavigatorObserversBuilder,
    this.homeIndex = -1,
    required this.appBar,
    // required this.body,
    // required this.currentIndex,
    required this.navigationItems,
    this.onNavigationIndexChanged,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    Key? key,
  }) : super(key: key);

  @override
  _AdaptiveScaffoldState createState() => _AdaptiveScaffoldState();
}

class _AdaptiveScaffoldState extends State<AdaptiveAutoTabsScaffold> {
  @override
  Widget build(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);
    return AutoTabsRouter(
      routes: widget.routes,
      duration: widget.animationDuration,
      lazyLoad: widget.lazyLoad,
      homeIndex: widget.homeIndex,
      navigatorObservers: widget.navigatorObservers,
      inheritNavigatorObservers: widget.inheritNavigatorObservers,
      curve: widget.animationCurve,
      builder: (context, child, animation) {
        if (breakpoint.window >= WindowSize.large) {
          return buildDesktopScaffold(context, body: child);
        }

        // Show a navigation rail
        if (breakpoint.window > WindowSize.xsmall) {
          return buildTabletScaffold(context, body: child);
        }

        return buildMobileScaffold(context, body: child);
      },
    );
  }

  Widget buildMobileScaffold(BuildContext context, {required Widget body}) {
    final tabsRouter = context.tabsRouter;
    return Scaffold(
      body: body,
      appBar: widget.appBar,
      extendBody: widget.extendBody,
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: [
          ...widget.navigationItems.mapIndexed(
            (idx, item) => NavigationDestination(
              icon: Icon(
                idx == tabsRouter.activeIndex ? item.selectedIcon : item.icon,
              ),
              label: item.title,
            ),
          ),
        ],
        selectedIndex: tabsRouter.activeIndex,
        onDestinationSelected: (idx) => _onDestinationChanged(idx, tabsRouter),
      ),
    );
  }

  Widget buildTabletScaffold(BuildContext context, {required Widget body}) {
    final tabsRouter = context.tabsRouter;

    return Scaffold(
      appBar: widget.appBar,
      extendBody: widget.extendBody,
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: SafeArea(
                right: false,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: NavigationRail(
                      labelType: NavigationRailLabelType.none,
                      destinations: [
                        ...widget.navigationItems.mapIndexed(
                          (idx, item) => NavigationRailDestination(
                            icon: Icon(
                              idx == tabsRouter.activeIndex
                                  ? item.selectedIcon
                                  : item.icon,
                            ),
                            label: Text(
                              item.title,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                        ),
                      ],
                      selectedIndex: tabsRouter.activeIndex,
                      onDestinationSelected: (idx) =>
                          _onDestinationChanged(idx, tabsRouter),
                    ),
                  ),
                ),
              ),
            ),
          ),
          VerticalDivider(
            width: 1,
            thickness: 1,
            color: Theme.of(context).dividerColor,
          ),
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }

  Widget buildDesktopScaffold(BuildContext context, {required Widget body}) {
    final tabsRouter = context.tabsRouter;
    final items = widget.navigationItems;

    return Row(
      children: [
        Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < items.length; i++)
                ListTile(
                  leading: Icon(
                    i == tabsRouter.activeIndex
                        ? items[i].selectedIcon
                        : items[i].icon,
                  ),
                  title: Text(items[i].title),
                  selected: i == tabsRouter.activeIndex,
                  onTap: () => _onDrawerItemSelected(items[i], tabsRouter),
                ),
            ],
          ),
        ),
        VerticalDivider(
          width: 1,
          thickness: 1,
          color: Colors.grey[300],
        ),
        Expanded(
          child: Scaffold(
            appBar: widget.appBar,
            extendBody: widget.extendBody,
            extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
            body: body,
          ),
        ),
      ],
    );
  }

  void _onDestinationChanged(int index, TabsRouter tabsRouter) {
    if (index != tabsRouter.activeIndex) {
      tabsRouter.setActiveIndex(index);
      widget.onNavigationIndexChanged?.call(index);
    }
  }

  void _onDrawerItemSelected(
    NavigationItem navigationItem,
    TabsRouter tabsRouter,
  ) {
    final index = widget.navigationItems.indexOf(navigationItem);
    _onDestinationChanged(index, tabsRouter);
  }
}
