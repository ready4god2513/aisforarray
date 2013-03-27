@app.controller "CareersCtrl", ($scope, $window, $routeParams, Staff) ->
  $scope.staff = Staff
  $scope.position = ""
  
  angular.forEach $scope.staff.openings, (o) ->
    $scope.position = o if angular.equals(o.slug, $routeParams.name)
    o.active = angular.equals(o.slug, $routeParams.name)
  
  $scope.mobile = $window.document.width < 700
  
  $scope.getHeaderBg = ->
    { "background-image": "url(#{$scope.position.image})" }
  
  $scope.getNavStyle = (position) ->
    if position.active
      { color: position.color }
      
@app.controller "rootCtrl", ($scope) ->
  