# artistictransfer

## bootstrap
g2.2xlarge EC2 instance with vagrant up

## firstboot
``` sh
/vagrant/cudnn.sh
echo 'export LD_LIBRARY_PATH=/lib64' >> ~/.bashrc
sudo chown ubuntu:ubuntu ~/.bash_profile
echo '. ~/.bashrc' >> ~/.bash_profile
sudo reboot
```

## secondboot
``` sh
cd /vagrant
./torch7.sh
. ~/.bashrc
./loadcaffe.sh
./neural-style.sh
./artistic-transfer.sh
```

## stylize image example
``` sh
cd /home/ubuntu/torch/neural-style
th neural_style.lua -style_image vangoghselfportrait.jpg -content_image /vagrant/Marcia_Head.jpg  -backend cudnn -cudnn_autotune -optimizer lbfgs
```

## stylize video example (create optical flow with bigmem)
``` sh
cd /home/ubuntu/artistic-videos
./stylizeVideo.sh /home/ubuntu/Street_Music.mov /home/ubuntu/torch/neural-style/examples/inputs/woman-with-hat-matisse.jpg
```

## bigmem to create 1920:1080 optical flow
### bootstrap
r3.8xlarge EC2 instance with vagrant up bigmem
### firstboot
``` sh
sudo apt-get install unzip
cd /vagrant
./artistic-transfer.sh
sudo reboot
```
### secondboot
``` sh
./stylizeVideo.sh /home/ubuntu/Street_Music.mov /home/ubuntu/torch/neural-style/examples/inputs/woman-with-hat-matisse.jpg
```