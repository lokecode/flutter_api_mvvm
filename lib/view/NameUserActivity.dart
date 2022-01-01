import 'package:flutter/material.dart';
import 'package:test200/Models/User.dart';

import '../ViewsModels/UserViewModels.dart';

class NameUser extends StatefulWidget {
  @override
  _NameUser createState() => _NameUser();
}

TextEditingController searchController = new TextEditingController();

double height, width;

class _NameUser extends State<NameUser>  {
  double height, width;

  List<User> user = [];

  void initData() async{
    UserViewModels.getUser().then((value) {
      user = value;
    setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    initData();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    if(user.length==0){
      return CircularProgressIndicator();
    }else{
      return Scaffold(
        body:SingleChildScrollView(
          child: Container(
            height:height,
            child:ListView.builder(
                itemCount: user.length.toInt(),
                itemBuilder: (_, index) {
                  return Text(
                    " Name: ${user[index].name} \n UserName: ${user[index].username} \n Company: ${user[index].company.name} \n",
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  );
                }
            )
          )

        ),
      );
    }

  }
}



