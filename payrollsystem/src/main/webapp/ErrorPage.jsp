<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('error.jpg'); /* Replace 'background.jpg' with your image path */
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>

<body>
    <div class="bg-gray-800 bg-opacity-50 p-8 rounded-lg shadow-lg text-center">
        <h2 class="text-3xl font-bold text-white mb-4">Oops! Something Went Wrong</h2>
        <p class="text-lg text-white mb-4">We apologize for the inconvenience. An error has occurred.</p>
        <p class="text-lg text-white mb-8">Please try again later.</p>
        <a href="admn_homepage.jsp" class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">Go to Admin Homepage</a>
    </div>
</body>

</html>
