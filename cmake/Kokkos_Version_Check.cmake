function(check_minimum_required_kokkos kokkos_required_version)
    if(${Kokkos_VERSION} STREQUAL "")
        message(FATAL_ERROR "Kokkos_VERSION not set. Cannot check Kokkos satisfies the minimum required version.")
    else()
        if(${Kokkos_VERSION} VERSION_GREATER_EQUAL ${kokkos_required_version})
            message(STATUS "Found Kokkos version ${Kokkos_VERSION} at ${Kokkos_DIR}")
        else()
            message(FATAL_ERROR "Kokkos FFT ${KOKKOSFFT_VERSION} requires ${kokkos_required_version} or later.")
        endif()
    endif()
endfunction()