
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%
//課題１
int num = 2; String message = "";
switch(num) {
  case 1:
    message = "one";
    break;
  case 2:
    message = "tow";
    break;
  default:
    message = "想定外。";
    break;

}
out.println(message);

out.print("<br><br>");


//課題２
char moji ='A'; String message2 = "";
switch(moji) {
  case 'A':
    message2 = "英語";
    break;
  case 'あ':
    message2 = "日本語";
    break;
  default:
    message2 = "想定外。";
    break;
}
    out.println(message2);



    out.print("<br><br>");

//課題3
int i2 = 8;
for(int i=1; i<9; i++) {
        i2 *=8;
        out.println(i2);
    }

    out.print("<br><br>");

//課題4
for(int i=1; i<=30; i++) {
        out.println("A");
    }


    out.print("<br><br>");

//課題5
int i3 = 0;
int i4 = 0;
for(int i=1; i<=100; i++) {
        i4++;
        i3 +=i4;
    }


        out.println(i3);

        out.print("<br><br>");


//課題6
int sum = 1000;
    while (sum < 100) {
        sum /= 2;
    }

    out.println(sum);

%>

<br><br>

<%@page import="java.util.Arrays" %>

<%

//課題７

// 中身入りの配列を作成
String nArr[] = {"10", "100", "soeda", "hayashi", "-20", "118", "END"};


out.println(Arrays.toString(nArr));

out.print("<br><br>");



//課題８

  //配列要素の変更
nArr[2] = "33";


out.println(Arrays.toString(nArr));

%>

<%@ page import="java.util.HashMap" %>

<%
//課題９  以下の順で、連想配列を作成してください。
    //　　"1"に"AAA", "hello"に"world", "soeda"に"33", "20"に"20"

out.print("<br><br>");


    HashMap<String, String> hMap = new HashMap<String, String>();


    hMap.put("1", "1111");
    hMap.put("hello", "soeda");
    hMap.put("soeda", "33");
    hMap.put("20", "20");


//課題１０
/*
クエリストリングスから値取得
↓
２で割れるだけ割り算
↓
一けた奇数の素数 3 5 7　で順に割り算
↓
出力
*/

      //クエリストリングス
  String sosu = request.getParameter("sosu");
  int sum2 = Integer.parseInt(sosu);

  out.println("元の値" + sum2);

  out.println(" / 素因数分解の結果");
//2で割れるだけ割る
  while(sum2 % 2 == 0){
    sum2 /= 2;
    out.println(2);
  }


//奇数で割り算していく
  for(int kisu = 3; kisu < 10; kisu += 2){
    while(sum2 % kisu == 0){
      sum2 /= kisu;
        out.println(kisu);
            }
    }

  out.println("　/ その他");

  for(int kisu = 11; kisu * kisu <= sum2; kisu +=2){
    while(sum2 % kisu == 0){
      sum2 /= kisu;
      out.println(kisu);
      }
    }

/*
//奇数で割り算していく
  for(int kisu = 3; kisu < 10; kisu * kisu <= sum2; kisu += 2){//エラーでまくり助けて
    while(sum2 % kisu == 0){
      sum2 /= kisu;
        out.println(kisu);
            }
    }

  out.println("　/ その他");

  for(int kisu = 11; kisu * kisu <= sum2; kisu +=2){
    while(sum2 % kisu == 0){
      sum2 /= kisu;
      out.println(kisu);
      }
    }

*/



%>
