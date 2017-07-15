<%-- 
    Document   : update
    Created on : Jul 12, 2017, 7:28:23 PM
    Author     : dickajava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<htm>
    <head>
        <title>${title}</title>
    </head>
    <body>
        <div class="col-lg-8 col-lg-offset-2">
            <div class="page-header">
                <h3 class="alert alert-success">Update Divisi</h3>
            </div>
            <form class="form-horizontal">
                <div class="form-group">
                    <label class="col-lg-3 control-label">iddivisi :</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="iddivisi" id="iddivisi" 
                               value="${divisi.iddivisi}" readonly="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">nama :</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="nama" id="nama" 
                               value="${divisi.nama}">
                    </div>
                </div>
            </form>
            <div class="col-lg-4 col-lg-offset-4">
                <button type="button" onclick="update_divisi()" class="btn btn-success">
                    <span class="glyphicon glyphicon-save"></span>
                    update
                </button>
                <button type="button" class="btn btn-default">
                    <span class="glyphicon glyphicon-circle-arrow-right"></span>
                    kembali
                </button>
            </div>
        </div>
    </body>
</htm>