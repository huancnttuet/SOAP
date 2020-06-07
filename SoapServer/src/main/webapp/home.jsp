<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>

<input type = "number" name = "firstNumber" id = "firstNumber" ></input><br>
<input type = "number" name = "secondNumber" id = "secondNumber" ></input><br>
<input type = "number" name = "thirdNumber" id = "thirdNumber" ></input><br>
<button onclick = "getSum()" >getSum</button><br>

<span> sum:  </span><span id = "sum"><span>

<script>

function getSum(){

    let first = document.getElementById("firstNumber").value;
    let second = document.getElementById("secondNumber").value;
    let third = document.getElementById("thirdNumber").value;

    sendXML(first,second,third);

    console.log(first + " " + second);

}

function sendXML(first,second,third){

    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("POST","ws");
    var xmlDoc;
    xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            xmlDoc = xmlhttp.responseXML;
            console.log(xmlDoc);
            document.getElementById("sum").innerHTML = xmlDoc.getElementsByTagName("ns2:result")[0].textContent;
        }
    };
    xmlhttp.setRequestHeader('Content-Type', 'text/xml');
    var xml = '<Envelope xmlns="http://schemas.xmlsoap.org/soap/envelope/"><Body><getSumRequest xmlns="http://soa.com/soap/calculator"><firstNumber>'+first+'</firstNumber><secondNumber>'+second+'</secondNumber><thirdNumber>'+third+'</thirdNumber></getSumRequest></Body></Envelope>';
    xmlhttp.send(xml);

}

</script>

</body>
</html>