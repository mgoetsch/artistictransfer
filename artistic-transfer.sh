#!/usr/bin/env bash
sudo apt-get install --force-yes -y libav-tools
gunzip DeepFlow_release2.0.tar.gz
tar xvf DeepFlow_release2.0.tar
unzip deepmatching_1.2.1.zip
cd /home/ubuntu
git clone https://github.com/mgoetsch/artistic-videos.git
mv /vagrant/DeepFlow_release2.0/deepflow2-static artistic-videos
mv /vagrant/deepmatching_1.2.1_c++/deepmatching-static artistic-videos
cd /home/ubuntu/artistic-videos/models
sh download_models.sh
