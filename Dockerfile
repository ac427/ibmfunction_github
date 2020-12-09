FROM anantac/ibmfunction_bionic

COPY requirements.txt /tmp/requirements.txt

RUN apt-get update && apt-get install -y git \
        && rm -rf /var/lib/apt/lists/* \
        && pip3 install --no-cache-dir -r /tmp/requirements.txt \
