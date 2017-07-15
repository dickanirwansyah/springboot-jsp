<%-- 
    Document   : index
    Created on : Jul 11, 2017, 2:10:51 PM
    Author     : dickajava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${title}</title>
        <link href="<c:url value="/css/bootstrap.css"></c:url>" rel="stylesheet">
        <link href="<c:url value="/css/bootstrap-theme.css"></c:url>" rel="stylesheet">
        <link href="<c:url value="/css/datatables.css"></c:url>" rel="stylesheet">
        <link href="<c:url value="/css/datatables-theme.css"></c:url>" rel="stylesheet">
        <link href="<c:url value="/css/datatables-bootstrap.css"></c:url>" rel="stylesheet">
        <link href="<c:url value="/css/bootstrap-datetimepicker.min.css"></c:url>" rel="stylesheet">
        <link href="<c:url value="/css/datatables-custom-theme.css"></c:url>" rel="stylesheet">

        <script src="<c:url value="/js/jQuery.js"></c:url>"></script>
        <script src="<c:url value="/js/bootstrap.js"></c:url>"></script>
        <script src="<c:url value="/js/bootbox.min.js"></c:url>"></script>
        <script src="<c:url value="/js/datatables.js"></c:url>"></script>
        <script src="<c:url value="/js/datatables-bootstrap.js"></c:url>"></script>
        <script src="<c:url value="/js/dataTables.bootstrap.js"></c:url>"></script>
        <script src="<c:url value="/js/bootstrap.min.js"></c:url>"></script>
        <script src="<c:url value="/js/morris.js"></c:url>"></script>
        <script src="<c:url value="/js/moment.js"></c:url>"></script>
        <script src="<c:url value="/js/bootstrap-datetimepicker.min.js"></c:url>"></script>
        <script src="<c:url value="/js/ie10-viewport-bug-workaround.js"></c:url>"></script>
            <script type="text/javascript">
                $(document).ready(function () {
                    $("#myTabel").dataTable();
                });
            </script>
            <script type="text/javascript">
                function tampilkan_form_divisi() {
                    $("#tampilkan-form-divisi").modal('show');
                }
                function tampilkan_form_employee() {
                    $("#tampilkan-form-employee").modal('show');
                }
            </script>
            <script type="text/javascript">
                $(function (){
                   $("#datepicker").datetimepicker({
                      format : 'YYYY-MM-DD' 
                   }); 
                });
            </script>
            <script type="text/javascript">
                function insert_divisi (){
                    var nama = $("#nama").val();
                    var url = "/Data/insertdivisi";
                    
                     $.post(url, {nama: nama}, function () {
                            $("#tampilkan-form-divisi").modal('hide');
                            $("#tampilkan-validasi").modal('show');
                     });
                }
            </script>
            <script type="text/javascript">
                function update_divisi (){
                    var iddivisi = $("#iddivisi").val();
                    var nama = $("#nama").val();
                    var url = "/Data/updatedivisi";
                    
                    $.post(url, {iddivisi: iddivisi, nama: nama}, function () {
                            $("#tampilkan-validasi").modal('show');
                        });
                }
            </script>
            <script type="text/javascript">
                function onload_page() {
                    $("#tampilkan-validasi").modal('hide');
                    window.location.href = "/Data/divisi";
                }
            </script>
        </head>
        <!--menu navbar-->
        <nav class="navbar navbar-fixed-top navbar-inverse">
            <ul class="nav navbar-nav">
                <li>
                    <a href="${pageContext.request.contextPath}/" class="navbar-brand">
                    Home</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/Data/divisi">
                    Divisi
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/Data/employee">
                    Employee
                </a>
            </li>
        </ul>
    </nav>
    <!--menu navbar-->
    <br/>
    <br/>
    <body>
        <div class="container">
            <div class="container-fluid">
                <tiles:insertAttribute name="content">

                </tiles:insertAttribute>
            </div>
        </div>
        <!--modal validasi-->
        <div class="modal fade" id="tampilkan-validasi" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog" role="dialog">
                <div class="modal-content" role="document">
                    <div class="modal-header">
                        <button type="button" class="close" onclick="onload_page()">
                            <span aria-hidden="true">close</span>
                        </button>
                        <br/>
                    </div>
                    <div class="modal-body">
                        <h4>Success !</h4>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" onclick="onload_page()">
                            <span class="glyphicon glyphicon-circle-arrow-right"></span>
                            Ok
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!--modal validasi-->

        <!--insert divisi modal-->
        <div class="modal fade" id="tampilkan-form-divisi" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog" role="dialog">
                <div class="modal-content" role="document">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">close</span>
                        </button>
                        <br/>
                        <h3 class="alert alert-success">Insert Data Divisi</h3>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-lg-3 control-label">nama divisi :</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" id="nama" name="nama">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" onclick="insert_divisi()">
                            <span class="glyphicon glyphicon-save"></span>
                            simpan
                        </button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            <span class="glyphicon glyphicon-circle-arrow-right"></span>
                            kembali
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!--insert divisi model-->
    </body>
</html>
