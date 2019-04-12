

# install python
sudo apt-get install python

#clone Let's Encrypt source code
git clone https://github.com/certbot/certbot 
$ cd certbot
$ ./certbot-auto --help

#generate certs.  "certonly" means no special server plugin, "standalone" means
#standalone server is created on port 80 to verify your domain
./certbot-auto certonly -a standalone \
     -d tron.alohaspark.org -d www.seeld.eu
