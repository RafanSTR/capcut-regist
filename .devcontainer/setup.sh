#!/bin/bash
set -e

# Update package index
sudo apt-get update

# Install dependencies required by Puppeteer/Chromium
sudo apt-get install -y \
  libatk1.0-0 \
  libatk-bridge2.0-0 \
  libcups2 \
  libdrm2 \
  libxkbcommon0 \
  libxcomposite1 \
  libxdamage1 \
  libxfixes3 \
  libxrandr2 \
  libgbm1 \
  libasound2 \
  libpangocairo-1.0-0 \
  libpango-1.0-0 \
  libcairo2 \
  libnss3 \
  libxshmfence1 \
  libx11-xcb1 \
  libx11-6 \
  libxcb1 \
  libxext6

# Optional: install Chromium system-wide (kadang lebih stabil)
sudo apt-get install -y chromium-browser || sudo apt-get install -y chromium

echo "✅ Puppeteer dependencies installed"
