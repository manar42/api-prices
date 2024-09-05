import 'package:api_prices/cubit/cubit.dart';
import 'package:api_prices/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit()
        ..getGoldPrice()
        ..getSilverPrice(),
      child: BlocConsumer<MainCubit, States>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.grey[900],
            appBar: AppBar(
                backgroundColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                        color: Colors.grey[350],
                        fontSize: MediaQuery.of(context).size.width / 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Prices',
                      style: TextStyle(
                        color: Colors.orange[400],
                        fontSize: MediaQuery.of(context).size.width / 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
            body: Container(
              margin:
                  const EdgeInsets.only(top: 8, bottom: 6, left: 0, right: 0),
              padding: const EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(17),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Image.asset(
                      'lib/assets/gold.png',
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 3.5,
                      //fit: BoxFit.fitWidth,
                    ),
                    Text('Gold',
                        style: TextStyle(
                          color: Colors.orange[500],
                          fontSize: MediaQuery.of(context).size.width / 10,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('   ${MainCubit.get(context).goldI}💲',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[400],
                        )),
                  ]),
                  Column(children: [
                    Image.asset(
                      'lib/assets/silver.png',
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 3.5,
                      //fit: BoxFit.fitWidth,
                    ),
                    Text('Silver',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: MediaQuery.of(context).size.width / 10,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('    ${MainCubit.get(context).silverI}💲',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[350],
                        )),
                  ])
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
