vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO gnustep/libobjc2
    REF "v${VERSION}"
    SHA512 a93c385f9ad53fce0f736088c3a18e72119c0128690725e435a35fe4250830d13e18899f98c7d80e6ea41cbfe1404f055d9d6c3d891ad7c770d47dcd0244fc7f
    PATCHES ${CURRENT_PORT_DIR}/prefer-system-provided-robin-map.patch
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/COPYING")