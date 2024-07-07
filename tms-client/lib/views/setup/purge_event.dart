import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tms/providers/event_config_provider.dart';
import 'package:tms/widgets/dialogs/confirm_dialogs.dart';
import 'package:tms/widgets/dialogs/snackbar_dialog.dart';

class PurgeButton extends StatelessWidget {
  void _confirmDialog(BuildContext context, EventConfigProvider provider) {
    ConfirmDialog(
      style: ConfirmDialogStyle.error(
        title: "Confirm Purge?",
        message: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Purging an event will delete all teams, matches and more..."),
          ],
        ),
      ),
      onConfirm: () async {
        await provider.purgeEvent().then((res) {
          SnackBarDialog.fromStatus(message: "Purge Event", status: res).show(context);
        });
      },
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EventConfigProvider>(
      builder: (context, provider, child) {
        return Container(
          height: 70,
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: ElevatedButton(
            style: ButtonStyle(
              textStyle: WidgetStateProperty.all(Theme.of(context).textTheme.headlineSmall),
              backgroundColor: WidgetStateProperty.all(Colors.red),
              overlayColor: WidgetStateProperty.all(Colors.redAccent),
              // text color
              foregroundColor: WidgetStateProperty.all(Colors.white),
              // border color
              side: WidgetStateProperty.all(const BorderSide(color: Colors.black)),
            ),
            onPressed: () => _confirmDialog(context, provider),
            child: const Text("PURGE"),
          ),
        );
      },
    );
  }
}