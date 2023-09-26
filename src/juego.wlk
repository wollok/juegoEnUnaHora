import wollok.game.*

object nave {
	var position = game.center().down(4)

	method image() = "player.png"
	method position() = position
	
	method derecha() {
		position = position.right(1)
	}
	method izquierda() {
		position = position.left(1)
	}
	method disparar(){
		
	}
	
}

object pantalla {
	method iniciar() {
		
		self.configuracionBasica()
		self.agregarVisuales()
		self.programarTeclas()
		self.definirColisiones()
				
	}
	method configuracionBasica() {
		game.width(15)
		game.height(12)
		game.title("Juego")
//		game.cellSize(40)
//		game.boardGround("imagenDeFondo.jpg")
	}
	method agregarVisuales() {
		game.addVisual(nave) 
	}
	method programarTeclas() {
		keyboard.right().onPressDo{nave.derecha()} 
		keyboard.left().onPressDo{nave.izquierda()} 
		keyboard.space().onPressDo{nave.disparar()} 
	}
	method definirColisiones() {
		//TODO: Código autogenerado 
	}
}
