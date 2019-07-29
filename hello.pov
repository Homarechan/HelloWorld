#include "skies.inc"

camera{location <0,1,-5> look_at y}
light_source{<2,4,-7>,2}
sky_sphere{S_Cloud1}
plane{y 0 pigment{checker rgb 1,0} finish{reflection .5}}
text{ttf "timrom.ttf" "Hello, World!" .3,0
  pigment {agate scale .2} translate -2.5*x
}