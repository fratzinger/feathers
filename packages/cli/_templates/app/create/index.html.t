---
to: "public/index.html"
---
<!DOCTYPE html>
<html lang="en">
  <head>
    <title><%= name %></title>
    <meta name="description" content="<%= description %>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      html, body {
        font-family: 'Helvetica Neue', 'Helvetica', 'Arial', 'sans-serif';
        font-weight: 400;
        font-size: 16px;
        color: #2c3e50;
      }

      .center-text {
        text-align: center;
      }

      main {
        margin-top: 100px;
        padding: 20px;
      }

      img.logo {
        display: block;
        margin: 0 auto;
        max-width: 100%;
        margin-bottom: 30px;
      }

      h2 {
        font-size: 2em;
        font-weight: 100;
      }

      footer {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        padding: 20px;
      }

      footer p {
        font-weight: 300;
        font-size: 1.0em;
      }

      a {
        color: #3cf;
        text-decoration: none;
      }

      a:hover,
      a:focus {
        color: #3cf;
      }
    </style>
  </head>
  <body>
    <main class="container">
      <h1><%= name %></h1>

      <img class="logo" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAk4AAABkCAMAAABHL0++AAADAFBMVEUAAAD///+AgIBVVVVAQEAzMzNVVVVJSUlAQEA5OTkzMzNGRkZAQEA7Ozs3NzczMzNAQEA8PDw5OTk2NjYzMzM9PT06Ojo3Nzc1NTUzMzM7Ozs5OTk3Nzc1NTUzMzM6Ojo4ODg2NjY1NTUzMzM5OTk3Nzc2NjY0NDQzMzM4ODg3Nzc1NTU0NDQzMzM3Nzc2NjY1NTU0NDQzMzM3Nzc2NjY1NTU0NDQzMzM3Nzc2NjY1NTU0NDQzMzM2NjY1NTU1NTU0NDQzMzM2NjY1NTU1NTU0NDQzMzM2NjY1NTU0NDQ0NDQzMzM2NjY1NTU0NDQ0NDQzMzM2NjY1NTU0NDQ0NDQzMzM1NTU1NTU0NDQ0NDQzMzM1NTU1NTU0NDQ0NDQzMzM1NTU1NTU0NDQ0NDQzMzM1NTU1NTU0NDQzMzMzMzM1NTU0NDQ0NDQzMzMzMzM1NTU0NDQ0NDQzMzMzMzM1NTU0NDQ0NDQzMzMzMzM1NTU0NDQ0NDQzMzMzMzM1NTU0NDQ0NDQzMzMzMzM1NTU0NDQ0NDQzMzMzMzM1NTU0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQ0NDQzMzMzMzM0NDQ0NDQzMzMzMzMzMzM0NDQ0NDQzMzMzMzMzMzM0NDQ0NDQzMzMzMzMzMzM0NDQ0NDQzMzMzMzMzMzM0NDQ0NDQzMzMzMzMzMzM0NDQ0NDQzMzMzMzMzMzM0NDQ0NDQzMzMzMzMzMzM0NDQ0NDQzMzMzMzMzMzM0NDQ0NDQzMzMzMzMzMzM0NDQ0NDQzMzMzMzMzMzN4a/VhAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1O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" alt="Feathers Logo">

      <footer>
        <p class="center-text">For more information on Feathers see <a href="https://docs.feathersjs.com" title="Feathers Documentation" target="blank">docs.feathersjs.com</a>.</p>
      </footer>
    </main>
  </body>
</html>
