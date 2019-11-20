# ClibSDL2

The Swift Package Manager doesn’t have a way to use `sdl2-config` to get the
right build flags for your current environment, so you’ll likely have to
modify this build invocation:

```
$ swift run -Xlinker -L/usr/local/lib -Xcc -I/usr/local/include/SDL2
```

But that should display a window and cycle from black to red on both macOS and
a Raspberry Pi with a display attached.
