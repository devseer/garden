class ClearScreen extends Stream
	flow: (f) ->
		if f.screen
			@ctx.fillStyle = f.screen.color
			@ctx.fillRect(
				f.screen.position.x, f.screen.position.y,
				f.screen.size.width, f.screen.size.height
			)

Game::stream.push(new ClearScreen)
