
#!/bin/bash
# Update and install Apache
yum update -y
yum install -y httpd

# Start and enable the web server
systemctl start httpd
systemctl enable httpd

# Go to web root directory
cd /var/www/html
chmod 755 /var/www/html

# Create an index.html file with custom content
cat <<EOF > index.html
<html>
<head>
    <title>My Static Website</title>
</head>
<body>
    <h1 style="text-align: center;">Welcome to My Static Website!</h1>
    <div style="text-align: center;">
        <img src="https://mybucketyvplkojigctxsrsxchbk7865.s3.us-east-1.amazonaws.com/newcat.jpg" alt="Coffee Image">
    </div>
</body>
</html>
EOF