<%@ page contentType="text/html; charset=UTF-8" %>
<html>
    <head>
        <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
        <title>��� ����</title>
    </head>
    <body>
        <div class="container py-4">
            <%@ include file="menu.jsp" %>

            <div class="p-5 mb-4 bg-body-tertiary rounded-3">
                <div class="container-fluid py-5">
                    <h1 class="display-5 fw-bold">��� ����</h1>
                    <p class="col-md-8 fs-4">Shipping Info</p>
                </div>
            </div>

            <div class="row align-items-md-stretch">
                <div class="col-md-5"><!-- new -->
                    <form action="./processShippingInfo.jsp" method="POST">
                        <input type="hidden" name="cartId" value="<%= request.getParameter("cartId") %>">
                        <div class="mb-3 row">
                            <label for="name" class="form-label col-sm-2">����</label>
                            <input type="text" class="form-control col-sm-3" id="name" name="name" required>
                        </div>
                        <div class="mb-3 row">
                            <label for="shippingDate" class="form-label col-sm-2">�����</label>
                            <input type="date" class="form-control col-sm-3" id="shippingDate" name="shippingDate" placeholder="yyyy/mm/dd" required>
                        </div>
                        <div class="mb-3 row">
                            <label for="country" class="form-label col-sm-2">������</label>
                            <input type="text" class="form-control col-sm-3" id="country" name="country" required>
                        </div>
                        <div class="mb-3 row">
                            <label for="zipCode" class="form-label col-sm-2">�����ȣ</label>
                            <input type="text" class="form-control col-sm-3" id="zipCode" name="zipCode" required>
                        </div>
                        <div class="mb-3 row">
                            <label for="address" class="form-label col-sm-2">�ּ�</label>
                            <input type="text" class="form-control col-sm-3" id="address" name="address" required>
                        </div>
                        <!-- new -->
                        <div class="mb-3 row">
                            <label for="phone" class="form-label col-sm-2">��ȭ��ȣ</label>
                            <input type="text" class="form-control col-sm-3" id="phone" name="phone" required>
                        </div>
                        <div class="mb-3 row">
                            <label for="email" class="form-label col-sm-2">�̸���</label>
                            <input type="email" class="form-control col-sm-3" id="email" name="email" required>
                        </div>

                        <div class="mb-3 row">
                            <div class="col-sm-offset-2 col-sm-10">
                                <a href="./cart.jsp?cartId=<%= request.getParameter('cartId') %>" class="btn btn-secondary" role="button">����</a>
                                <input type="submit" class="btn btn-primary" value="���" />
                                <a href="./checkoutCancelled.jsp" class="btn btn-danger" role="button">���</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>