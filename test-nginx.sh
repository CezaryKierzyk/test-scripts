#!/bin/bash



sudo apt-get -y install nginx
sudo systemctl enable nginx
sudo systemctl start nginx

sudo echo " <!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Hello</h1>
<p>Data you passed to configuration are</p>
<ul>
`for i in $@; do echo "<li>$i</li>"; done`
</ul>

<p><em>This is debug site for your deployment.</em></p>
</body>
</html>" | sudo tee /var/www/html/index.nginx-debian.html
