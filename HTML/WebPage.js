function checkValidation () {
    var name = document.f1.name.value;
    console.log("The name is " +name)
    var pass = document.f1.password.value;
    console.log("The name is " +pass)
    var nameinvalid = ""
    if (name ==""){
        nameinvalid = "name cannot be empty"
        document.getElementById("name").innerText=nameinvalid;
    }

}