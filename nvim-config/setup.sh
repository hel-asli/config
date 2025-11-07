#!/bin/bash

# LazyVim Config Setup Script
echo "Setting up LazyVim configuration..."

# Initialize git repository
git init
git add .
git commit -m "Initial LazyVim configuration"

echo "Git repository initialized!"
echo ""
echo "To use this config on another laptop:"
echo "1. Push to your git repository:"
echo "   git remote add origin <your-repo-url>"
echo "   git push -u origin main"
echo ""
echo "2. On the new laptop, clone to nvim config directory:"
echo "   git clone <your-repo-url> ~/.config/nvim"
echo ""
echo "3. Start nvim and let LazyVim install plugins"