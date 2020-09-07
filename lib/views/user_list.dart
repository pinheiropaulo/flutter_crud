import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Center(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Lista De Usuários"),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.USER_FORM,
                    );
                  },
                ),
              )
            ]),
        body: ListView.builder(
          itemCount: users.cont,
          itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
        ),
      ),
    );
  }
}
