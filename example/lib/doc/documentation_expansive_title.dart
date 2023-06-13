import 'package:example/doc/global_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DocumentationExpansiveTile extends StatefulWidget {
  final Widget? component;
  final String stringCode;

  const DocumentationExpansiveTile({
    required this.component,
    required this.stringCode,
    Key? key,
  }) : super(key: key);

  @override
  State<DocumentationExpansiveTile> createState() =>
      _DocumentationExpansiveTileState();
}

class _DocumentationExpansiveTileState
    extends State<DocumentationExpansiveTile> {
  bool _isOpen = false;
  bool _isCopy = false;

  static const Widget verticalSpaceMedium = SizedBox(height: 25);
  static const Widget verticalSpaceSmall = SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.component != null)
            Text(
              widget.component.runtimeType.toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Color(0xBD000000)),
            ),
          if (widget.component != null) verticalSpaceMedium,
          if (widget.component != null) Center(child: widget.component!),
          verticalSpaceSmall,
          Theme(
            data: ThemeData().copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              expandedAlignment: Alignment.bottomLeft,
              title: Align(
                alignment: Alignment.centerRight,
                child: _isOpen
                    ? const Text('Hide code',
                        style: TextStyle(color: Colors.blueGrey))
                    : const Text('Show code',
                        style: TextStyle(color: Colors.blueGrey)),
              ),
              onExpansionChanged: (value) => setState(() {
                _isOpen = value;
              }),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: const Color(0xBD000000),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                              child: Text(widget.stringCode,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16))),
                          TextButton(
                            onPressed: () {
                              Clipboard.setData(
                                  ClipboardData(text: widget.stringCode));
                              setState(() {
                                _isCopy = true;
                              });
                              GlobalSnackBar.show(context, 'Code Copied');
                            },
                            child: _isCopy
                                ? const Text('Copied')
                                : const Text('Copy'),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
