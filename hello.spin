' Hello World in Spin

CON
  _CLKMODE = XTAL1 + PLL16x
  _XINFREQ = 5_000_000
  TV_PIN = 12

OBJ
  Tv: "TV_Text"

PUB Main
  Tv.Start( TV_PIN )
  Tv.Str(String("Hello, World"))