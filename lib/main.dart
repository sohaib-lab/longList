



import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Scaffold(appBar: AppBar(title: Text("Long list"),),
    body:getListview()
    
    ),
    
   

  ));
}
List<String> getListElements()
{
  
  var items=List<String>.generate(1000,(counter)=>"items $counter");
  return items;

}
Widget getListview()
{
  var listItems=getListElements();
  var listView=ListView.builder(
    itemBuilder: (context,index){
      return ListTile(
        title: Text(listItems[index]),
      );
   

    }
    

  );
  return listView;
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: getListview(),
      
    );
  }
}