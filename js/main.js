// Generated by CoffeeScript 1.6.1

/* --------------------------------------------
     Begin app.coffee
--------------------------------------------
*/


(function() {

  this.app = angular.module("careers", []);

  /* --------------------------------------------
       Begin directives.coffee
  --------------------------------------------
  */


  /* --------------------------------------------
       Begin filters.coffee
  --------------------------------------------
  */


  this.app.filter("toID", function() {
    return function(text) {
      return text.replace(/[^a-z0-9]/gi, "").toLowerCase();
    };
  });

  /* --------------------------------------------
       Begin models.coffee
  --------------------------------------------
  */


  this.app.factory("Staff", function() {
    var staff;
    staff = {};
    staff.openings = [
      {
        name: "UX / UI Developer",
        tagline: "Make them look cool",
        summary: "THE UI DEV",
        form: "",
        skills: ["Takes direction well", "Works well as part of a team", "Focused on producing a high quality end product", "Knowledgable of web standards", "Agile experience desired", "Good front-end development skills desired", "Able to prioritize own workload", "Desire to learn and grow", "Able to translate business requirements to technical solutions", "Takes ownership of work"],
        responsibilities: ["Styling, interation and markup development based on wireframes and design mockups", "Bridge gap between design and technology", "Provide alternative solutions when design exceeds technology limitations", "Building out designs from a psd from our design team"],
        qualifications: ["2-3 years technical experience in related field", "4-year college degree or equivalent experience in programming", "Working knowledge of MVC frameworks", "Experience with PHP, MySQL, CSS, HTML, JavaScript, jQuery, CSS Preprocessors, CoffeeScript"]
      }, {
        name: "Drupal Developer",
        tagline: "Build our apps",
        summary: "THE DRUPAL DEV",
        form: "",
        skills: ["Takes direction well", "Works well as part of a team", "Focused on producing a high quality end product", "Knowledgable of web standards", "Agile experience desired", "Good front-end development skills desired", "Able to prioritize own workload", "Desire to learn and grow", "Able to translate business requirements to technical solutions", "Takes ownership of work"],
        responsibilities: ["Styling, interation and markup development based on wireframes and design mockups", "Bridge gap between design and technology", "Provide alternative solutions when design exceeds technology limitations", "Building out designs from a psd from our design team"],
        qualifications: ["2-3 years technical experience in related field", "4-year college degree or equivalent experience in programming", "Working knowledge of MVC frameworks", "Experience with PHP, MySQL, CSS, HTML, JavaScript, jQuery, CSS Preprocessors, CoffeeScript"]
      }, {
        name: "Software Engineer",
        tagline: "Build our apps",
        summary: "YOU WILL BUILD AWESOME STUFF",
        form: "",
        skills: ["Takes direction well", "Works well as part of a team", "Focused on producing a high quality end product", "Knowledgable of web standards", "Agile experience desired", "Good front-end development skills desired", "Able to prioritize own workload", "Desire to learn and grow", "Able to translate business requirements to technical solutions", "Takes ownership of work"],
        responsibilities: ["Styling, interation and markup development based on wireframes and design mockups", "Bridge gap between design and technology", "Provide alternative solutions when design exceeds technology limitations", "Building out designs from a psd from our design team"],
        qualifications: ["2-3 years technical experience in related field", "4-year college degree or equivalent experience in programming", "Working knowledge of MVC frameworks", "Experience with PHP, MySQL, CSS, HTML, JavaScript, jQuery, CSS Preprocessors, CoffeeScript"]
      }, {
        name: "Web Designer",
        tagline: "Make them look cool",
        summary: "CAN YOU DESIGN THIS?",
        form: "",
        skills: ["Takes direction well", "Works well as part of a team", "Focused on producing a high quality end product", "Knowledgable of web standards", "Agile experience desired", "Good front-end development skills desired", "Able to prioritize own workload", "Desire to learn and grow", "Able to translate business requirements to technical solutions", "Takes ownership of work"],
        responsibilities: ["Styling, interation and markup development based on wireframes and design mockups", "Bridge gap between design and technology", "Provide alternative solutions when design exceeds technology limitations", "Building out designs from a psd from our design team"],
        qualifications: ["2-3 years technical experience in related field", "4-year college degree or equivalent experience in programming", "Working knowledge of MVC frameworks", "Experience with PHP, MySQL, CSS, HTML, JavaScript, jQuery, CSS Preprocessors, CoffeeScript"]
      }
    ];
    return staff;
  });

  /* --------------------------------------------
       Begin controllers.coffee
  --------------------------------------------
  */


  this.CareersCtrl = function($scope, Staff) {
    $scope.staff = Staff;
    return $scope.renderPosition = function(position) {
      $scope.position = position;
      return angular.forEach($scope.staff.openings, function(o) {
        return o.active = angular.equals(o, position);
      });
    };
  };

}).call(this);
