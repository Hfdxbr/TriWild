################################################################################
include(DownloadProject)

# With CMake 3.8 and above, we can hide warnings about git being in a
# detached head by passing an extra GIT_CONFIG option
if(NOT (${CMAKE_VERSION} VERSION_LESS "3.8.0"))
    set(TRIWILD_EXTRA_OPTIONS "GIT_CONFIG advice.detachedHead=false")
else()
    set(TRIWILD_EXTRA_OPTIONS "")
endif()

# Shortcut function
function(triwild_download_project name)
    download_project(
        PROJ         ${name}
        SOURCE_DIR   ${THIRD_PARTY_DIR}/${name}
        DOWNLOAD_DIR ${THIRD_PARTY_DIR}/.cache/${name}
        QUIET
        ${TRIWILD_EXTRA_OPTIONS}
        ${ARGN}
    )
endfunction()

################################################################################

## aabbcc
function(triwild_download_aabbcc)
    triwild_download_project(aabbcc
        GIT_REPOSITORY https://github.com/Yixin-Hu/aabbcc
        GIT_TAG        7be592fba329ccfc806d8bf26675538ae5262947
    )
endfunction()


## geogram
function(triwild_download_geogram)
    triwild_download_project(geogram
        GIT_REPOSITORY https://github.com/Yixin-Hu/geogram
        GIT_TAG        b613750341a6cdd31ae8df80ecfc26ac7ca1a6ad
    )
endfunction()


## libigl
function(triwild_download_igl)
    triwild_download_project(libigl
        GIT_REPOSITORY https://github.com/libigl/libigl
        GIT_TAG        45cfc79fede992ea3923ded9de3c21d1c4faced1
    )
endfunction()


## nlopt
function(triwild_download_nlopt)
    triwild_download_project(nlopt
        GIT_REPOSITORY https://github.com/stevengj/nlopt
        GIT_TAG        37b74a8c2037eea5dc72fea7eeb9b850fa978913
    )
endfunction()

## Json
function(triwild_download_json)
    triwild_download_project(json
        GIT_REPOSITORY https://github.com/jdumas/json
        GIT_TAG        0901d33bf6e7dfe6f70fd9d142c8f5c6695c6c5b
    )
endfunction()

## GMP
function(triwild_download_gmp_win)
    triwild_download_project(gmp
        URL            https://github.com/ShiftMediaProject/gmp/releases/download/6.2.1-4/libgmp_6.2.1-4_msvc17.zip
    )
endfunction()