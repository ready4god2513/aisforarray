@app.config ($routeProvider) ->
  $routeProvider
    .when "/",
      templateUrl: "partials/home.html"
      controller: "HomeCtrl"
    .when "/contact-us",
      templateUrl: "partials/contact.html"
      controller: "ContactCtrl"
    .when "/careers/:name", 
      templateUrl: "partials/openings.html"
      controller: "CareersCtrl"
    .otherwise
      redirectTo: "/"