from sys.ffi import DLHandle
from .raylib import *
from .raylib_text import *

fn check_system_size() -> DType:
    @parameter
    if is_64bit():
        return DType.uint64
    else:
        return DType.uint32


alias SYSTEM_SIZE = Scalar[check_system_size()]

alias RAYLIB_PATH = "/home/linuxbrew/.linuxbrew/Cellar/raylib/5.0/lib/libraylib.so"

var raylib_internal = DLHandle(RAYLIB_PATH)

var ray_lib = Raylib(raylib_internal)
var ray_lib_text = RaylibText(raylib_internal)

# get working dir
alias c_raylib_GetWorkingDirectory = fn() -> UnsafePointer[Int8]

var _get_working_dir = raylib_internal.get_function[c_raylib_GetWorkingDirectory]("GetWorkingDirectory")

fn get_working_dir() -> String:
    var working_dir = _get_working_dir()
    return StringRef(working_dir)

alias c_raylib_FileExists = fn(fileName: UnsafePointer[Int8]) -> Bool

var _file_exists = raylib_internal.get_function[c_raylib_FileExists]("FileExists")

fn file_exists(fileName: String) -> Bool:
    return _file_exists(fileName.unsafe_ptr())

alias c_raylib_GetApplicationDirectory = fn() -> UnsafePointer[Int8]

var _get_application_dir = raylib_internal.get_function[c_raylib_GetApplicationDirectory]("GetApplicationDirectory")

fn get_application_dir() -> String:
    var app_dir = _get_application_dir()
    return StringRef(app_dir)

alias c_raylib_GetDirectorypath = fn(fileName: UnsafePointer[Int8]) -> UnsafePointer[Int8]

var _get_dir_path = raylib_internal.get_function[c_raylib_GetDirectorypath]("GetDirectoryPath")

fn get_dir_path(fileName: String) -> String:
    var dir_path = _get_dir_path(fileName.unsafe_ptr())
    return StringRef(dir_path)

alias c_raylib_ChangeDirectory = fn(dir: UnsafePointer[Int8]) -> Bool

var _change_directory = raylib_internal.get_function[c_raylib_ChangeDirectory]("ChangeDirectory")

fn change_directory(dir: String) -> Bool:
    return _change_directory(dir.unsafe_ptr())