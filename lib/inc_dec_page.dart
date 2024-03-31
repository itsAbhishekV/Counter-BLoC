import 'package:bloc_counter_app/bloc/counter_bloc.dart';
import 'package:bloc_counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              // counterCubit.increment();
              counterBloc.add(CounterIncremented());
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              // counterCubit.decrement();
              counterBloc.add(CounterDecremented());
            },
            child: const Text(
              '-',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ],
      ),
    ));
  }
}
