<%@ page contentType="text/html;charset=UTF-8" %>
<html ng-app="helloWorldApp">
<head>
    <title>Angular App</title>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.4.6/angular.min.js"></script>
    <script src="/script/HelloWorldController.js"></script>
</head>

<body ng-controller="HelloWorldController as helloWorldController">

    <div>Hello {{1+1}}</div>
    <div>Greetings, today is {{helloWorldController.nowdate}}</div>
    <div><input type="submit" value="Update Date" name="update" ng-click="helloWorldController.update();"/></div>
    <div><input type="submit" value="Get Departments" name="getdepts" ng-click="helloWorldController.getdepts();"/></div>
    <div ng-show="helloWorldController.depts">
        <table>
            <tr>
                <th>Dept Name</th>
                <th>Dept Code</th>
            </tr>
            <tr ng-repeat="dept in helloWorldController.depts">
                <td>{{dept.deptName}}</td>
                <td>{{dept.deptCode}}</td>
            </tr>
        </table>
    </div>
</body>
</html>