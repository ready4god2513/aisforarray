@CareersCtrl = ($scope, Staff) ->
  $scope.staff = Staff
  
  $scope.renderPosition = (position) ->
    $scope.position = position
    angular.forEach $scope.staff.openings, (o) ->
      o.active = angular.equals(o, position)
      
@rootCtrl = ($scope) ->
  