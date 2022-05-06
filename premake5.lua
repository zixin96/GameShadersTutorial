workspace "Panda"
	architecture "x64"
	startproject "Panda"

	configurations
	{
		"Debug",
		"Release"
	}
	
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "Panda"