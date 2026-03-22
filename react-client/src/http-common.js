import axios from "axios";

console.log("API URL:", window._env_.REACT_APP_API_URL);

export default axios.create({
  baseURL: window._env_.REACT_APP_API_URL,  // dynamic URL from env
  headers: {
    "Content-type": "application/json"
  }
});