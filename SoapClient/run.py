from flask import Flask,jsonify,request
app = Flask(__name__)


from zeep import Client, helpers
import json


@app.route('/getsum')
def getSum():
    client = Client('http://localhost:8080/ws/calculator.wsdl')
    num1 = request.args.get('num1')
    num2 = request.args.get('num2')
    num3 = request.args.get('num3')
    data={
        'firstNumber' : num1,
        'secondNumber' : num2,
        'thirdNumber' : num3
    }

    result = client.service.getSum(**data)
    
    # input_dict = helpers.serialize_object(result)
 
    # output_dict = json.loads(json.dumps(input_dict))
  
    return '''  <h2>getSum</h2>
        <form action="/getsum">
        <label for="num1">First Number:</label><br>
        <input type="text" id="num1" name="num1" value="1"><br>
        <label for="num2">Second Number:</label><br>
        <input type="text" id="num2" name="num2" value="2"><br>
        <label for="num2">Third Number:</label><br>
        <input type="text" id="num3" name="num3" value="3"><br>
        <p> Sum : ''' + str(result.result)  +'''</p>
        <input type="submit" value="Submit">
        </form>  '''


@app.route('/')
def kiki():
    return '''  <h2>getSum</h2>
        <form action="/getsum">
        <label for="num1">First Number:</label><br>
        <input type="text" id="num1" name="num1" value="1"><br>
        <label for="num2">Second Number:</label><br>
        <input type="text" id="num2" name="num2" value="2"><br>
        <label for="num2">Third Number:</label><br>
        <input type="text" id="num3" name="num3" value="3"><br>
        <br>
        <input type="submit" value="Submit">
        </form>  '''