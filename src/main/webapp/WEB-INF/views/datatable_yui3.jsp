<html>
<head>
<title>TuanAnh- Spring MVC Example with Ajax Call</title>
<style type="text/css">
body {
	background-image:
		url('http://cdn3.crunchify.com/wp-content/uploads/2013/03/Crunchify.bg_.300.png')
}
</style>
<link rel="stylesheet" href="http://yui.yahooapis.com/3.9.0/build/cssgrids/cssgrids-min.css">
<script src="http://yui.yahooapis.com/3.16.0/build/yui/yui-min.js"></script>
</head>
<body>
	<div class="example yui3-skin-sam">
    	<div id="pizza"></div><br/>
    	<div id="simple"></div>
    	<script>
			YUI().use("datatable", "io", "json-parse", function (Y) {    
			    var callback = {
		            timeout : 3000,
		            on : {
		                success : function (x,o) {
		                	try {
		                        messages = Y.JSON.parse(o.responseText);
		                    }
		                    catch (e) {
		                        alert("JSON Parse failed!");
		                        return;
		                    }
		                	var simple = new Y.DataTable({
		    			        columns: ["id", "name", "price"],
		    			        data   : messages,
		    			        summary: "Price sheet for inventory parts",
		    			        caption: "Example table with simple columns"
		    			    });
		    			    
		    			    simple.render("#simple");
		                },

		                failure : function (x,o) {
		                    alert("Async call failed!");
		                }

		            }
		        };
			    // Make the call to the server for JSON data
			    Y.io("./jsoncall", callback);
			    
			});
		</script>
    </div>
</body>
</html>