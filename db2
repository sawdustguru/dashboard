<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Service Dashboard</title>
    <script>
        // Function to perform a hard refresh
        function hardRefresh() {
            location.reload(true); // Reload the page, ignoring the cache
        }

        // Perform a hard refresh every hour (3600000 milliseconds)
        setInterval(hardRefresh, 3600000);
    </script>
    <style>
        html, body {
            height: 100%; /* Ensure html and body fill the entire viewport */
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
        }
        body {
            display: grid; /* Use CSS Grid for layout */
            grid-template-columns: repeat(2, minmax(0, 1fr)); /* Two equal-width columns */
        }
        .iframe-container {
            box-sizing: border-box; /* Include padding and border in element's total width and height */
            padding: 2px; /* Add padding */
            border: 2px solid black; /* Add black border */
            height: 100%; /* Ensure iframes fill their container */
        }
        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
        .left-column, .right-column {
            display: grid;
            grid-template-rows: auto; /* Auto height to adjust based on content */
        }
        .half-width {
            width: 50%;
        }
    </style>
</head>
<body>
    <div class="left-column">
        <div class="iframe-container">
            <iframe src="https://radar.weather.gov/?settings=v1_eyJhZ2VuZGEiOnsiaWQiOm51bGwsImNlbnRlciI6Wy03OS45OSw0MC45NTRdLCJsb2NhdGlvbiI6bnVsbCwiem9vbSI6Ni4zMzY4NjA1NzkwNzM5MjQ1fSwiYW5pbWF0aW5nIjp0cnVlLCJiYXNlIjoic3RhbmRhcmQiLCJhcnRjYyI6ZmFsc2UsImNvdW50eSI6ZmFsc2UsImN3YSI6ZmFsc2UsInJmYyI6ZmFsc2UsInN0YXRlIjpmYWxzZSwibWVudSI6dHJ1ZSwic2hvcnRGdXNlZE9ubHkiOmZhbHNlLCJvcGFjaXR5Ijp7ImFsZXJ0cyI6MC44LCJsb2NhbCI6MC42LCJsb2NhbFN0YXRpb25zIjowLjgsIm5hdGlvbmFsIjowLjZ9fQ%3D%3D" frameborder="0"></iframe>
        </div>
        <div class="iframe-container">
            <iframe src="performance-2.html" frameborder="0"></iframe>
        </div>
    </div>
   <div class="right-column">
        <div class="iframe-container half-width">
            <iframe src="test.html" frameborder="0"></iframe>
        </div>
        <div class="iframe-container half-width">
            <iframe src="test.html" frameborder="0"></iframe>
        </div>
        <div class="iframe-container">
            <iframe src="text_rotator-3.html" frameborder="0"></iframe>
        </div>
        <div class="iframe-container">
            <iframe src="gauge-2.html" frameborder="0"></iframe>
        </div>
    </div>
</body>
</html>
