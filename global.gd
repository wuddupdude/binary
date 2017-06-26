extends Node

# Gravitational constant.
const G = 6.67408e-11 # m^3 kg^-1 s^-2

# Astronomical unit.
const AU = 1.49598e11 # m

# Solar mass.
const SOLAR_MASS = 1.99e30 # kg

# Stellar mass of the Sun.
# To be used later for generated stars.
# Mass range of typical G-type main-sequence stars.
# 0.84 Mo <-----------> 1.15 Mo
const STELLAR_MASS = 1.0 # Mo

# Surface gravity of the Sun.
# To be used later for generated stars.
# log g range of typical G-type main-sequence stars.
# 4.48 log g <-----------> 4.32 log g
const SURFACE_GRAVITY = 4.43812 # log(cgs)

# Stellar mass of the star.
var stellarMass = STELLAR_MASS * SOLAR_MASS # kg

# Radius of the star.
# Why is this slightly off from Solar radius = 695,700 km ?
var radius = sqrt(100 * G * stellarMass / pow(10, SURFACE_GRAVITY)) / 1000 # km

# Viewport astronomical unit.
#
# float
#
func au():
	return get_viewport().get_rect().size.height / 4 # (px)

# Viewport center.
#
# Vector2
#
func get_viewport_center():
	return Vector2(get_viewport().get_rect().size.width/2, get_viewport().get_rect().size.height/2)

func _ready():
	print(radius)
