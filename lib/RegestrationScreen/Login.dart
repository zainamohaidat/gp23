import 'package:flutter/material.dart';
import 'package:gp23/NavPage/Const.dart';
import 'AuthServicess.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController controllerUser = TextEditingController();//new
  final TextEditingController controlleremaile = TextEditingController();//new
  final _formkey=GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Image.network(
                    "https://img.freepik.com/premium-vector/fire-flame-vector-illustration_1948-16761.jpg?w=826"),
                Form(
                  key: _formkey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [

                        TextFormField(

                          controller: controllerUser,//new
                          onChanged: (value){
                            setState(() {
                              null;
                            });
                          },
                          validator: (txt){
                            // if(txt!.isEmpty){
                            //   return "please enter emaile";
                            // }
                            // else if(!(emaileValidation(txt))){
                            //   return "this emaile is not valid";
                            //
                            // }

                            //return null;
                          },
                          decoration: decoration(txtHint: "Emaile",txt: "Emaile"),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(


                            controller: controlleremaile,//new
                            obscureText: true,

                            onChanged: (value){
                              setState(() {

                              });

                            },
                            decoration: decoration(txtHint: "Password",txt: "Password"),

                            validator: (txtHint) {
                              // if (txtHint!.isEmpty) {
                              //   return "please enter password";
                              // }
                              // else if(txtHint.length<8){
                              //   return "please enter 8 character or more ";
                              // }
                              // else if(!(PasswordValidator(txtHint))){
                              //   return "Password not valid";
                              //
                              // }
                              //
                              // return null;
                            }


                        ),
                        SizedBox(height: 30,),
                        // ... other form fields
                        ElevatedButton(

                        onPressed: ()async  {
                          Navigator.of(context).pushReplacementNamed(route4);

                        // bool check= await login(controlleremaile.text,controllerUser.text);
                        // if(check){
                        //   Navigator.of(context).pushReplacementNamed(route3);
                        // }
                        // else{
                        //  showDialog(context: context, builder: (context){
                        //    return  AlertDialog(
                        //      title: Text("Warning"),
                        //      content: Text("user not found"),
                        //      actions: [
                        //        TextButton(onPressed: (){
                        //          Navigator.pushReplacementNamed(context, route1);
                        //        }, child:Text("Register Now")),
                        //        TextButton(onPressed: (){
                        //          Navigator.pop(context);
                        //        }, child: Text("Cancel"))
                        //      ],
                        //    );
                        //  });
                        // }
                        //
                        //
                        //
                        //     // if(_formkey.currentState!.validate()) {
                        //     //  // Navigator.of(context).pushNamed(route10);
                        //     //   // Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigatorS));
                        //     // }
                        //     // else{
                        //     //   print( "error, please try again");
                        //     // }
                          },
                          child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 35),
                              child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            minimumSize: Size(350, 50),
                          ),

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dont have account ?",style: TextStyle(fontWeight :FontWeight.bold,fontSize: 15),),
                            TextButton(onPressed: (){
                              Navigator.of(context).pushNamed(route1);
                            }, child: Text("Sign Up"))
                          ],
                        ),



                      ],
                    ),
                  ),
                ),]
          ),
        ),
      ),

    );
  }
  InputDecoration decoration( { required String txtHint, required String txt}){
    return InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      enabledBorder: OutlineInputBorder(

        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(
          color: Colors.white,
          width: 50,
        ),
      ),
      label: Text(txt,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
      floatingLabelBehavior:  FloatingLabelBehavior.never,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.black,

          )
      )
      ,
      hintText: txtHint,
      hintStyle: TextStyle(color: Colors.black,),
    );
  }


  }

