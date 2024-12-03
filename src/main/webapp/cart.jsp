<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>

<html>
    <head>
        <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
        <% String cartId = session.getId(); %>
        <title>��ٱ���</title>
    </head>
    <body>
        <div class="container py-4">
            <%@ include file="menu.jsp" %>

            <div class="p-5 mb-4 bg-body-tertiary rounded-3">
                <div class="container-fluid py-5">
                    <h1 class="display-5 fw-bold">��ٱ���</h1>
                    <p class="col-md-8 fs-4">Cart</p>
                </div>
            </div>

            <div class="row align-items-md-stretch">
                <div class="row">
                    <table width="100%">
                        <tr>
                            <td align="left">
                                <a href="./deleteCart.jsp?cartId=<%= cartId %>" class="btn btn-danger">�����ϱ�</a>
                            </td>
                            <td align="right">
                                <a href="./shippingInfo.jsp?cartId=<%= cartId %>" class="btn btn-success">�ֹ��ϱ�</a>
                            </td>
                        </tr>
                    </table>
                </div>

                <div style="padding-top: 50px">
                    <table class="table table-hover table-striped">
                        <thead>
                            <tr>
                                <th>�����ڵ�</th>
                                <th>������</th>
                                <th>����</th>
                                <th>����</th>
                                <th>�հ�</th>
                                <th>���</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                int sum = 0;
                                ArrayList<Book> cartList = (ArrayList<Book>) session.getAttribute("cartList");
                                if (cartList == null) {
                                    cartList = new ArrayList<Book>();
                                    for (Book g : cartList) {
                                        Book book = cartList.get(i);
                                        int total = book.getQuantity() * book.getUnitPrice();
                                        sum = sum + total;
                            %>
                            <tr>
                                <td><%= g.getBookId() %></td>
                                <td><%= g.getName() %></td>
                                <td><%= g.getUnitPrice() %></td>
                                <td><%= g.getQuantity() %></td>
                                <td><%= total %></td>
                                <td><a href="./removeCart.jsp?id=<%= g.getBookId() %>" class="badge text-bg-danger">����</a></td>
                            </tr>
                            <%
                                    }
                                }
                            %>

                            <tr>
                                <td colspan="4" align="right">�Ѿ�</td>
                                <td><%= sum %></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>

                    <a href="./books.jsp" class="btn btn-secondary">&laquo; ���� ����ϱ�</a>
                </div>
            </div>

            <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>