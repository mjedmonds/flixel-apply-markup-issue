# XAI Bomb Defusing Game

## Dependencies

Install [Haxe](https://haxe.org/download/) and [HaxeFlixel](https://haxeflixel.com/documentation/getting-started/).

Additionally, you'll need to install the following haxelib dependencies:

```
haxelib install colyseus-websocket
haxelib install tink_json
haxelib install assertion
haxelib install set
haxelib install haxeui-core
haxelib install haxeui-flixel
haxelib install haxeui-theme-material
```

### Client

To build and run the client, execute

```
lime test Project.xml html5 --connect 6000
```

This should launch your web browser at http://127.0.0.1:3000/. If you just wish to build the output, you can run `lime build Project.xml html5 --connect 6000`

After building, the client build output is located at [export/client](export/client).

