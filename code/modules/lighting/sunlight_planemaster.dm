
/obj/screen/plane_master/lighting
	name = "lighting plane master"
	plane = SUNLIGHTING_LAYER
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT
	blend_mode = BLEND_ADD

/* thank you russians */
/obj/screen/plane_master/lighting/New()
	. = ..()
	color = SSsunlight.current_color
	SSsunlight.sunlighting_planes |= src

/obj/screen/plane_master/lighting/Destroy()
	. = ..()
	SSsunlight.sunlighting_planes -= src
