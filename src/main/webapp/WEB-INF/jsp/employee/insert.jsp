<%-- 
    Document   : insert
    Created on : Jul 13, 2017, 2:54:30 PM
    Author     : dickajava
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
    </head>
    <body>
        <div class="container">
            <div  class="container-fluid">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="page-header">
                        <h3 class="alert alert-success">Form Insert Employee</h3>
                    </div>
                    <form action="${pageContext.request.contextPath}/Data/insertemployee" method="POST" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">nama :</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="nama" id="nama">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">alamat :</label>
                            <div class="col-lg-6">
                                <textarea name="alamat" id="alamat"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">telepon :</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="telepon" id="telepon">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">tanggal lahir :</label>
                            <div class="col-lg-5">
                                <div class="input-group date" id="datepicker">
                                    <input type="text" class="form-control" id="tanggal_lahir" name="tanggal_lahir">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">divisi :</label>
                            <div class="col-lg-5">
                                <select class="form-control" name="iddivisi">
                                    <option value="">pilih salah satu</option>
                                    <c:forEach items="${listdivisi}" var="divisi">
                                        <option value="${divisi.iddivisi}">${divisi.nama}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-lg-offset-4">
                            <button type="submit" class="btn btn-success">
                                <span class="glyphicon glyphicon-save"></span>
                                save
                            </button>
                            <a href="${pageContext.request.contextPath}/Data/employee" class="btn btn-default">
                                <span class="glyphicon glyphicon-circle-arrow-right"></span>
                                kembali
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>