class LoadResource extends Stream
	flow: (f) ->
		for p of f
			if f[p].src and f[p].src.length
				src = f[p].src
				f[p].src = new Image()
				f[p].src.src = src

Game::stream.push(new LoadResource)
