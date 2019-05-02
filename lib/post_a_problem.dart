import 'package:flutter/material.dart';
import 'snackbar.dart';
class MainPage extends StatefulWidget{
  PostPage createState()=> PostPage();
  static String tag = 'post-page';
}
String dropdownValue = 'Electrical Problem';
class PostPage extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    final image1=new Container(
      width: 370.0,
      height: 200.0,
      child:Padding(
        padding:EdgeInsets.all(10.0),
        child: Image.asset('assets/post.jpg'),
      ),
    );
    final text1=new Container(
      child: Padding(padding: EdgeInsets.fromLTRB(20, 15, 10, 10),
        child: Text("Choose Your Category:",
        textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),
        ),
      ),
    );
    final spinner=new Container(
      padding: EdgeInsets.all(5),
      child: DropdownButton<String>(
        value: dropdownValue,
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Electrical Problem', 'Water Problem', 'Cleaning Problem', 'Food Problem']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500,color: Colors.blue),
            ),
          );
        }).toList(),
      ),
      );
    final text1spinner=new Container(
      child: Row(
        children: <Widget>[text1,spinner],
      ),
    );
    final text2=new Container(
      child: Padding(padding: EdgeInsets.fromLTRB(20, 15, 10, 10),
        child: Text("Room Number:",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),
        ),
      ),
    );
    final room=new Container(
      child: Padding(padding: EdgeInsets.fromLTRB(60, 15, 10, 10),
        child: Text("305",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500,color: Colors.blue),
        ),
      ),
    );
    final text2room=new Container(
      child: Row(
        children: <Widget>[text2,room],
      ),
    );
    final text3=new Container(
      child: Padding(padding: EdgeInsets.fromLTRB(20, 15, 10, 10),
        child: Text("Problem Description:",
          style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),
        ),
      ),
    );
    final text4=new Container(
      child: Padding(padding: EdgeInsets.all(10.0),
        child: Text("             ",
          style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),
        ),
      ),
    );
    final text3text4=new Container(
      child: Row(
        children: <Widget>[text3,text4],
      ),
    );
    final desctext= new TextFormField(
      maxLines: 3,
      textCapitalization: TextCapitalization.sentences,
      textInputAction: TextInputAction.newline,
      keyboardType: TextInputType.text,
      autofocus: false,
      initialValue: '',

      decoration: InputDecoration(
        hintText: 'Please Enter Your Description Here',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
    );
    final postbutton=new Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(60, 15, 40, 0),
      child: RaisedButton.icon(onPressed: (){
        Navigator.of(context).pushNamed(SnackBarDemo.tag);
        }, icon: Icon(Icons.navigate_next), label: new Text('Post'),
        color:Colors.lightGreenAccent,
        textColor: Colors.black54,
      ),
    );
    final body=new Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[image1,text1spinner,text2room,text3text4,desctext,postbutton],
        ),
      ),
    );
    return Scaffold(
        appBar: AppBar(title: Text("Post a Problem"),
    ),
    body:body,
    );
  }
}