FROM jepthoniq/jepthon:slim-buster

#clonning repo 
RUN git clone https://github.com/alosma/VenusIQ.git /root/PASH
#working directory 
WORKDIR /root/PASH

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/PASH/bin:$PATH"

CMD ["python3","-m","PASH"]
