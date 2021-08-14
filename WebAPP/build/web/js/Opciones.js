$(document).ready(function(){         
   
    function Option_1(){     
        $(".div-cont-pacient").css({
            "border-bottom": "1px #007653 solid",
            "cursor": "auto"
        });       
        $(".div-cont-repre, h3").css({
            "border-bottom": "none",
            "cursor": "cursor"
        });
        $(".div-cont-d-medicos, h3").css({
            "border-bottom": "none",
            "cursor": "cursor"
        }); 
        $(".sec-data-pacient").css({"display":"block", "display":"flex"});
        $(".sec-data-repre").css({
            "display":"none",
            "border-bottom":"none",
            "cursor":"pointer"
        });
        $(".sec-data-medicos").css({
            "display":"none",
            "border-bottom":"none",
            "cursor":"pointer"            
        });        
        
    }    
    
    function Option_2(){  
        $(".div-cont-repre").css({
            "border-bottom": "1px #007653 solid",
            "cursor": "auto"
        });      
        $(".div-cont-pacient, h3").css({
            "border-bottom": "none",
            "cursor": "cursor"
        });          
        $(".div-cont-d-medicos, h3").css({
            "border-bottom": "none",
            "cursor": "cursor"
        }); 
        $(".sec-data-repre").css({"display":"block", "display":"flex"});
        $(".sec-data-pacient").css({
            "display":"none",
            "border-bottom":"none",
            "cursor":"pointer"
        });
        $(".sec-data-medicos").css({
            "display":"none",
            "border-bottom":"none",
            "cursor":"pointer"            
        });        
        
    } 
    
    function Option_3(){ 
        $(".div-cont-d-medicos").css({
            "border-bottom": "1px #007653 solid",
            "cursor": "auto"
        });        
        $(".div-cont-pacient, h3").css({
            "border-bottom": "none",
            "cursor": "cursor"
        });      
        $(".div-cont-repre, h3").css({
            "border-bottom": "none",
            "cursor": "cursor"
        });   
        $(".sec-data-medicos").css({"display":"block", "display":"flex"});
        $(".sec-data-pacient").css({
            "display":"none",
            "border-bottom":"none",
            "cursor":"pointer"
        });
        $(".sec-data-repre").css({
            "display":"none",
            "border-bottom":"none",
            "cursor":"pointer"            
        });        
        
    } 
    
    
    $("h3").click(function (){        
        var texto = $(this).html();
        if(texto === "Datos personales del paciente")
        {            
            Option_1();            
        }else if(texto === "Datos del tutor")
        {         
            Option_2();            
        }else if(texto === "Datos médicos generales")
        {
            Option_3();            
        }
    });        
});