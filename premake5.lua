project "GLFW"

	targetname		"glfw"
	language		"C"
	kind			"StaticLib"
	toolset			"msc"
	staticruntime	"on"

	targetdir	"../../../bin/%{cfg.platform}/%{cfg.buildcfg}/%{prj.name}"
	objdir		"../../../bin/intermediates/%{cfg.platform}/%{cfg.buildcfg}/%{prj.name}"

	files
	{
		"src/win32_platform.h"
		,"src/win32_joystick.h"
		,"src/wgl_context.h"   
		,"src/egl_context.h"   
		,"src/osmesa_context.h"
		,"src/win32_init.c"    
		,"src/win32_joystick.c"
		,"src/win32_monitor.c" 
		,"src/win32_time.c"    
		,"src/win32_thread.c"  
		,"src/win32_window.c"  
		,"src/wgl_context.c"   
		,"src/egl_context.c"   
		,"src/osmesa_context.c"
		,"src/internal.h"
		,"src/mappings.h"
		,"src/context.c"
		,"src/init.c"
		,"src/input.c"
		,"src/monitor.c"
		,"src/vulkan.c"
		,"src/window.c"
		,"glfw_config.h"
		,"include/GLFW/glfw3.h"
		,"include/GLFW/glfw3native.h"
	}
	
	includedirs
	{
		"include"
	}

	defines
	{
		"_GLFW_WIN32"
	}
	
	postbuildcommands
	{
		(" {COPY} %{cfg.buildtarget.relpath} \"../../../bin/%{cfg.platform}/%{cfg.buildcfg}/SampleApplication/\" ")
	}

	systemversion	"latest"
	cppdialect		"C++17"
	architecture	"x64"
	optimize		"Full"
	runtime			"Release"
	symbols			"off"