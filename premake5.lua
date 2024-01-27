project "coro"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"

	location ("%{wks.location}/%{prj.name}")
	targetdir ("%{LibraryTgtDir.coro}")
	objdir ("%{LibraryObjDir.coro}")

	files
	{
		"*.h",
		-- "*.cpp"
	}

	includedirs
	{
		-- "%{IncludeDir.HelperFunctions}",
	}

	libdirs
	{
		-- "%{LibraryTgtDir.HelperFunctions}",
	}

	links
	{
		-- "HelperFunctions",
	}



	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"