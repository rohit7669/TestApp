#!/bin/sh
set -e

# Dynamically create env.js based on environment variable
cat <<EOF > /usr/share/nginx/html/env.js
window._env_ = {
  REACT_APP_API_URL: "${REACT_APP_API_URL:-http://52.66.205.79:30081/api}"
};
EOF

exec "$@"