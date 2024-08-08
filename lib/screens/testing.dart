import 'package:flutter/material.dart';

class MyData {
  String name;
  int age;

  MyData({required this.name, required this.age});
}

class TestingWidget extends StatefulWidget {
  const TestingWidget({super.key});

  @override
  State<TestingWidget> createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {

  ValueNotifier<List<MyData>> myDataListNotifier = ValueNotifier<List<MyData>>(
    [
      MyData(name: 'John', age: 25),
      MyData(name: 'Jane', age: 30),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('ValueNotifier with List<MyData>'),
      ),
      body: ValueListenableBuilder<List<MyData>>(
        valueListenable: myDataListNotifier,
        builder: (context, myDataList, child) {
          return ListView.builder(
            itemCount: myDataList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Name: ${myDataList[index].name}'),
                subtitle: Text('Age: ${myDataList[index].age}'),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Changing the list
          myDataListNotifier.value = [
            ...myDataListNotifier.value,
            MyData(name: 'New Name', age: 25),
          ];
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
