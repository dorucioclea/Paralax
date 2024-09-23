#!/bin/bash

echo "Running tests and collecting coverage for Paralax.CQRS.WebApi..."

cd src/Paralax.CQRS.WebApi/src/Paralax.CQRS.WebApi

echo "Restoring NuGet packages..."
dotnet restore

echo "Running tests and generating code coverage report..."
dotnet test --collect:"XPlat Code Coverage" --results-directory ./TestResults

# Check if tests succeeded
if [ $? -ne 0 ]; then
  echo "Tests failed. Exiting..."
  exit 1
fi
