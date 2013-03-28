# NOTE- This is the first angular JS project (or actually first front-end framework)
# project for Bethel Media.  Without a doubt there is a ton that could be done a lot
# better.  So...If you know a better way, by all means, let's improve it!

# Used for showing all of the career options as defined in the
# models.coffee hash
@app.controller "CareersCtrl", ($scope, $routeParams, Staff) ->
  $scope.staff = Staff
  
  # Because we aren't just fetching JSON, we need to loop over
  # the positions and find what we are looking for
  angular.forEach $scope.staff.openings, (o) ->
    if angular.equals(o.slug, $routeParams.name)
      $scope.position = o
      $scope.$emit "emit-template-change",
        name: o.name,
        image: o.image
        
    o.active = angular.equals(o.slug, $routeParams.name)
  
  $scope.getNavStyle = (position) ->
    if position.active
      { color: position.color }
      
      
# Root controller for managing the home page
@app.controller "HomeCtrl", ($scope, $location) ->
  $scope.$emit "emit-template-change",
    name: "Will Work for Revival",
    image: "img/img_whoweare.jpg"
 
   
@app.controller "ContactCtrl", ($scope, $location) ->
  $scope.$emit "emit-template-change",
    name: "Contact Us",
    image: "img/img_contactus.jpg"
  
@app.controller "LayoutCtrl", ($scope, $location) ->
  # Setting contact to true will allow the contact us item
  # to receive the "active" class
  $scope.contact = $location.path().match(/contact/g)
  
  $scope.$on "template-change", (event, args) ->
    $scope.name = args.name
    $scope.image = "background-image": "url(#{args.image})"
    