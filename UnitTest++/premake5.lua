project 'unittest-cpp'
    kind 'StaticLib'
    language 'C++'
    targetdir '../build/bin/%{cfg.buildcfg}'

    includedependencies {
    }

    usedependencies {
    }

    files {
        './**.h',
        './**.cpp',
    }

    filter { 'system:not windows'}
        excludes {
            './Win32/**.h',
            './Win32/**.cpp',
        }
    filter { 'system:not posix'}
        excludes {
            './Posix/**.h',
            './Posix/**.cpp',
        }
    filter {}

    filter { 'system:windows' }
        defines { '_CRT_SECURE_NO_WARNINGS', }
    filter {}

    defines { 'UNITTEST_NO_EXCEPTIONS', }
