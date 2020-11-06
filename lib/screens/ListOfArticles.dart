import 'package:flutter/material.dart';
import 'package:news_paperapp/ArticleModel.dart';
import 'package:news_paperapp/screens/DetailsOfArticles.dart';
class ListOfArticles extends StatelessWidget {
 List<ArticleModel>_list;
 ListOfArticles(List<ArticleModel>art)
 {
   this._list=art;
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body:ListView.separated(itemBuilder:(context,index)
      {
        return ListTile(title:Text(_list[index].title,style:TextStyle(color:Colors.white),),onTap:(){
          Navigator.push(context,MaterialPageRoute(builder:(context){
            return DetailsOfArticles(_list[index]);
          }));
        },);
      }
      , separatorBuilder:(context,index)=>Divider(), itemCount: _list.length),backgroundColor:Colors.purple
,appBar:AppBar(backgroundColor:Colors.orange,title:Text("News Paper Application"),),
    );
      
  
  }
}