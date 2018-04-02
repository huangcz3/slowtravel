/**
 * Created by shilei on 2017/6/20.
 */


$("#file-1").fileinput({
    language:'zh',
    uploadUrl:'/SlowTravel/st_user/file',
    allowedFileExtensions : ['jpg', 'png','gif'],
    maxFileSize: 1000,
    maxFilesNum: 10,
})

$("#search_submit").click(function () {
    var travels={
        name:$("#name").val(),
        photoName:$("#ipt1").val(),
        textarea:$("#textarea").val(),
        citySelect:$("#citySelect").val()
    }
    $.ajax({
        type:'post',
        url:'/SlowTravel/st_user/file',
        data:travels,
        dataType:'json',
        success:function (msg) {
            if(msg=="1"){
                console.log("添加成功")
            }else{
                console.log("添加失败")
            }

        }
    })
});

    function  CreateTravels_Name() {
            var a =$("#ipt_id").val();
            var b = a.replace(/\s/g,"");
            var patt = new RegExp(/^[\u4e00-\u9fa5]+$/g);
            if(b !="" && b!=null){
                if(!patt.test(b)){
                    alert("请输入中文!")
                    return false;
                }
            }else{
                alert("游记名称不能为空")
                return false;
            }

    }
















