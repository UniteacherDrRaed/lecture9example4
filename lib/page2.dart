import 'package:flutter/material.dart';
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  GlobalKey<FormState> formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: Colors.lime,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter your name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    borderSide: BorderSide(color: Colors.pink),
                  )),
              validator: (value){
                if(value!.contains("*")){
                  return "your name contains *";
                }
                return null;
              },
            ),
            OutlinedButton.icon(onPressed: ()
                {
                  formkey.currentState!.validate();
                },
                icon: Icon(Icons.check),
                label: Text("validate"))
          ],
        ),
      ),
    );
  }
}
