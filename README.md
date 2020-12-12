# docker-lua

An alpine-based docker image with Lua and LuaRocks.


## Run

To run the interactive Lua interpreter:

```sh
docker run --rm -it andreswebs/lua
```

To run a Lua script from a file named `script.lua` in the current directory:

```sh
docker run --rm --volume "$(pwd):/lua" andreswebs/lua script.lua
```


## Authors

**Andre Silva** [andreswebs](https://github.com/andreswebs)


## License

This project is licensed under the [Unlicense](UNLICENSE.md).


## References

<http://www.lua.org/>

<https://luarocks.org/>

<https://github.com/luarocks/luarocks>


## Acknowledgments

Based on:

<https://github.com/woahbase/alpine-lua>

<https://github.com/pirogoeth/alpine-lua>
