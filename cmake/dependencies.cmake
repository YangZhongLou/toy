
function(find_depend_packages)
    set(Boost_ARCHITECTURE "-x64")

    if (WIN32)
        # can't boost using environment variable, hard coded here.
        set(Boost_FOUND true)
        set(Boost_INCLUDE_DIRS "C:/boost_1_77_0" PARENT_SCOPE)
    else()
        set(Boost_FOUND true)
        set(Boost_INCLUDE_DIRS "usr/include" PARENT_SCOPE)
    endif()
endfunction()