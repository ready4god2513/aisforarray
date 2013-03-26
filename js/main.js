// Generated by CoffeeScript 1.6.1

/* --------------------------------------------
     Begin app.coffee
--------------------------------------------
*/


(function() {

  this.app = angular.module("careers", ["ngSanitize"]);

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

  this.app.filter("lettering", function() {
    return function(text) {
      var result, words;
      words = text.split(" ");
      result = [];
      angular.forEach(words, function(word, key) {
        return result.push("<span class='single-word word-" + (key + 1) + "'>" + word + "</span>");
      });
      return result.join(" ");
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
        tagline: "",
        summary: "Make them Bethel Media UX / UI Developers are passionate about defining and implementing graphical user interfaces.  As a vital member of our team, and working closely with our world-class web designers, you will bring both an eye for design and the skill to execute. You will give input and guidance during the design process and will be responsible for styling, interaction, and markup development based on the concepts and direction provided by our creative team. (You would be primarily focused on our Ruby on Rails projects.)",
        form: "http://bcrr.us/ux/ui",
        color: "#ad2e5d",
        darker_color: "#891a43",
        image: "img/img_uxuideveloper.jpg",
        skills: ["Takes direction well", "Works well as part of a team", "Focused on producing a high quality end product", "Knowledgable of web standards", "Agile experience desired", "Good front-end development skills desired", "Able to prioritize own workload", "Desire to learn and grow", "Able to translate business requirements to technical solutions", "Takes ownership of work"],
        responsibilities: ["Styling, interation and markup development based on wireframes and design mockups", "Bridge gap between design and technology", "Provide alternative solutions when design exceeds technology limitations", "Building out designs from a psd from our design team"],
        qualifications: ["2-3 years technical experience in related field", "4-year college degree or equivalent experience in programming", "Working knowledge of MVC frameworks", "Experience with PHP, MySQL, CSS, HTML, JavaScript, jQuery, CSS Preprocessors, CoffeeScript"]
      }, {
        name: "Drupal Developer",
        tagline: "Build our apps",
        summary: "Bethel Media Drupal Developers build high quality web applications with great user experiences. On our team of software developers and designers, you will be responsible for theming, module development, and configuration of all Bethel Drupal sites. You will be working closely with our experienced web designers by giving input during the design process to ensure that the designs will work within Drupal’s technical constraints.",
        form: "http://bcrr.us/drupal",
        color: "#119c8d",
        darker_color: "#0a796d",
        image: "img/img_drupaldeveloper.jpg",
        skills: ["Takes direction well", "Works well as part of a team", "Focused on producing a high quality end product", "Knowledgable of web standards", "Agile experience desired", "Good front-end development skills desired", "Able to prioritize own workload", "Desire to learn and grow", "Able to translate business requirements to technical solutions", "Takes ownership of work"],
        responsibilities: ["Styling, interation and markup development based on wireframes and design mockups", "Bridge gap between design and technology", "Provide alternative solutions when design exceeds technology limitations", "Building out designs from a psd from our design team"],
        qualifications: ["2-3 years technical experience in related field", "4-year college degree or equivalent experience in programming", "Working knowledge of MVC frameworks", "Experience with PHP, MySQL, CSS, HTML, JavaScript, jQuery, CSS Preprocessors, CoffeeScript"]
      }, {
        name: "Software Engineer",
        tagline: "Build our apps",
        summary: "Bethel Media Software Engineers provide world-class systems, rich web applications, and comprehensive solutions. You will be working closely with our experienced web designers by giving input during the design process to ensure that the designs will work within our technical constraints.   You will be responsible for providing technical leadership on projects, reviewing code developed by other members of the technical team, assisting in developing and estimating stories as part of the agile methodology and assisting/mentoring  any junior web developers on the team. (You would be primarily focused on our Ruby on Rails projects.)",
        form: "http://bcrr.us/softwareengineer",
        color: "#a6c657",
        darker_color: "#8cac3b",
        image: "img/img_softwareengineer.jpg",
        skills: ["Takes direction well", "Works well as part of a team", "Focused on producing a high quality end product", "Knowledgable of web standards", "Agile experience desired", "Good front-end development skills desired", "Able to prioritize own workload", "Desire to learn and grow", "Able to translate business requirements to technical solutions", "Takes ownership of work"],
        responsibilities: ["Styling, interation and markup development based on wireframes and design mockups", "Bridge gap between design and technology", "Provide alternative solutions when design exceeds technology limitations", "Building out designs from a psd from our design team"],
        qualifications: ["2-3 years technical experience in related field", "4-year college degree or equivalent experience in programming", "Working knowledge of MVC frameworks", "Experience with PHP, MySQL, CSS, HTML, JavaScript, jQuery, CSS Preprocessors, CoffeeScript"]
      }, {
        name: "Web Designer",
        tagline: "Make them look cool",
        summary: "Bethel Media Web Designers provide world-class user experiences for Bethel’s local and global community. As a part of the Bethel family, you will work closely with a talented and growing team on interactive projects, rich applications and compelling user experiences. You will be responsible for wireframing, designing, and leading the overall thought and direction of the user experience.",
        form: "http://bcrr.us/webdesigner",
        color: "#de3a3e",
        darker_color: "#c5292d",
        image: "img/img_webdeveloper.jpg",
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


  this.app.controller("CareersCtrl", function($scope, $window, Staff) {
    $scope.staff = Staff;
    $scope.position = Staff.openings[0];
    Staff.openings[0].active = true;
    $scope.mobile = $window.document.width < 700;
    $scope.getNavStyle = function(position) {
      if (position.active) {
        return {
          color: position.color
        };
      }
    };
    return $scope.renderPosition = function(position) {
      $scope.position = position;
      return angular.forEach($scope.staff.openings, function(o) {
        return o.active = angular.equals(o, position);
      });
    };
  });

  this.app.controller("rootCtrl", function($scope) {});

}).call(this);
