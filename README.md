# ubuntu-quest-server
Various materials to tune ubuntu 16.04 as one super development server



## Shortcuts

`Alt + Tab`                  switch between apps, then leave the alt 
`ALT + §` (`ALT + `).        switch between windows within one app
`Alt + F2`                   Run cmd  



## P50 Drivers

```bash
sudo apt-get --purge remove xserver-xorg-video-nouveau
sudo ubuntu-drivers devices
sudo apt-get install nvidia-337
```


### Kafka

```bash
# delete topic
# enable properties is set `delete.topic.enable=true` 
bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic test
```

### Tips

```bash
tar xf archive.tar -C /target/directory
tar xf archive.tar -C /target/directory --strip-components=1
```
