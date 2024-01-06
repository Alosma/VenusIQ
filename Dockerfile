FROM jepthoniq/jepthon:slim-buster

#clonning repo 
RUN git clone https://github.com/alosma/AnimeIQ.git /root/ANUM
#working directory 
WORKDIR /root/ANUM

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/ANUM/bin:$PATH"

CMD ["python3","-m","ANUM"]
