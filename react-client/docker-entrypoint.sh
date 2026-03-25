#!/bin/sh
set -e

# Dynamically create env.js based on environment variable
cat <<EOF > /usr/share/nginx/html/env.js
window._env_ = {
  REACT_APP_API_URL: "${REACT_APP_API_URL:-http://13.201.6.246:30081/api}"
};
EOF

exec "$@"