var regEmail = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9-]+\.[A-Za-z]{2,4}$/;
var regPass = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
$(document).ready(function(){

    $("#user-ikonica").click(function(e){
        e.preventDefault();
        $("#prozirno").show();
        $("#log-prozor").show();


    });
    $(".fa-close").click(function(){
        $("#log-prozor").hide();
        $("#prozirno").hide();

    });


    $("#login-button").click(function(){
        let emailLog=$("#user").val();
        let passLog=$("#log-pass").val();
        let greske=[];
        if(!regEmail.test(emailLog)){

            greske.push("Polje email nije ispravno popunjeno");
        }
        if(!regPass.test(passLog)){
            greske.push("Sifra nije u ispravnom formatu");
        }

        let greskeTekst="";
        if(greske.length>0) {
            greske.forEach(x => {
                greskeTekst += `<li>* ${x}</li>`;
            });
            $("#greskeLog ul").html(greskeTekst);
        }else{
            $.ajax({
                url: "/SKSport/public/login",
                method: "post",
                dataType: "json",
                headers: {
                    "Accept": "application/json"
                },
                data:{

                    "email":emailLog,
                    "password":passLog,
                    "_token": token
                },
                success: function(data){
                    window.location.href = '/SKSport/public/';

                },
                error: function(err){
                    let poruka="";
                    if(err.status==422){


                        $.each(err.responseJSON.errors, function (i, error) {
                            poruka+=`${error}<br>`;
                        });
                    }
                    else{

                        poruka=err.responseJSON[0];
                    }

                    $('#greskeLog').html(poruka);
                }

            });
        }
    });
    $(".velicina").click(function(){
        $(".velicina").removeClass("izbor-velicine");
      let sizeId=$(this).data("shoe-size-id");
      console.log(sizeId);
       $("#hidden-size").val(sizeId);
       $(this).addClass('izbor-velicine');
    });


//console.log($(".cena"));




});
