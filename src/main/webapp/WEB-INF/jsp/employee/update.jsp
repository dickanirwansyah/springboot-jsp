<%-- 
    Document   : update
    Created on : Jul 14, 2017, 9:36:58 AM
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
        <div class="col-lg-8 col-lg-offset-2">
            <div class="page-header">
                <h3 class="alert alert-success">Update Employee</h3>
            </div>
            <form class="form-horizontal" action="${pageContext.request.contextPath}/Data/updatemploye" method="POST">
                <div class="form-group">
                    <label class="col-lg-3 control-label">idkaryawan :</label>
                    <div class="col-lg-5">
                        <input type="text" value="${employes.idkaryawan}" class="form-control" name="idkaryawan" id="idkaryawan">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">nama :</label>
                    <div class="col-lg-5">
                        <input type="text" value="${employes.nama}" class="form-control" name="nama" id="nama">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">alamat :</label>
                    <div class="col-lg-5">
                        <input type="text" value="${employes.alamat}" class="form-control" name="alamat" id="alamat">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">telepon :</label>
                    <div class="col-lg-5">
                        <input type="text" value="${employes.telepon}" class="form-control" name="telepon" id="telepon">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">tanggal lahir :</label>
                    <div class="col-lg-5">
                        <div class="input-group date" id="datepicker">
                            <input type="text" value="${employes.tanggal_lahir}" class="form-control" id="tanggal_lahir" name="tanggal_lahir">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>    
                <div class="form-group">
                    <label class="col-lg-3 control-label">divisi :</label>
                    <div class="col-lg-5">
                        <select name="iddivisi" class="form-control">
                            <c:set var="select" value="null"></c:set>
                            <c:forEach var="divisi" items="${divisis}">
                                <c:choose>
                                    <c:when test="${divisi.iddivisi eq employes.divisi.iddivisi}">
                                        <c:set var="select" value="selected"></c:set>
                                    </c:when>
                                    <c:otherwise>
                                        <c:set var="select" value=""></c:set>
                                    </c:otherwise>
                                </c:choose>
                                <option value="${divisi.iddivisi}" ${select}>${divisi.nama}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                            <div class="col-lg-4 col-lg-offset-4">
                                <button type="submit" class="btn btn-success">
                                    <span class="glyphicon glyphicon-save"></span>
                                    update
                                </button>
                                <a class="btn btn-default" href="${pageContext.request.contextPath}/Data/employee">
                                <span class="glyphicon glyphicon-circle-arrow-right"></span>
                                kembali
                                </a>
                            </div>
            </form>
        </div>
    </body>
</html>
