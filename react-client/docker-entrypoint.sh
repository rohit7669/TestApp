#!/bin/sh
set -e

# Dynamically create env.js
cat <<EOF > /usr/share/nginx/html/env.js
window._env_ = {
  REACT_APP_API_URL: "${REACT_APP_API_URL:-http://backend:8080/api}"
};
EOF

exec "$@"