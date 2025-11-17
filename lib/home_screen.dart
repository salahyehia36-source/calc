import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Logic/home_screen_cubit.dart';
import 'custom.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => HomeScreenCubit(),
  child: Scaffold(
      backgroundColor: Color(0xFFFFA451),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFA451),
        title: const Text(
          "Calculator App",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: BlocBuilder<HomeScreenCubit, double>(
  builder: (context, state) {
    return Column(
          children:[
            Text("calculator",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: BoxBorder.all(color: Colors.black,width: 7),
              ),
              alignment: Alignment.bottomRight,
              child: Text(
               state.isNaN ? "Invalid input" :  state.toString(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
        
            ),
            SizedBox(height: 20,),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: num1,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 4,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: TextFormField(
                      controller: num2,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 4,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                  ),

                ]
              ),
        
            ),
            SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
        
               ElevatedButton(onPressed: (){ context.read<HomeScreenCubit>().add(double.parse(num1.text),double.parse(num2.text));}, child: Text("+" ,style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),) ),
               SizedBox(width: 20,),
               ElevatedButton(onPressed: (){ context.read<HomeScreenCubit>().sub(double.parse(num1.text),double.parse(num2.text));}, child: Text("-",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),)),
               SizedBox(width: 20,),
               ElevatedButton(onPressed: (){ context.read<HomeScreenCubit>().mul(double.parse(num1.text),double.parse(num2.text));}, child: Text("*",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold))),
               SizedBox(width: 20,),
               ElevatedButton(onPressed: (){ context.read<HomeScreenCubit>().div(double.parse(num1.text),double.parse(num2.text));}, child: Text("/",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold))),
             ]
           ),
          ],
        );
  },
),
      ),
    ),
);
  }
}
