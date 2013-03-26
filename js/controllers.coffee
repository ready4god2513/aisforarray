@app.controller "CareersCtrl", ($scope, $window, Staff) ->
  $scope.staff = Staff
  $scope.position = Staff.openings[0]
  Staff.openings[0].active = true
  $scope.mobile = $window.document.width < 700
  
  $scope.getNavStyle = (position) ->
    if position.active
      { color: position.color }
  
  $scope.renderPosition = (position) ->
    $scope.position = position
    angular.forEach $scope.staff.openings, (o) ->
      o.active = angular.equals(o, position)
      
@app.controller "rootCtrl", ($scope) ->
  