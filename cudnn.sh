#!/usr/bin/env bash
gunzip /vagrant/cudnn-7.0-linux-x64-v4.0-prod.tgz
tar xf /vagrant/cudnn-7.0-linux-x64-v4.0-prod.tar
sudo mv cuda/include/* /usr/include
sudo mv cuda/lib64/* /lib64
