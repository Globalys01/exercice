import 'package:exo/controller/articleController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class AddArticle extends StatefulWidget {
  @override
  _AddArticleState createState() => _AddArticleState();
}

ArticleController articleController = Get.put(ArticleController());
TextEditingController titleController = new TextEditingController();
TextEditingController bodyController = new TextEditingController();
final addform = GlobalKey<FormState>();
bool _isLoading = false;

class _AddArticleState extends State<AddArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajouter Article"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: "titre",
                  labelStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w600),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xfff07f00),
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
                controller: titleController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Veuillez entrer votre nom";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "body ",
                  labelStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w600),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xfff07f00),
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
                controller: bodyController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Veuillez entrer votre Prénoms ";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () async {
                  if (addform.currentState!.validate()) {
                    articleController
                        .addArticle(titleController.text, bodyController.text)
                        .whenCompleted(() {

                        });
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Enregistrer",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
