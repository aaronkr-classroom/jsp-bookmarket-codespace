<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
        <title>������ ����</title>
    </head>
    <body>
        <jsp:include page="menu.jsp" />
        <div class="jumbotron">
            <div class="container">
                <h2 class="alert alert-danger">��û�Ͻ� �������� ã�� �� �����ϴ�.</h2>
            </div>
        </div>

        <div class="container">
            <p><%= request.getRequestURL() %></p>
            <p><a href="books.jsp" class="btn btn-secondary">���� ��� &raquo;</a></p>
        </div>
    </body>
</html>