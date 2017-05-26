-- premake5.lua
workspace "TowerDefense"
   configurations { "Debug", "Release" }
   location "build"

project "towerdefense"
   kind "ConsoleApp"
   language "C++"
   targetdir "bin/%{cfg.buildcfg}"
   location "build"
   links { "sfml-graphics", "sfml-window", "sfml-system", "sfml-audio" }
   files { "**.hpp", "**.cpp" }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
