import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WorkSheet extends StatefulWidget {
  const WorkSheet({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WorkSheetState();
}

class WorkSheetState extends State<WorkSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.white),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.pink, blurRadius: 12, offset: Offset(3, 3))
                ]),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Widget 1', style: TextStyle(color: Colors.white, backgroundColor: Colors.red)),
                          SizedBox(width: 20),
                          Text('Widget 2', style: TextStyle(color: Colors.white, backgroundColor: Colors.red)),
                          ],
                      ),
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Widget 1', style: TextStyle(color: Colors.white, backgroundColor: Colors.red)),
                          SizedBox(height: 20),
                          Text('Widget 2', style: TextStyle(color: Colors.white, backgroundColor: Colors.red)),
                          ],
                      ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return ListTile(
                        title: Text("Builder $position"),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
