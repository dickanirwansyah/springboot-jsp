<%-- 
    Document   : index
    Created on : Jul 11, 2017, 2:11:44 PM
    Author     : dickajava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
    </head>
    <body>
        <div class="col-lg-8 col-lg-offset-2">
            <div class="page-header">
                <h3 class="alert alert-success">Divisi</h3>
            </div>
            <button type="button" class="btn btn-success" onclick="tampilkan_form_divisi()">
                <span class="glyphicon glyphicon-plus-sign"></span>
                Tambah Data
            </button>
            <div class="page-header">
                <table class="table table-bordered table-condensed table-striped" id="myTabel">
                    <thead>
                        <tr>
                            <th>iddivisi</th>
                            <th>nama</th>
                            <th>opsi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listdivisi}" var="divisi">
                            <tr>
                                <td><c:out value="${divisi.iddivisi}"></c:out></td>
                                <td><c:out value="${divisi.nama}"></c:out></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/Data/ambilbyid/${divisi.iddivisi}"
                                      class="btn btn-success open_edit">
                                        <span class="glyphicon glyphicon-pencil"></span>
                                        update
                                    </a>
                                    <a href="${pageContext.request.contextPath}/Data/deletedivisi/${divisi.iddivisi}"
                                   onclick="return confirm('sure?')"
                                     class="btn btn-default open_delete">
                                        <span class="glyphicon glyphicon-trash"></span>
                                        hapus
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>iddivisi</th>
                            <th>nama</th>
                            <th>opsi</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </body>
</html>
