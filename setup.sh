#!/bin/bash

# Initialize documentation directory if it doesn't exist
mkdir -p docs

# Install required dependencies for Sphinx and autopep8 (assuming you want to format your docstrings)
pip install sphinx sphinx-autodoc-typehints autopep8

# Set repository name variable
REPO_NAME="My Repository"

# Create README.md file with basic repository information
echo "Repository Name: $REPO_NAME" > docs/README.md

# Create changelog file and populate it with initial changes
echo "Initial commit" >> docs/changelog.md

# Generate documentation using Sphinx (assuming you're using a Markdown-based theme)
sphinx-apidoc -o docs source/

# Format docstrings using autopep8
find docs/source -name "*.py" -exec python -m autopep8 {} \;
