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
      
@app.controller "rootCtrl", ($scope, $routeParams) ->
  $scope.active = true
  