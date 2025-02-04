#!/bin/bash

# Set the base directory
PORTFOLIO_DIR="."

# Create main website structure
mkdir -p $PORTFOLIO_DIR/{css,js,projects,images,assets}

# Create main portfolio files
touch $PORTFOLIO_DIR/index.html
touch $PORTFOLIO_DIR/css/styles.css
touch $PORTFOLIO_DIR/js/script.js

# Populate index.html with basic structure
cat <<EOL > $PORTFOLIO_DIR/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Portfolio</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <header>
        <h1>My Portfolio</h1>
        <nav>
            <a href="#about">About</a>
            <a href="#projects">Projects</a>
            <a href="#contact">Contact</a>
        </nav>
    </header>

    <section id="about">
        <h2>About Me</h2>
        <p>I'm a front-end developer skilled in HTML, CSS, and JavaScript.</p>
    </section>

    <section id="projects">
        <h2>Projects</h2>
        <div id="project-list"></div>
    </section>

    <section id="contact">
        <h2>Contact Me</h2>
        <form>
            <input type="text" placeholder="Your Name">
            <input type="email" placeholder="Your Email">
            <textarea placeholder="Your Message"></textarea>
            <button type="submit">Send</button>
        </form>
    </section>

    <script src="js/script.js"></script>
</body>
</html>
EOL

# Create Projects
mkdir -p $PORTFOLIO_DIR/projects/todo-app
mkdir -p $PORTFOLIO_DIR/projects/weather-app

# Create necessary files for To-Do List App
touch $PORTFOLIO_DIR/projects/todo-app/{index.html,styles.css,script.js}

# Populate To-Do List App index.html
cat <<EOL > $PORTFOLIO_DIR/projects/todo-app/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>To-Do List</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>To-Do List</h1>
        <input type="text" id="task-input" placeholder="Add a new task">
        <button onclick="addTask()">Add Task</button>
        <ul id="task-list"></ul>
    </div>
    <script src="script.js"></script>
</body>
</html>
EOL

# Create necessary files for Weather App
touch $PORTFOLIO_DIR/projects/weather-app/{index.html,styles.css,script.js}

# Populate Weather App index.html
cat <<EOL > $PORTFOLIO_DIR/projects/weather-app/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather App</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Weather App</h1>
        <input type="text" id="city-input" placeholder="Enter city name">
        <button onclick="getWeather()">Get Weather</button>
        <div id="weather-result"></div>
    </div>
    <script src="script.js"></script>
</body>
</html>
EOL

# Final Message
echo "✅ Portfolio structure has been created in the '$PORTFOLIO_DIR' directory!"
