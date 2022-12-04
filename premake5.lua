-- Include conan generated scriot
include("conanbuildinfo.premake.lua")

workspace "StringHasher"
    -- Use conan generated script
    conan_basic_setup()
    configurations { "Debug", "Release" }

    -- Project

    project "StringHasher"
        kind "ConsoleApp"
        language "C++"
        targetdir "bin/%{cfg.buildcfg}"
        objdir "obj/%{cfg.buildcfg}"
        location "src"
        debugdir "app"

        linkoptions { conan_exelinkflags }

        files { "src/**.h", "src/**.cpp" }

        filter "configurations:Debug"
            defines { "DEBUG" }
            symbols "On"

        filter "configurations:Release"
            defines { "NDEBUG" }
            optimize "On"


