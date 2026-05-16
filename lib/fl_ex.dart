import 'package:flutter/material.dart';


void main() {

  
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

    
      home: FeedbackScreen(),
    );
  }
}



class FeedbackScreen extends StatefulWidget {

  @override
  State<FeedbackScreen> createState() =>
      _FeedbackScreenState();
}


class _FeedbackScreenState
    extends State<FeedbackScreen> {


  String name = "";

  bool isSent = false;


  TextEditingController controller =
      TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

    

      appBar: AppBar(

        title: Text(
          "Форма обратной связи",
        ),
      ),

      
      body: Padding(

        padding: EdgeInsets.all(16),

        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [


            Text(

              "Обратная связь",

              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

           

            Text(

              "Введите ваше имя и отправьте форму.",

              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 30),

        
            TextField(

              controller: controller,

              decoration: InputDecoration(

                border:
                    OutlineInputBorder(),

                labelText:
                    "Введите имя",
              ),

             

              onChanged: (value) {

               
                name = value;
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(

              onPressed: () {

              
                if (name.isEmpty) {

                  return;
                }

              
                setState(() {

                  isSent = true;
                });

                controller.clear();
              },

              child: Text(
                "Отправить",
              ),
            ),

            SizedBox(height: 20),

          
            if (isSent)

              Text(

                "Отправлено! Спасибо, $name",

                style: TextStyle(

                  fontSize: 20,

                  color: Colors.green,

                  fontWeight:
                      FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}