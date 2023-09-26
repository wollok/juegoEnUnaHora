import wollok.game.*

object nave {
	var position = game.center().down(5)

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

class Enemigo {

	var nro
	var position 
	
	method position() = position

	method image() = "invader" + nro + ".png"

}

object pantalla {
	
	const cantEnemigos = 10
	
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
		cantEnemigos.times{i=>
			self.agregarEnemigo(i)
		}
		
		 
	}
	method programarTeclas() {
		keyboard.right().onPressDo{nave.derecha()} 
		keyboard.left().onPressDo{nave.izquierda()} 
		keyboard.space().onPressDo{nave.disparar()} 
	}
	method definirColisiones() {
		//TODO: Código autogenerado 
	}
	method agregarEnemigo(valor) {
		game.addVisual( new Enemigo(nro = valor % 5 +1, position = game.at(valor + 2 ,game.height()- 1) ))   
	}
}
