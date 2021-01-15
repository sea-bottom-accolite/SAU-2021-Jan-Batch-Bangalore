class student {
    constructor(firstname,lastname,age,gender,rollno,dob){
        this.firstname = firstname;
        this.lastname = lastname;
        this.age = age;
        this.gender = gender;
        this.rollno = rollno;
        this.dob = dob;
    };
}


window.onload = function(){
    var arr = [];
    document.getElementById("submission").onclick= function(){

        var elements = document.getElementsByClassName("required_field");

        for (let i = 0; i < elements.length; i++) {
            var val = elements[i].value;
            console.log(val);
            if(val==="")
                return alert("required!");
        }
        

        var gen = document.getElementById("gender").value;
        if(gen==="Select")
            return alert("Gender not specified. Please try again!");

        alert("Form submitted successfully!");

        let obj = new student(elements[0].value,elements[1].value,elements[2].value,elements[3].value,elements[4].value,elements[5].value,);
        obj.occupation = elements[6].value;

        var data = 
        {
        "FirstName": obj.firstname,
        "LastName": obj.lastname,
        "Age": obj.age,
        "Gender": obj.gender,
        "DOB": obj.dob,
        "Occupation": obj.occupation
        }

        console.log(obj);
        arr.push({[obj.rollno]:data});
        console.log(arr);

    };
    document.getElementById("getdata").onclick = function(){
        let roll = document.getElementById("getroll").value;
        if(arr.length===0)
        {
            return alert("No students added yet!");
        }
        let i;
        for (const i in arr) {
            if(arr[i][roll])
                console.log(arr[i][roll]);
            else
                return alert("Roll No. does not exist");
        }
    };
    
}

