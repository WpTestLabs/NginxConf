#!/bin/sh
cat >$WwwDfltSwc/index.html <<EOF
<!DOCTYPE html><html><head>
<title>index.html on default vhost</title>
</head><body>
index.html on default vhost
<p>Created: `date`
</body></html>
EOF
