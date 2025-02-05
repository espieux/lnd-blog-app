#!/bin/bash

# Remove the persistent db with old network data
rm -f db.json

# Start the development server using yarn
yarn dev
