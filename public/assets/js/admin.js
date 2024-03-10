$(document).ready(function(){

ajaxStavke();
function ajaxStavke(){
    $.ajax({
        url: "/SKSport/public/admin/shoes",
        method: "get",
        dataType: "json",
        headers: {
            "Accept": "application/json"
        },
        success: function(data){

            ispisStavki(data[0]);
        },
        error: function(err){
            console.log("radi")
        }

    });
}
    function obrisano(vrednost){
        if(vrednost){
            return "class='providna-stavka'";
        }
        return "";
    }
    function ispisStavki(data){
        let ispis="";
       data.forEach(x=>{
           ispis+=`
                     <tr ${obrisano(x.delete)}>
                        <td>
                            <img src="/SKSport/public/assets/img/${x.image}.png" alt="${x.name}"/>
                        </td>
                        <td>
                            <p>${x.name}</p>
                        </td>
                        <td>
                            <button type="button" class="dugme dugme-ikonica" data-id="${x.id}">
                                <i class="fa fa-trash" aria-hidden="true"></i>
                            </button>
                        </td>

                    </tr>
           `;
       });
       $("#tabela-porudzbine").html(ispis);
    }

    $('body').on('click', '.dugme-ikonica', function() {
        let id=$(this).data("id");
        $.ajax({
            url: "/SKSport/public/admin/delete",
            method: "post",
            dataType: "json",
            headers: {
                "Accept": "application/json"
            },data:{
                "_token":token,
                "id":id
            },
            success: function(data){

                ajaxStavke();
                console.log("b");
            },error:function (err){
                window.location.href = '/SKSport/public/error/';
            }


        });

    });


});
