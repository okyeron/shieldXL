# shieldXL

A rework/remix of the monome norns shield - a open-source/DIY shield for Raspberry Pi boards, providing hardware compatibility with the [norns](https://monome.org/docs/norns) ecosystem. Original designed by monome (brian crabtree, aka @tehn). Remixed in spring 2023 by denki-oto.

Please be very aware that this project is not directly supported by [monome](https://monome.org). Do not email monome asking for build help, debugging or repairs

## specifications

- audio codec: CS4270
- audio jacks: 6.5mm in and out, line level
- OLED: NHD-2.7-12864WDW3-M (w/ MOLEX connector)
- 3x pushbutton switches, 3x rotary encoders

## versions

__shieldXL 20230423__
This rework/remix is based on the 210330 version of the norns shield. It uses the same disk image as the 210330 shield.


## troubleshooting

- most soldering problems can be solved simply by reheating solder joints. bad solders can result in various problems: screen doesn't turn on, knobs/keys don't work.
- use a good SD card, not a cheap one. if you're having trouble, try using a different card.
- be sure to use the correct power supply. the pi will not power well from a laptop and you'll get confusing errors. get a dedicated 3A USB supply, or very high output USB battery.

## notes

- the shield does not have a dedicated headphone output, but headphones work fine on the main outputs (use the left output jack). the headphone gain level within the norns menu does nothing in this case.
- the battery indication will not function, as there's no battery.

## License

GNU GENERAL PUBLIC LICENSE
