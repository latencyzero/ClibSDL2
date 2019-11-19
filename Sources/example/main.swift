import ClibSDL2


func
main()
{
	SDL_LogSetOutputFunction(
	{ inContext, inInt, inPriority, inMsg in
	 	if let msg = inMsg
	 	{
	 		let s = String(cString: msg)
			print(s)
		}
	}, nil)
	SDL_LogSetAllPriority(SDL_LOG_PRIORITY_INFO)
	
	print("Creating window")
	
	let everything: UInt32 = 		0x00000001
									|	0x00000010
									|	0x00000020
									|	0x00000200
									|	0x00001000
									|	0x00002000
									|	0x00004000
									|	0x00008000
						
	guard
		SDL_Init(everything) >= 0,
		let window = SDL_CreateWindow("SDL2", 0, 0, 640, 480, UInt32(4)),
		let surface = SDL_GetWindowSurface(window)
	else
	{
		print("Unable to create window")
		return
	}
	
	var running = true
	var g = 0
	while running
	{
		var ev: SDL_Event = SDL_Event()
		while SDL_PollEvent(&ev) > 0
		{
			if ev.type == SDL_QUIT.rawValue || (ev.type == SDL_KEYDOWN.rawValue && ev.key.keysym.sym == SDLK_ESCAPE)
			{
				running = false
			}
		}
			
		let p = SDL_MapRGB(surface.pointee.format, UInt8(g), 0, 0)
		
		g += 1
		if g > 255
		{
			g = 0
		}
		
		SDL_FillRect(surface, nil, p)
		SDL_UpdateWindowSurface(window)
	}
	
	SDL_DestroyWindow(window)
	SDL_Quit()
}


main()
