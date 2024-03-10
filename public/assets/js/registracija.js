$( document ).ready(function(){
    console.log(token);
    var regEmail = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9-]+\.[A-Za-z]{2,4}$/;
    var regPass = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

    $("#button1").click(function(){

      let greske=[];
      let regImePrezime = /^([A-Z][a-z]{2,13})(\s[A-Z][a-z]{2,13})*$/;

      let regAdresa=/^([A-Za-z0-9]{2,13})(\s[A-Z][a-z]{2,13})*\s[0-9]{1,3}$/;
      let ime= $("#ime").val();
      let prezime= $("#prezime").val();
      let email= $("#email").val();
      let sifra=$("#sifra").val();
      let sifra2=$("#ponsifra").val();
      let grad = $("#grad").prop('selectedIndex')
      let adresa=$("#adresa").val();
      let pol = $("input[class='radioPol']:checked");



      if(!regImePrezime.test(ime)){
          greske.push("Neispravano uneto ime");
      }
      if(!regImePrezime.test(prezime)){
          greske.push("Neispravano uneto prezime");
      }
      if(!regEmail.test(email)){
              greske.push("Neispravano unet E-mail");
      }
      if(!regPass.test(sifra)){
              greske.push("Sifra mora da sadrzi malo slovo, veliko slovo, broj, specijalan karakter");
      }
      if(!(sifra==sifra2)){
              greske.push("Sifre se ne poklapaju");
      }
      if(grad==0){
              greske.push("Niste odabrali grad");
      }
      if(!regAdresa.test(adresa)){
          greske.push("Neispravno uneta adresa");
      }
      if(pol.length==0){
          greske.push("Niste uneli pol");

      }

      let greskeTekst="";
      if(greske.length>0){
          greske.forEach(x=>{
              greskeTekst+=`<li>* ${x}</li>`;
          });
          $("#greske ul").html(greskeTekst);
      }else{
         let gradVrednost=$("#grad").val();
          let polVrednost=pol.val();

          $.ajax({
              url: "/SKSport/public/registration",
              method: "post",
              dataType: "json",
              headers: {
                  "Accept": "application/json"
              },
              data:{

                  "ime":ime,
                  "prezime":prezime,
                  "email":email,
                  "password":sifra,
                  "password_confirmation":sifra2,
                  "grad":gradVrednost,
                  "adresa":adresa,
                  "pol":polVrednost,
                  "_token": token
              },
              success: function(data){
                  console.log(data);
                $("#greske").html("Uspesno ste se registrovali");
              },
              error: function(err){
                  let  poruka="";
                  if(err.status==422){


                      $.each(err.responseJSON.errors, function (i, error) {
                          poruka+=`${error}<br>`;
                      });
                  }
                  else{
                     poruka=err.responseJSON[0];;
                  }

                $('#greske').html(poruka);
              }

          });
      }


    });












});
