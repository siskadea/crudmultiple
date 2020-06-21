<html>

<head>
    <title>Webslesson Demo - Live Table Add Edit Delete using Ajax Jquery in PHP Mysql</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
</head>

<body>
    <div class="container">
        <br />
        <br />
        <br />
        <div class="table-responsive">
            <h3 align="center">Back to Tutorial - <a
                    href="http://www.webslesson.info/2016/02/live-table-add-edit-delete-using-ajax-jquery-in-php-mysql.html"
                    title="Live Table Add Edit Delete using Ajax Jquery in PHP Mysql">Live Table Add Edit Delete using
                    Ajax Jquery in PHP Mysql</a></h3><br />
            <span id="result"></span>
            <div id="live_data"></div>
        </div>
    </div>
</body>

</html>
<script>
$(document).ready(function() {
    function fetch_data() {
        $.ajax({
            url: "select.php",
            method: "POST",
            success: function(data) {
                $('#live_data').html(data);
            }
        });
    }
    fetch_data();
    $(document).on('click', '#btn_add', function() {
        var id_nk = [];
        $('input[name="id_nk[]"]').each(function() {
            id_nk.push(this.value);
        });
        var nis = [];
        $('input[name="nis[]"]').each(function() {
            nis.push(this.value);
        });
        var kkm_nk = [];
        $('input[name="kkm_nk[]"]').each(function() {
            kkm_nk.push(this.value);
        });
        var n1 = [];
        $('input[name="n1[]"]').each(function() {
            n1.push(this.value);
        });
        var n2 = [];
        $('input[name="n2[]"]').each(function() {
            n2.push(this.value);
        });
        $.ajax({
            url: 'insert.php',
            type: 'POST',
            data: {
                id_nk: id_nk, nis: nis, kkm_nk: kkm_nk, n1:n1, n2:n2
            },
            success: function(data) {
                alert(data);
                // $('#live_data')[0].reset();
                fetch_data();
            }
        });
        // var id_nk = $('#id_nk').text();
        // var nis = $('#nis').text();  
        // var id_mapel = $('#id_mapel').text(); 
        // var kkm_nk = $('#kkm_nk').text(); 
        // var n1 = $('#n1').text();  
        // var n2 = $('#n2').text();  
        // var n3 = $('#n3').text();  
        // var n4 = $('#n4').text();  
        // var n5 = $('#n5').text();  
        // var n6 = $('#n6').text();  
        // var n7 = $('#n7').text();  
        // var n8 = $('#n8').text();  
        // var nts = $('#nts').text();  
        // var nas = $('#nas').text();
        // if(id_mapel == '')  
        // {  
        //     alert("Enter id_mapel");  
        //     return false;  
        // }  
        // if(kkm_nk == '')  
        // {  
        //     alert("Enter kkm");  
        //     return false;  
        // }  
        // $.ajax({  
        //     url:"insert.php",  
        //     method:"POST",  
        //     data:{id_nk:id_nk, nis:nis, id_mapel:id_mapel, kkm_nk:kkm_nk, n1:n1, n2:n2,
        //             n3:n3, n4:n4, n5:n5, n6:n6, n7:n7, n8:n8, nts:nts, nas:nas},  
        //     dataType:"text",  
        //     success:function(data)  
        //     {  
        //         alert(data);  
        //         fetch_data();  
        //     }  
        // })  
    });

    function edit_data(id_nk, text, column_name) {
        $.ajax({
            url: "edit.php",
            method: "POST",
            data: {
                id_nk: id_nk,
                text: text,
                column_name: column_name
            },
            dataType: "text",
            success: function(data) {
                //alert(data);
                $('#result').html("<div class='alert alert-success'>" + data + "</div>");
            }
        });
    }
    $(document).on('blur', '.nis', function() {
        var id_nk = $(this).data("id1");
        var nis = $(this).text();
        edit_data(id_nk, nis, "nis");
    });
    $(document).on('blur', '.id_mapel', function() {
        var id_nk = $(this).data("id2");
        var id_mapel = $(this).text();
        edit_data(id_nk, id_mapel, "id_mapel");
    });
    $(document).on('blur', '.kkm_nk', function() {
        var id_nk = $(this).data("id3");
        var kkm_nk = $(this).text();
        edit_data(id_nk, kkm_nk, "kkm_nk");
    });
    $(document).on('blur', '.n1', function() {
        var id_nk = $(this).data("id4");
        var n1 = $(this).text();
        edit_data(id_nk, n1, "n1");
    });
    $(document).on('blur', '.n2', function() {
        var id_nk = $(this).data("id5");
        var n2 = $(this).text();
        edit_data(id_nk, n2, "n2");
    });
    $(document).on('blur', '.n3', function() {
        var id_nk = $(this).data("id6");
        var n3 = $(this).text();
        edit_data(id_nk, n3, "n3");
    });
    $(document).on('blur', '.n4', function() {
        var id_nk = $(this).data("id7");
        var n4 = $(this).text();
        edit_data(id_nk, n4, "n4");
    });
    $(document).on('blur', '.n5', function() {
        var id_nk = $(this).data("id8");
        var n5 = $(this).text();
        edit_data(id_nk, n5, "n5");
    });
    $(document).on('blur', '.n6', function() {
        var id_nk = $(this).data("id9");
        var n6 = $(this).text();
        edit_data(id_nk, n6, "n6");
    });
    $(document).on('blur', '.n7', function() {
        var id_nk = $(this).data("id10");
        var n7 = $(this).text();
        edit_data(id_nk, n7, "n7");
    });
    $(document).on('blur', '.n8', function() {
        var id_nk = $(this).data("id11");
        var n8 = $(this).text();
        edit_data(id_nk, n8, "n8");
    });
    $(document).on('blur', '.nts', function() {
        var id_nk = $(this).data("id12");
        var nts = $(this).text();
        edit_data(id_nk, nts, "nts");
    });
    $(document).on('blur', '.nas', function() {
        var id_nk = $(this).data("id13");
        var nas = $(this).text();
        edit_data(id_nk, nas, "nas");
    });
    $(document).on('blur', '.nilai_nk', function() {
        var id_nk = $(this).data("id14");
        var nilai_nk = $(this).text();
        edit_data(id_nk, nilai_nk, "nilai_nk");
    });
    $(document).on('blur', '.predikat_nk', function() {
        var id_nk = $(this).data("id15");
        var predikat_nk = $(this).text();
        edit_data(id_nk, predikat_nk, "predikat_nk");
    });

    // $(document).on('click', '.btn_delete', function(){  
    //     var id_nk=$(this).data("id3");  
    //     if(confirm("Are you sure you want to delete this?"))  
    //     {  
    //         $.ajax({  
    //             url:"delete.php",  
    //             method:"POST",  
    //             data:{id_nk:id_nk},  
    //             dataType:"text",  
    //             success:function(data){  
    //                 alert(data);  
    //                 fetch_data();  
    //             }  
    //         });  
    //     }  
    // });  
});
</script>