# Use a standard Python image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Copy all your application files into the container
COPY . .

# Expose the port our app will run on (Render uses 10000 by default)
EXPOSE 10000
