@app = angular.module "careers", ["ngSanitize"]

# To clear the cache, uncomment this code -
# @app.run ($rootScope, $templateCache) ->
#   $rootScope.$on "$viewContentLoaded", ->
#     $templateCache.removeAll()

@app.run ($rootScope) ->
  $rootScope.$on "emit-template-change", (event, args) ->
    $rootScope.$broadcast("template-change", args)