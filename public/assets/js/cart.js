$(document).ready(function(){
   dohvatiUkupno();
    $(".korpa-kolicina").change(function (){
        let shoeSize=$(this).data("shoe-id");
        let quantity=$(this).val();

        $.ajax({
            url: "/SKSport/public/cart/quantity",
            method: "post",
            dataType: "json",
            headers: {
                "Accept": "application/json"
            },
            data:{
            "shoeSize":shoeSize,
            "quantity":quantity,
            "_token":token
            },
            success: function (data) {

                console.log(data);
                dohvatiUkupno();
            },
            error(err){
                window.location.href = ' /SKSport/public/error';

            }
        });
    });

    function dohvatiUkupno(){
        $.ajax({
            url: "/SKSport/public/cart/price",
            method: "get",
            dataType: "json",
            headers: {
                "Accept": "application/json"
            },
            success: function (data) {
                $("#cena-ukupno").html(data[0]+" din.");

            }
        });
    }

});
