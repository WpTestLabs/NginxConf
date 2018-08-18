#!/bin/sh
  echo "NginxConf/mkIndex.html $1 $2"
cat >$1/index.html <<EOF
<!DOCTYPE html><html><head>
<title>index.html on $1 vhost</title>
</head><body>
index.html on $1 vhost<p>$2
<p>Created: `date`
</body></html>
EOF
