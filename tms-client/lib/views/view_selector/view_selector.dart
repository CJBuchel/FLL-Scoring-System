import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tms/providers/auth_provider.dart';
import 'package:tms/utils/permissions.dart';
import 'package:tms/views/view_selector/admin_views.dart';
import 'package:tms/views/view_selector/public_views.dart';
import 'package:tms/views/view_selector/referee_views.dart';

class ViewSelector extends StatelessWidget {
  const ViewSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, child) {
        return CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // public views
                  const PublicViews(),
                  // admin views
                  if (authProvider.hasAccess(const Permissions(admin: true))) const AdminViews(),
                  // referee screens
                  if (authProvider.hasAccess(const Permissions(referee: true))) const RefereeViews(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}