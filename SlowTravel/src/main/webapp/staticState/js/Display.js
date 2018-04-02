/**
 * Created by shilei on 2017/7/6.
 */

$(document).ready(function () {
   var email= $("#userInfo_ipt").val();
   if (email=="" ||email==null){
       $("#userInfo_a2").removeAttr("hidden")
   }
   else {
       $("#userInfo_a1").removeAttr("hidden")
   }

});


