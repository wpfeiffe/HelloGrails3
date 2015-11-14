var HelloWorldController =  function($http) {

    // **** assign this as the controller
    var controller = this;

    // **** functions
    var displayDate = function () {
        return new Date().toLocaleString();
    };

    var updateDate = function() {
        controller.nowdate = controller.date();
    }

    var getDepartments = function() {
        if (controller.depts) {
            controller.depts = null;
        }
        else {
            $http.get("/departments.json")
                .then(function (response) {
                    controller.depts = response.data;
                    console.log(controller.depts);
                }, function (err) {
                    console.log("There was an error: " + err.status + " " + err.statusText);
                });

        }
    }


    // **** assign objects
    controller.date = displayDate;
    controller.update = updateDate;
    controller.nowdate = controller.date();
    controller.getdepts = getDepartments;
    controller.depts = null;
 };

angular.module('helloWorldApp', [])
    .controller('HelloWorldController', HelloWorldController);

