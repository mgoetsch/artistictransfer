# artistictransfer

## bootstrap
with vagrant

## firstboot
``` sh
/vagrant/cudnn.sh
echo 'export LD_LIBRARY_PATH=/lib64' >> ~/.bashrc
sudo reboot
```

## secondboot
``` sh
cd /vagrant
./torch.sh
echo '. ~/.bashrc' >> ~/.bash_profile
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

## stylize video example
``` sh
cd /home/ubuntu/artistic-videos
./stylizeVideo.sh /home/ubuntu/Street_Music.mov /home/ubuntu/torch/neural-style/examples/inputs/woman-with-hat-matisse.jpg
```
