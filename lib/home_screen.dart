import 'package:bloc_counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
        bloc: counterCubit,
        builder: (context, counter) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Counter App with BLoC'),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Counter',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '$counter',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            )),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                counterCubit.increment();
              },
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}
