# Nginx Log Analyzer

A simple Bash script that analyzes an nginx access log file from the command line.

## Features

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

## Usage

```bash
chmod +x log-analyzer.sh
./log-analyzer.sh <log-file>