One Server Web Infrastructure
Scenario:
A user wants to access the website www.foobar.com.

Components:

Server: A physical or virtual machine with the IP address 8.8.8.8.
Web Server (Nginx): Serves static content and forwards requests to the application server.
Application Server: Processes dynamic requests and runs the application logic.
Application Files: The code base of the website.
Database (MySQL): Stores the data required by the website.
Domain Name: foobar.com, configured with a www record pointing to 8.8.8.8.

Explanation:

Server: A physical or virtual machine that hosts the entire web infrastructure. It has an IP address (8.8.8.8) and runs necessary software components.

Domain Name: A human-readable address (foobar.com) that points to the server’s IP address (8.8.8.8) via a DNS record. It allows users to access the website using a friendly URL instead of an IP address.

DNS Record: The 'www' in www.foobar.com is a CNAME (Canonical Name) record that maps the subdomain 'www' to the domain foobar.com, which resolves to the IP address 8.8.8.8.

Web Server (Nginx): Manages incoming HTTP/HTTPS requests, serves static files (like HTML, CSS, JS), and forwards dynamic requests to the application server. It listens on ports 80 (HTTP) and 443 (HTTPS).

Application Server: Executes the application code and generates dynamic content. This can be an application framework like Node.js, Django, or Flask.

Database (MySQL): Stores persistent data needed by the application, such as user information, posts, comments, etc. The application server queries and updates this database.

Communication: The server uses TCP/IP to communicate with the user’s computer over the internet. HTTP/HTTPS protocols are used for data exchange between the server and the client.

Issues with This Infrastructure:

SPOF (Single Point of Failure): The entire website depends on one server. If the server fails, the website becomes unavailable.
Downtime for Maintenance: Deploying new code or restarting the web server causes downtime, making the website temporarily unavailable.
Scalability Issues: One server may not handle high traffic, leading to slow performance or crashes during traffic spikes.

