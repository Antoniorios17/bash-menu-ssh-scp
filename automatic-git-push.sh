#!/bin/bash

git add .
git commit -m 'updated script - $(date +"%d-%m-%Y")'
git push origin main
