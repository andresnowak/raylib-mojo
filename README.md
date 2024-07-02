# raylib-mojo

[Raylib](https://github.com/raysan5/raylib) bindings for Mojo.

> [!NOTE]  
> This project is not complete there are somethings that are not implemented yet (_like raudio_). Also majority of the functions are not tested, the majority should probably work but there are no guarantees and also some structs could be incorrectly implemented.


## Requirements

**Warning**: This project seems to have errors in MacOs and it is also a little bit more complex because FFI still isn't complete in mojo (see [Issue 3144](https://github.com/modularml/mojo/issues/3144) for the FFI macos issue and FFI general issue).
- C, C Compiler
- CMake
- RayLib



## Getting Started

1. **RayLib installation guide:** 
    - You can install raylib using brew [Install raylib package managers](https://github.com/raysan5/raylib/issues/613) or manually [Install RayLib, Working on GNU Linux](https://github.com/raysan5/raylib/wiki/Working-on-GNU-Linux)
    - Note: if you are using WSL and its built-in windowing server. When installing raylib set this flag in the cmake command `-DUSE_WAYLAND=ON`.
2. **Clone the repo**
    ```sh
    git clone https://github.com/andresnowak/raylib-mojo
    ```
3. **Build the raylib bindings:**
    ```sh
    cd raylib-mojo/raylib/raylib_bindings
    mkdir build
    mkdir lib
    touch config.cmake
    cd build
    cmake ..
    make
    ```
    - In `config.cmake` you have to set the path to the raylib installation. For example:
    ```cmake
    set(RAYLIB_ROOT_DIR "/home/linuxbrew/.linuxbrew/Cellar/raylib/5.0")
    ```
4. **Set the path to RayLib:**

    In `raylib` dir create a file called `env_variables.mojo` and in there set the complete path to the raylib installation and for the bindings we create. For example:
    ```mojo
    alias RAYLIB_PATH = "/home/linuxbrew/.linuxbrew/Cellar/raylib/5.0"
    alias alias RAYLIB_BINDINGS_PATH = "/home/usr/raylib-mojo/raylib/raylib_bindings/lib/libraylib_bindings.so"
    ```

5. **Run demo:**

    After that you can run `demo.mojo`.

## Contributing
  
As there are still things missing and some things are incorrectly implemented and maybe some things could be better implemented, any help is appreciated.

### Creating A Pull Request

1. Fork the Project
2. Create your Feature Branch
3. Commit your Changes
4. Push to the Branch
5. Open a Pull Request

## License

raylib-mojo is licensed under an unmodified zlib/libpng license. View [LICENSE](https://github.com/andresnowak/raylib-mojo/blob/main/LICENSE.txt) for more information.


## Acknowledgements
- Built with [Mojo](https://github.com/modularml/mojo) created by [Modular](https://github.com/modularml)
- Extra: This project was implemented because of this one [fire-physics-engine](https://github.com/RyanLeber/fire-physics-engine)
