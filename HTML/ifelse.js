/* Promocode */
let amount = 500;
let promocode="JUMBO";
if(promocode === "JUMBO" && amount >= 500) {
    let dicount = amount*0.30;
    if(dicount>200){
        amount = amount-200;}
    else{
    amount = amount*0.70 ;
    }
    console.log("Discounted Amount is " + amount);
}
else if (promocode !== "JUMBO") {
    console.log("Invalied promo code");
} else {
    console.log("Amount Insufficient")  ;
} ;