project 'unittest-cpp-app'
    kind 'ConsoleApp'
    language 'C++'
    targetdir '../build/bin/%{cfg.buildcfg}'

    includedependencies {
    }

    usedependencies {
        'unittest-cpp',
    }

    files {
        './**.h',
        './**.cpp'
    }

    defines { 'UNITTEST_NO_EXCEPTIONS', }
