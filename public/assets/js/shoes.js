$(document).ready(function(){
    let proba="";
    let vrednostiJSON={};
    $.ajax({
        url: "/SKSport/public/shoes/filter",
        method: "get",
        dataType: "json",
        headers: {
            "Accept": "application/json"
        },
        data:{

            "_token": token
        },
        success: function(data){
            console.log(data[0]);
            ispisPatika(data[0].data);
            ispisPaginacija(data[0]);



        },
        error: function(err){
            console.log(err);
        }

    });
    function ispisPaginacija(data){
        console.log(data);
        let ispisPaginacija="";
        data.links.pop();
        data.links.shift();
        data.links.forEach(x=>{
            ispisPaginacija+=`<li data-page="${x.label}">${x.label}</li>`;
        });

        $("#paginacija ul").html(ispisPaginacija);
        if($("#paginacija ul li")){
            $("#paginacija ul li").eq(data.current_page-1).addClass("trenutna");
        }
    }

    $('body').on('click', '#paginacija li', function() {

        let page=$(this).data("page");
        vrednostiJSON.page=page;
        $.ajax({
            url: "/SKSport/public/shoes/filter",
            method: "get",
            dataType: "json",
            headers: {
                "Accept": "application/json"
            },
            data:vrednostiJSON,
            success: function(data){
                ispisPatika(data[0].data);
                ispisPaginacija(data[0]);
            }

        });
    });




    $(".filter-naziv p").click(function(){

        $(this).next().toggle();


    });
    $("#primeni-filter").click(function (){
        proba="Proba";
        vrednostiJSON={};
        let niz=[];
        let nizKriterijuma=["Kategorije","Popusti","Pol","Brend","Velicine"];
        nizKriterijuma.forEach(x=>{
            niz=[];
            $(".filter-check-"+x+":checked").each((a,b)=>{


                niz.push(b.value);


            }) ;
            vrednostiJSON[x]=niz;
        });

        vrednostiJSON["sort"]=$("#sortiranje-shoe").val();
        vrednostiJSON["pretraga"]=$("#filter-pretraga").val();
        vrednostiJSON["min"]=$("#filter-min").val();
        vrednostiJSON["max"]=$("#filter-max").val();
        vrednostiJSON["_token"]=token;

        //console.log(vrednostiJSON);
        $.ajax({
            url: "/SKSport/public/shoes/filter",
            method: "get",
            dataType: "json",
            headers: {
                "Accept": "application/json"
            },
            data:vrednostiJSON,
            success: function(data){

                ispisPatika(data[0].data);
                ispisPaginacija(data[0]);



            },
            error: function(err){
                console.log(err);
            }

        });

    });
    function ispisPatika(data){
       // console.log(data);
       let ispis="";
        if(data.length){
            data.forEach(x=>{
                ispis+=`
           <div class="prepruke around lista">
                <img alt="${x.name}" src="/SKSport/public/assets/img/${x.image}.png">
                <p class="brend-naziv">${x.brand.name}</p>
                <p class="naziv-patike">


                    ${x.name}
                </p>
                ${sale(x.sale,x.price)}
                <a href="/SKSport/public/shoe/${x.id}">Detaljnije</a>

            </div>
           `;
            });
        }else{
            ispis="<div id='ispis' class='around'><h2>Nema takvih patika</h2></div>"
        }

      // console.log(ispis);
       $("#pregled").html(ispis);
    }
    function sale(popust,cena){
        console.log(popust);
        if(popust.value){
            return `
                    <p><del>${formatirajCenu(cena)} din.</del></p>
                    <p>${formatirajCenu(Math.ceil(cena*(1-(popust.value/100))))} din.</p>
                    <div class="popust-wrap"><p class="popust popust-centar">${popust.value}%</p></div>
                    `;
        }else {
            return `
                <p>${formatirajCenu(cena)} din.</p>
            `;
        }
    }

    function formatirajCenu(cena) {
        let hiljada = Math.trunc(cena/1000);
        let ostatak=cena%1000;
        if(ostatak<100){
            ostatak="0"+ostatak;
        }
        return hiljada+"."+ostatak;
    }
    console.log(formatirajCenu(13341.00));



});
