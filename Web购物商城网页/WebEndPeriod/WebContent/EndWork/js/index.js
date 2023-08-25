let items=document.getElementsByClassName("focus-img");
let focus=document.getElementsByClassName("focus");
let goNextbtn=document.getElementsByClassName("focus-right");
let goPrebtn=document.getElementsByClassName("focus-left");
let point=document.getElementsByClassName("point");
let search=document.querySelector(".search input");
let searchBtn=document.querySelector(".search  button");
console.log(searchBtn);
let index=0;

search.oninput=()=>{
    if(search.value==='卡卡西'){
        searchBtn.onclick=()=>{
            window.open('kakaxi.jsp');
        }
    }
    console.log(search.value)
}

let timer=setInterval(() => {
    clearInterval(timer);
    if(index<3){
        index++;
    }else{
        index=0;
    }
    goIndex();
}, 2000);

let mouseenter=()=>{
    clearInterval(timer);
}
let mouseout=()=>{
    clearInterval(timer);
    timer=setInterval(() => {
        if(index<3){
            index++;
        }else{
            index=0;
        }
        goIndex();
    }, 2000);
}
let clean=()=>{
    for (let i = 0; i < items.length; i++) {
        items[i].className="focus-img"; 
    }
    for (let i = 0; i < items.length; i++) {
        point[i].className="point"; 
    }
}
let goIndex=()=>{
    clean();
    items[index].className="focus-img item"; 
    point[index].className="point dian-color";
}
let nextClick=()=>{
    if(index<3){
        index++;
    }else{
        index=0;
    }
    goIndex();
}
let preClick=()=>{
    if(index===0){
        index=3;
    }else{
        index--;
    }
    goIndex();
}

for (let i= 0; i < point.length; i++) {
    point[i].addEventListener('click',function(){
       let value= this.getAttribute('data-index');
        index=value;
        goIndex()
    })
    
}
