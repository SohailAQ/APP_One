FROM python:3.10

# Set Environment Variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
RUN mkdir /code
WORKDIR /code

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy Project
COPY . .

EXPOSE 1986

CMD ["python", "manage.py", "runserver", "0.0.0.0:1986"]