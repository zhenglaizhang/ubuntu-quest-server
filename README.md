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
