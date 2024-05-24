Quiz:
Given the below API endpoint, you are required to complete the following tasks: </br>
    1. Setup a fresh app for the language you are testing for. </br>
    2. Implement the Browse and the Edit endpoints below. </br>
Hint: </br>
For speed, you could use a project initiator, eg Flutter App for flutter containing pre-configured mobilepack settings. If testing for flutter, you may do the same. </br>
    1. Establish a stable state tree for the application.  </br>
    2. Once all is set, use the provided API endpoint to fetch data from an external server and display it in your mobile app, conforming a design template of your choice.  </br>
Note: It is key for your app to use a state management container to handle all data mutations. As such, you are required to illustrate the use of the different component lifecycle hooks of the framework used as well as the following key concepts of state management container used: </br>
Flutter Redux: </br>
    • State  </br>
    • Store  </br>
    • Reducers  </br>
    • Actions  </br>
    • Action creators  </br>
Complementing the understanding of the Flutter framework used, the quiz focuses on knowledge of scoping, function expressions (and how they differ from function declarations), references, process of variable and function declaration, order of evaluation, and a couple more things like delete operator, object and array instantiation, assignment and mutation as used in Flutter. </br>

Most of these are applied in practice quite often. </br>
API Endpoints: </br>
Browse </br>
Method: GET ALL </br>
Endpoint: https://lionfish-app-qkntx.ondigitalocean.app/api/users/ </br>
Method: GET ONE </br>
Endpoint: https://lionfish-app-qkntx.ondigitalocean.app/api/user/{id} </br>
Edit: </br>
Method: PATCH </br>
Endpoint: https://lionfish-app-qkntx.ondigitalocean.app/api/user/{id} </br>
Parameters: { </br>
  "name": "Barret Wallbutton", </br>
  "email"=>"bwallbutton0@salon.com", </br>
  "occupation": "Geological Engineer", </br>
  "bio": "aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent" </br>
}
