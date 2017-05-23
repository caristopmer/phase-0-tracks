## Challenge 9.1 Release 0

What are some common HTTP status codes?

* 200 - OK, everything loaded properly
* 300 - Multiple choices, the requested item has multiple possible choices that can't be resolved into one.
* 400 - Bad Request, Request could not be understood by the server, likely due to incorrect syntax.
* 403 - Forbidden, server is refusing to fulfill the request.

What is the difference between a GET request and a POST request? When might each be used?

* A GET request is used to retrieve information from a web server, while Post is used to modify/update or insert information to the web server.
* A GET might be used simply to retrieve a web page to view, while Post might be used to add/modify data on a web server, such as a user submitting info via a form.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

* Web cookies are small pieces of data that the web server stores on a user's computer. They are used to remember pieces of information such as items in an online cart, previously entered info into form fields, etc. Another common use is for authentication. Cookies are used to detect if someone is logging in from a new computer or simply if they are logged into their account. This info is used to determine whether or not to respond with sensitive information.