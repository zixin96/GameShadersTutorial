project "Panda"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++14"
	staticruntime "off"
	
	targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
	objdir ("../bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.cxx",
	}

	libdirs
	{
		"vendor/libs"
	}

	includedirs
	{
		"src",
		"vendor/includes"
	}

	links 
	{
		"libp3framework.lib",
		"libpanda.lib",
		"libpandaexpress.lib",
		"libp3dtool.lib",
		"libp3dtoolconfig.lib",
		"libpandaphysics.lib",
		"libp3openal_audio.lib",
	}

	filter "system:windows"
		systemversion "latest"
		postbuildcommands
		{
			("{COPY} vendor/dlls/ ../bin/" .. outputdir .. "/Panda")
		}
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
        optimize "on"
