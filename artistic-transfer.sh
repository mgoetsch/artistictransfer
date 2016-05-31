#!/usr/bin/env bash
sudo apt-get install --force-yes -y libav-tools s3cmd unzip
gunzip DeepFlow_release2.0.tar.gz
tar xvf DeepFlow_release2.0.tar
unzip deepmatching_1.2.1.zip
sudo mkdir /mnt/ubuntu
sudo chown ubuntu:ubuntu /mnt/ubuntu
cd /mnt/ubuntu
#s3cmd --configure
#s3cmd get s3:/rosebudstudios.s3/examples.tar.gz examples.tar.gz
#gunzip examples.tar.gz
#tar xf examples.tar
git clone https://github.com/mgoetsch/artistic-videos.git
mv /vagrant/DeepFlow_release2.0/deepflow2-static artistic-videos
mv /vagrant/deepmatching_1.2.1_c++/deepmatching-static artistic-videos
cd /mnt/ubuntu/artistic-videos/models
sh download_models.sh
