<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="/WEB-INF/views/common/include/meta.jsp" %>
    <title>IT Service Management | Admin panel</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- .wrapper -->
<div class="wrapper">

    <%@include file="/WEB-INF/views/common/include/header.jsp" %>
    <%@include file="/WEB-INF/views/common/include/asideAdmin.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Main content -->
        <section class="content">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Password change</h3>
                </div>
                <div class="box-body">
                    <form:form method="POST" modelAttribute="passwordForm" class="form-signin">
                    <spring:bind path="password">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="password" path="password" class="form-control"
                                        placeholder="Password"></form:input>
                            <form:errors path="password"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="passwordConfirm">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                                <%--<label for="passwordConfirm">Confirm password</label>--%>
                            <form:input type="password" path="passwordConfirm" class="form-control"
                                        placeholder="Confirm your password"></form:input>
                            <form:errors path="passwordConfirm"></form:errors>
                        </div>
                    </spring:bind>
                    <form:input type="hidden" path="id" class="form-control"
                                placeholder="ID"
                                autofocus="true"></form:input>
                    <spring:bind path="username">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="hidden" path="username" class="form-control"
                                        placeholder="Username"
                                        autofocus="true"></form:input>
                            <form:errors path="username"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="firstName">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="hidden" path="firstName" class="form-control"
                                        placeholder="First name"
                                        autofocus="true"></form:input>
                            <form:errors path="firstName"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="lastName">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="hidden" path="lastName" class="form-control"
                                        placeholder="Last name"
                                        autofocus="true"></form:input>
                            <form:errors path="lastName"></form:errors>
                        </div>
                    </spring:bind>


                    <spring:bind path="displayName">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="hidden" path="displayName" class="form-control"
                                        placeholder="Display name"
                                        autofocus="true"></form:input>
                            <form:errors path="displayName"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="roles">
                        <div class="form-group  ${status.error ? 'has-error' : ''}" style="visibility: hidden;">
                            <form:select class="form-control" path="roles" items="${roles}" itemValue="id"
                                         itemLabel="name">
                            </form:select>
                            <form:errors path="roles"></form:errors>
                        </div>
                    </spring:bind>
                    <spring:bind path="groups">
                        <div class="form-group ${status.error ? 'has-error' : ''}" style="visibility: hidden">
                            <form:select class="form-control" path="groups" items="${groups}" itemValue="id"
                                         itemLabel="name">
                            </form:select>
                            <form:errors path="groups"></form:errors>
                        </div>
                    </spring:bind>
                </div>
            </div>
            <button class="btn  btn-primary" type="submit">Submit</button>
            <a href="/admin/homepage" class="btn  btn-danger">Cancel</a>
            </form:form>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <%@include file="/WEB-INF/views/common/include/footer.jsp" %>
    <%@include file="/WEB-INF/views/common/include/control-sidebar.jsp" %>

</div>
<!-- /.wrapper -->

<%@include file="/WEB-INF/views/common/include/script.jsp" %>

</body>
</html>