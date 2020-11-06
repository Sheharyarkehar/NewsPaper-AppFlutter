import 'package:flutter/material.dart';
import 'package:news_paperapp/ArticleModel.dart';
class DetailsOfArticles extends StatelessWidget {
  ArticleModel SelectedArticle;
  DetailsOfArticles(ArticleModel articleModel)
  {
    this.SelectedArticle=articleModel;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey,
      body: Column(mainAxisAlignment:MainAxisAlignment.center,children: <Widget>[Text(SelectedArticle.title,style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold,backgroundColor:Colors.white),),Divider(),Text(SelectedArticle.details,style:TextStyle(color:Colors.white,backgroundColor:Colors.blueGrey))],),
     appBar:AppBar(backgroundColor:Colors.orange,title:Text("News Paper Application"),), 
    );
  }
}