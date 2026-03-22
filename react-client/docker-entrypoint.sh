#!/bin/sh
# Replace placeholders in env.js with actual ENV variables

sed -i "s|http://backend:8080/api|${REACT_APP_API_URL}|g" /usr/share/nginx/html/env.js

exec "$@"