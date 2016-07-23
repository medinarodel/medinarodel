module = undefined

module = ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $urlRouterProvider.otherwise '/about'

  $stateProvider.state('root',
    url: '/'
    templateUrl: 'root.html'
    abstract: true)
  .state('root.about',
    url: '^/about'
    views: 
      pageContent: 
        templateUrl: 'about/index.html')
  .state('root.portfolios',
    url: '^/portfolios'
    views: 
      pageContent: 
        templateUrl: 'portfolios/index.html')
  .state('root.work',
    url: '^/work'
    views: 
      pageContent: 
        templateUrl: 'work/index.html')
  .state('root.contact',
    url: '^/contact'
    views: 
      pageContent: 
        templateUrl: 'contact/index.html')

module.$inject = [
  '$stateProvider'
  '$urlRouterProvider'
  '$locationProvider'
]
angular.module('app.router', [ 'ui.router' ]).config module