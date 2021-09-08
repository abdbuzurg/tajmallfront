import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taj_mall/fake_data/woman_data.dart';

class ClotherScreen extends StatefulWidget {
  ClotherScreen({Key? key, required this.data}) : super(key: key);

  final WomanData data;

  @override
  _ClotherScreenState createState() => _ClotherScreenState();
}

class _ClotherScreenState extends State<ClotherScreen> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom],
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: theme.primaryColor,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              widget.data.images[0],
              width: size.width,
            ),
          ],
        ),
      ),
    );
  }
}
