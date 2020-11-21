extends Camera2D


# Hay 3 variables que pueden toquetear para ajustar el zoom si quieren:
# MIN_ZOOM siempre debería ser 1, es para que la cámara no se acerque al auto
# demás. Pueden agrandarlo si quieren que la cámara default esté outzoomeada
# siempre
# MAX_ZOOM es el máximo que el zoom puede extenderse cuando estás lejos del piso
# Tengan en cuenta que un MAX_ZOOM muy grande es contraproducente porque no se
# distingue bien al auto o la distancia del piso es muy grande como para que
# importe

# En el Raycast hay una configuración que es cast_to. El Y de ese está en 400,
# creo. Pueden cambiarlo para cambiar la distancia y velocidad a la que el zoom
# se va escalando. Cuanto más chico es más rápido se llega al MAX_ZOOM

const MIN_ZOOM = 2
const MAX_ZOOM = 5
const zoom_percent = 20 # si quieren jugar con esto es la velocidad a la que
#cambia el zoom. Haganla más grande si quieren, en lo posible no la bajen mucho

var target_zoom = MIN_ZOOM
var i = MIN_ZOOM

onready var ray = get_node("RayCast2D")

func _process(delta):
	
	#print(ray.is_colliding())
	if ray.is_colliding():
		var x = ray.get_collision_point().y - ray.global_position.y
		var y = ray.cast_to.y/MAX_ZOOM
		#print(x)
		#print(y)
		target_zoom = clamp(x/y + MIN_ZOOM,MIN_ZOOM,MAX_ZOOM)
	else:
		var x = ray.cast_to.y - ray.global_position.y
		var y = ray.cast_to.y/MAX_ZOOM
		#print(x)
		#print(y)
		target_zoom = clamp(x/y + MIN_ZOOM,MIN_ZOOM,MAX_ZOOM)
	
	i = self.zoom.y/zoom_percent*(zoom_percent-1) + target_zoom/zoom_percent
	self.zoom = Vector2(i,i)
