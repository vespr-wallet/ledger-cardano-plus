import 'package:flutter/material.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

class AvailableDevices extends StatefulWidget {
  final CardanoLedger ledger;
  const AvailableDevices({super.key, required this.ledger});

  @override
  State<AvailableDevices> createState() => _AvailableDevicesState();
}

class _AvailableDevicesState extends State<AvailableDevices> {
  final List<LedgerDevice> devices = [];
  String? error;

  @override
  void initState() {
    super.initState();
    _initSearchForDevices(isFirstCall: true);
  }

  void _initSearchForDevices({bool isFirstCall = false}) {
    devices.clear();
    error = null;
    if (!isFirstCall) {
      setState(() {});
    }

    widget.ledger.scanForDevices().listen(
      (device) => setState(() => devices.add(device)),
      onError: (obj) {
        setState(() => error = 'Failed to scan for devices');
      },
      onDone: () {
        if (devices.isEmpty) {
          setState(() => error = 'No devices found');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 24),
            child: Text('Available Devices', style: TextStyle(fontSize: 24)),
          ),
          error != null
              ? Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(error!, style: const TextStyle(color: Colors.red)),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () => Navigator.of(context).maybePop(),
                            child: const Text('Close'),
                          ),
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () => _initSearchForDevices(),
                            child: const Text('Search Again'),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : devices.isEmpty
                  ? const Padding(
                      padding: EdgeInsets.only(top: 36, bottom: 12),
                      child: CircularProgressIndicator(),
                    )
                  : Flexible(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: devices
                              .map<Widget>(
                                (device) => ListTile(
                                  title: Text(device.name),
                                  subtitle: Text(device.id),
                                  onTap: () => Navigator.of(context).maybePop(device),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
          // ListView.separated(
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemCount: devices.length,
          //   separatorBuilder: (context, index) => const Divider(),
          //   padding: const EdgeInsets.all(12),
          //   itemBuilder: (context, index) {
          //     final device = devices[index];
          //     return ListTile(
          //       title: Text(device.name),
          //       subtitle: Text(device.id),
          //       onTap: () => Navigator.of(context).maybePop(device),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
