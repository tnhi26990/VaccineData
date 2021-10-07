/*
 *  Document: loginvalidate.js
 *  Created on: Sept 19, 2021, 6:08:00 PM
 *  Author: Nicholas Risko
 */
function validate() {
    var username=document.getElementById("username").value;
    var password=document.getElementById("password").value;
    if(username === "admin" && password === "user"){
        window.history.pushState('new', 'title', 'index.html');
    } else {
        alert("Please enter a valid username and/or password.");
    }
}


