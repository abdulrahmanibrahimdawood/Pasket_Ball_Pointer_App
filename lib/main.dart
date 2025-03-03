import 'package:basket_ball_pointer/cubit/counter_cubit.dart';
import 'package:basket_ball_pointer/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointerCounter());
}

class PointerCounter extends StatelessWidget {
  const PointerCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              'Point Counter',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 37),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).TeamAPointes}',
                        style: const TextStyle(fontSize: 180),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'A', buttonNumber: 1);
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'A', buttonNumber: 2);
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'A', buttonNumber: 3);
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 37),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).TeamBPointes}',
                        style: const TextStyle(fontSize: 180),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'B', buttonNumber: 1);
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'B', buttonNumber: 2);
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncrement(team: 'B', buttonNumber: 3);
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 45),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50)),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).TeamAPointes = 0;
                  BlocProvider.of<CounterCubit>(context).TeamBPointes = 0;
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
