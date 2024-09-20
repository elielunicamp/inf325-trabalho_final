FROM jupyter/base-notebook:latest

# Switch to root user to install system packages
USER root

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Switch back to jovyan user
USER ${NB_UID}

# Copy the requirements.txt from the project root
COPY requirements.txt /tmp/

# Install Python dependencies
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Copy the application code into the work directory
COPY . /home/jovyan/work/

# Set the working directory
WORKDIR /home/jovyan/work/

# Start JupyterLab
CMD ["start-notebook.sh"]
