Easy way to start code analysis

Firstly generate build-dir with compile_commands.json.
For example:
cmake -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=1 <path_to_src> 

clang-tidy \
    --config-file=<path> \
    <path_to_cpp_1> <path_to_cpp_2> ... <path_to_cpp_n> \
    -p <path_to_build_dir>

