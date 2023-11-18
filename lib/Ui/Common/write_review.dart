import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:teelead/Domain/models/commonModels/write_review_model.dart';

class WriteReviewWidget extends StatelessWidget {
  const WriteReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => writeReviewModel(),
      child: const subWriteReviewWidget(),
    );
  }
}

class subWriteReviewWidget extends StatelessWidget {
  const subWriteReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
