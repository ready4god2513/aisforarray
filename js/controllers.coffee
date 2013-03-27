# Used for showing all of the career options as defined in the
# models.coffee hash
@app.controller "CareersCtrl", ($scope, $window, $routeParams, Staff) ->
  $scope.staff = Staff
  
  angular.forEach $scope.staff.openings, (o) ->
    if angular.equals(o.slug, $routeParams.name)
      $scope.position = o
    o.active = angular.equals(o.slug, $routeParams.name)
  
  $scope.mobile = $window.document.width < 700
  
  $scope.getHeaderBg = ->
    { "background-image": "url(#{$scope.position.image})" }
  
  $scope.getNavStyle = (position) ->
    if position.active
      { color: position.color }
      
      
# Root controller for managing the home page as well
# as the contact us page
@app.controller "rootCtrl", ($scope, $location) ->
  # Setting contact to true will allow the contact us item
  # to receive the "active" class
  $scope.contact = $location.path().match(/contact/g)
  