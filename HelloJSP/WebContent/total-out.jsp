<%@page errorPage="total-error.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
int price=Integer.parseInt(request.getParameter("price"));
int count=Integer.parseInt(request.getParameter("count"));
int delivery=Integer.parseInt(request.getParameter("delivery"));
%>
<%=price %>円 x<%=count %>個+送料<%=delivery %>円=
<%=price*count+delivery %>円


<%@page isErrorPage="true"%>
<p>数値を入力してください。</p>
<button onclick="history.back()">戻る</button>
<br>
<p><%=exception %></p>
<table border=1>
<tr>
 <td><strong>エラーメッセージ</strong></td>
 <td><%= exception.getMessage() %></td>
</tr>
<tr>
 <td><strong>例外を文字列に変換</strong></td>
 <td><%= exception.toString() %></td>
</tr>
<tr>
 <td><strong>スタックトレース</strong></td>
 <td>
<%
 exception.printStackTrace(new java.io.PrintWriter(out));
%>
</td></tr>
</table>