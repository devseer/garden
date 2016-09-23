class Stream
	cvs: document.getElementById('game')
	ctx: Stream::cvs.getContext('2d')
	run: -> @flow(f) for f in @form

class @Game
	form: []
	stream: []

	constructor: () ->
		Stream::ctx.imageSmoothingEnabled = false
		Stream::form = @form
		@main()

	main: () ->
		stream.run() for stream in @stream
		requestAnimationFrame(=> @main())
