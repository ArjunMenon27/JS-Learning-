function checkValidation() {
var name=document.f1.name.value;
let hasnumber=false;
let hasUpperCase=false;
for(let i=0;i<name.length;i++){
    let char=name.charAt(i);
    if(!isNaN(char) && char!=" "){
        hasnumber=true;
        break;
    }
    if(char>='A' && char<='Z'){
        hasUpperCase=true;
    }
    
}