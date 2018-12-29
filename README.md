# Writeup
Writeup is an extraction of the components of [DocumentUp](https://github.com/jeromegn/DocumentUp) that handle converting Markdown to HTML files, wrapped in a gem with an executable.

## Installation
`gem install writeup`

Alternatively, you can add Writeup to your gemfile and use the library directly from within your code.

## Usage
Writeup generates a single HTML file with styles in-lined.

### Command line
`writeup path/to/document.md path/to/output.html`

### Library
```ruby
Writeup.render(markdown_string, destination_path)
```

## Example
Check out what this README file looks like after being run through Writeup [here](http://joeyschoblaska.github.io/writeup).
