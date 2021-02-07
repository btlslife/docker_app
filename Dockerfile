# Set Base Image
From python:3.8

# Set Working Directory
WORKDIR /code 

# Copy requirements.txt
COPY app/requirements.txt  . 

# Install requirements
RUN pip install -r requirements.txt

# Copy application files
COPY  app/src/   . 

#  Expose app port
EXPOSE 5000

# Run Application 
CMD ["python", "./server.py"]
