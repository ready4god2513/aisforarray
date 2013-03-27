@app.config ($routeProvider) ->
  $routeProvider
    .when "/",
      templateUrl: "partials/home.html"
      controller: "rootCtrl"
    .when "/contact-us",
      templateUrl: "partials/contact.html"
      controller: "rootCtrl"
    .when "/careers", 
      templateUrl: "partials/openings.html"
      controller: "CareersCtrl"
    .when "/careers/:name", 
      templateUrl: "partials/openings.html"
      controller: "CareersCtrl"