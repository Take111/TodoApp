import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TodoList extends StatelessWidget {
  final hoge = ["AAA", "BBB", "CCC"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo",
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return _TodoCreate();
                    });
              }),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          leading: IconButton(
            icon: Icon(Icons.check_box_outline_blank),
            onPressed: () {
              // Todo
              print("Icon Tapped");
            },
          ),
          title: Text(hoge[index]),
        ),
        itemCount: hoge.length,
      ),
    );
  }
}

class _TodoCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(16),
              hintText: 'ここにTodoを書いてみよう',
            ),
          ),
          SizedBox(
            height: 120,
          ),
          CupertinoButton(
            child: const Text('登録'),
            onPressed: () {
              print("Tapped");
            },
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
