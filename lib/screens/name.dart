import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameCubit extends Cubit<String> {
  NameCubit(String name) : super(name);

  void change(String name) => emit(name);
}

class NameContainer extends StatelessWidget {
  const NameContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NameView();
  }
}

class NameView extends StatelessWidget {
  NameView({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = context.read<NameCubit>().state;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Change name'),
        ),
        body: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Desired name",
              ),
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    final name = nameController.text;
                    context.read<NameCubit>().change(name);
                    Navigator.pop(context);
                  },
                  child: const Text("Change"),
                ),
              ),
            ),
          ],
        ));
  }
}
