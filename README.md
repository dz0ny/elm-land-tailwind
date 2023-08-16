# Using Tailwind with Elm-land

This project demonstrates how to use Tailwind with Elm-land using yarn.

## Installation

To install this project, follow these steps:

1. Clone the repository to your local machine.
2. Install the necessary dependencies by running `yarn install`.

## Usage

To use this project, follow these steps:

1. Start the development server by running `yarn dev`.
2. Navigate to `http://localhost:1234` in your web browser.
3. Edit the files in the `src` directory to modify the application.
4. See the changes in your browser as you save the files.

## Configuration

The trick to using Tailwind with Elm-land is to configure Tailwind to look for changes in files in addition to the usual src location, also to look for them in .elm-land directory. This is done in the `tailwind.config.js` file:

```javascript
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,elm,ts,css,html}",
    ".elm-land/**/*.{js,elm,ts,css,html}"
  ],
}
```

This configuration tells Tailwind to look for Elm files in the src and .elm-land directories, in addition to the usual file types.

In addition to configuring Tailwind, you also need to insert index.css into the interop.js file. This can be done by adding the following line to the interop.js file. This way Vite knwo to transpile and bundle the css file:

```javascript
import './index.css';

```

## Contributing
To contribute to this project, follow these steps:

Fork the repository.
Create a new branch for your changes.
Make your changes and commit them.
Push your changes to your fork.
Submit a pull request.