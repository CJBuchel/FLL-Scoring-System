import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:tms/providers/auth_provider.dart';
import 'package:tms/utils/permissions.dart';
import 'package:tms/widgets/app_bar/app_bar.dart';

class _DrawStack extends StatelessWidget {
  final Widget child;

  const _DrawStack({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double buttonWidth = ResponsiveBreakpoints.of(context).isMobile ? 20 : 30;
    return Stack(
      children: [
        // inserted child
        child,

        // drawer open button
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              width: buttonWidth,
              height: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                border: const Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  right: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: const Center(child: Icon(Icons.chevron_right)),
            ),
          ),
        )
      ],
    );
  }
}

class BaseScaffoldDrawerRouterItem extends StatelessWidget {
  final IconData icon;
  final Widget title;
  final String goNamed;
  final Permissions? permissions;

  const BaseScaffoldDrawerRouterItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.goNamed,
    this.permissions,
  }) : super(key: key);

  Widget _tile(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: title,
      onTap: () {
        context.goNamed(goNamed);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (permissions != null) {
      if (Provider.of<AuthProvider>(context, listen: false).hasAccess(permissions!)) {
        return _tile(context);
      } else {
        return const SizedBox();
      }
    } else {
      return _tile(context);
    }
  }
}

class BaseScaffoldDrawerRouter extends StatelessWidget {
  final GoRouterState state;
  final Widget child;
  final List<BaseScaffoldDrawerRouterItem>? items;

  const BaseScaffoldDrawerRouter({
    Key? key,
    required this.state,
    required this.child,
    this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmsAppBar(state: state),
      drawer: Drawer(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  DrawerHeader(
                    child: Image.asset('assets/logos/TMS_LOGO_NO_TEXT.png'),
                  ),
                  ...(items ??
                      [
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.dashboard,
                          title: const Text('Dashboard'),
                          goNamed: 'dashboard',
                          permissions: const Permissions(admin: true),
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.settings,
                          title: const Text('Setup'),
                          goNamed: 'setup',
                          permissions: const Permissions(admin: true),
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.edit_document,
                          title: const Text('Referee Scoring'),
                          goNamed: 'scoring',
                          permissions: const Permissions(referee: true),
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.shuffle,
                          title: const Text('Match Controller'),
                          goNamed: 'match_controller',
                          permissions: const Permissions(headReferee: true),
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.person,
                          title: const Text('Users'),
                          goNamed: 'users',
                          permissions: const Permissions(admin: true),
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.table_chart,
                          title: const Text('Matches'),
                          goNamed: 'matches',
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.table_restaurant,
                          title: const Text('Tables'),
                          goNamed: 'tables',
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.table_chart,
                          title: const Text('Judging Sessions'),
                          goNamed: 'judging_sessions',
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.table_bar,
                          title: const Text('Pods'),
                          goNamed: 'pods',
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.people,
                          title: const Text('Teams'),
                          goNamed: 'teams',
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.table_view,
                          title: const Text('Team Data'),
                          goNamed: 'team_data',
                        ),
                        const BaseScaffoldDrawerRouterItem(
                          icon: Icons.backup,
                          title: const Text('Backups'),
                          goNamed: 'backups',
                        ),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),

      // child with stack
      body: _DrawStack(
        child: child,
      ),
    );
  }
}