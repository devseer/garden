class RenderSprite extends Stream
	flow: (f) ->
		if f.sprite and not f.sprite.src.length
			@ctx.drawImage(f.sprite.src,
			f.sprite.source.x, f.sprite.source.y, f.sprite.source.w, f.sprite.source.h,
			f.sprite.draw.x, f.sprite.draw.y, f.sprite.draw.w, f.sprite.draw.h)

Game::stream.push(new RenderSprite)
