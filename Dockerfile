# from base image
FROM python:3.8

#Set the working dirctory inside container
WORKDIR /app

#copy the required files
COPY requirements.txt .

#Install the project Dependenices
RUN pip install -r requirements.txt

#copy the application code to container
COPY . .

# Expose the port the Flask application will be listening on
EXPOSE 5000

# Set environment variables, if necessary
# ENV MY_ENV_VAR=value

#RUn the flask application
CMD [ "python" "app.py"]

