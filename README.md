# shieldXL

A rework/remix of the monome norns shield - a open-source/DIY shield for Raspberry Pi boards, providing hardware compatibility with the [norns](https://monome.org/docs/norns) ecosystem. Original designed by monome (brian crabtree, aka @tehn). Remixed in spring 2023 by denki-oto.

__Please be very aware that this project is not directly supported by [monome](https://monome.org). Do not email monome asking for build help, debugging or repairs__

![<# shieldXL-inklinet #>](images/shieldXL-inkline-2.jpg "shieldXL-inkline-2.jpg")

## specifications

- audio codec: CS4270  
- audio jacks: 6.5mm in and out, line level  
- OLED: NHD-2.7-12864WDW3-M (w/ MOLEX connector)  
- 3x pushbutton switches, 3x rotary encoders  
- dimensions (with enclosure): 138mm x 96mm x 30mm  

## versions

__shieldXL 20230423__
This rework/remix is based on the 210330 version of the norns shield. It uses the same disk image as the 210330 shield with the cs4270 codec.

## documentation

[See the monome website for general norns shield documentation](https://monome.org/docs/norns/shield/) 

## installation

See [https://monome.org/docs/norns/help/#fresh-shield](https://monome.org/docs/norns/help/#fresh-shield) for installation instructions.  

See [norns releases on github](https://github.com/monome/norns-image/releases/tag/220306) for disk images (pre-211028 shield for cs4270 codec).  
Specifically:  
* [norns220306-shield-pi3](https://github.com/monome/norns-image/releases/download/220306/norns220306-shield-pi3-cs4270.tgz)
* [norns220306-shield-pi4](https://github.com/monome/norns-image/releases/download/220306/norns220306-shield-pi4-cs4270.tgz)


## enabling hardware midi

```
cd ~
git clone https://github.com/okyeron/shieldXL.git
cd ~/shieldXL 
./install-midi.sh
```
Then Edit `/boot/config.txt` 

`sudo nano /boot/config.txt`  

and add the following  
 
```
enable_uart=1
dtoverlay=miniuart-bt
dtoverlay=uart0
dtoverlay=midi-uart0
```
Then edit `/boot/cmdline.txt` 

`sudo nano /boot/cmdline.txt`  

and remove `serial0`    
(so change `console=serial0,115200` to `console=115200`)  
and `sudo reboot`  

This will internally connect the shieldXL hardware TRS MIDI jacks to the "Virtual MIDI" port which is accessible from the norns MIDI menu (SYSTEM>DEVICES>MIDI).  

__Troubleshooting__   

- when checking MIDI functionality, remember that MIDI OUT has a Type A/B switch on the bottom front edge of the main PCB. Try switching that if you're not getting MIDI to your device.


## troubleshooting

- most soldering problems can be solved simply by reheating solder joints. bad solders can result in various problems: screen doesn't turn on, knobs/keys don't work.
- use a good SD card, not a cheap one. if you're having trouble, try using a different card.
- be sure to use the correct power supply. the pi will not power well from a laptop and you'll get confusing errors. get a dedicated 3A USB supply, or very high output USB battery.

## notes

- the shield does not have a dedicated headphone output, but headphones work fine on the main outputs (use the left output jack). the headphone gain level within the norns menu does nothing in this case.
- the battery indication will not function - there is no battery.

## License

[GNU GENERAL PUBLIC LICENSE](LICENSE.txt)
