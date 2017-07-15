<%-- 
    Document   : index
    Created on : Jul 11, 2017, 2:11:53 PM
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

        <div class="col-lg-9 col-lg-offset-1">
            <div class="page-header">
                <h3 class="alert alert-success">Employee</h3>
            </div>
            <a class="btn btn-success" href="${pageContext.request.contextPath}/Data/insertemploye">
                <span class="glyphicon glyphicon-plus-sign"></span>
                Tambah Data
            </a>
            <div class="page-header">
                <table class="table table-bordered table-condensed table-striped" id="myTabel">
                    <thead>
                        <tr>
                            <th>idkaryawan</th>
                            <th>nama</th>
                            <th>alamat</th>
                            <th>telepon</th>
                            <th>tanggal lahir</th>
                            <th>divisi</th>
                            <th>opsi</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${employee}" var="employe">
                        <tr>
                            <td><c:out value="${employe.idkaryawan}"></c:out></td>
                            <td><c:out value="${employe.nama}"></c:out></td>
                            <td><c:out value="${employe.alamat}"></c:out></td>
                            <td><c:out value="${employe.telepon}"></c:out></td>
                            <td><c:out value="${employe.tanggal_lahir}"></c:out></td>
                            <td><c:out value="${employe.divisi.nama}"></c:out></td>
                            <td>
                                <a href="${pageContext.request.contextPath}/Data/updatemployee/${employe.idkaryawan}" class="btn btn-success">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                    update
                                </a>
                                <a href="${pageContext.request.contextPath}/Data/deletemployee/${employe.idkaryawan}"
                                  onclick="return confirm('yakin ingin hapus data ini?')"
                                   class="btn btn-default">
                                    <span class="glyphicon glyphicon-trash"></span>
                                    hapus
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>idkaryawan</th>
                            <th>nama</th>
                            <th>alamat</th>
                            <th>telepon</th>
                            <th>tanggal lahir</th>
                            <th>divisi</th>
                            <th>opsi</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </body>
</html>
