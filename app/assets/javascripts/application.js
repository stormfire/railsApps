$(document).ready(function(){
//    rejectLeave();
})

var rejectLeave = function(el){
    console.log($(this))
    console.log($(el))
    var leave_id = $(el).attr('data-id');
    console.log(leave_id)
    $.ajax({
        type:'POST'
        ,url:'/leaves/'+leave_id+'/reject_with_reason'
        ,data: {rejection_reason: $('rejection_reason_'+leave_id).val()}
        ,dataType: 'json'
        , success: function(data){
            console.log(data)
//            location.reload()
        }

    });

}