var tookoModule = angular.module('tookoModule',[])

tookoModule.controller('themes_controller',['$scope','$http',function($scope,$http){
	$scope.container_themes = true;
	$scope.show = function(){
		$scope.container_themes  = !$scope.container_themes;
	}


	$http.post(getBaseUrl() + 'index.php?route=themes/main').then(function(response){
		console.log(response.data)
	})

}])

