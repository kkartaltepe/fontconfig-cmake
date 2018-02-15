set(sub_dir_name src)

set(PUBLIC_FILES 
    ${CMAKE_SOURCE_DIR}/fontconfig/fontconfig.h
    ${CMAKE_SOURCE_DIR}/src/fcdeprecate.h
    ${CMAKE_SOURCE_DIR}/fontconfig/fcprivate.h)
add_custom_command(OUTPUT fcalias.h fcaliastail.h
    COMMAND sh ${CMAKE_CURRENT_SOURCE_DIR}/makealias ${CMAKE_SOURCE_DIR}/src fcalias.h fcaliastail.h ${PUBLIC_FILES}
    DEPENDS ${CMAKE_SOURCE_DIR}/src/fcdeprecate.h ${CMAKE_SOURCE_DIR}/fontconfig/fontconfig.h  ${CMAKE_SOURCE_DIR}/fontconfig/fcprivate.h 
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})

set(PUBLIC_FT_FILES ${CMAKE_SOURCE_DIR}/fontconfig/fcfreetype.h)
add_custom_command(OUTPUT fcftalias.h fcftaliastail.h
    COMMAND sh ${CMAKE_CURRENT_SOURCE_DIR}/makealias ${CMAKE_SOURCE_DIR}/src fcftalias.h fcftaliastail.h ${PUBLIC_FT_FILES}
    DEPENDS ${CMAKE_SOURCE_DIR}/fontconfig/fcfreetype.h
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})

set( fontconfig_SRCS
    fcarch.c
    fcatomic.c
    fcblanks.c
    fccache.c
    fccfg.c
    fccharset.c
    fccompat.c
    fcdbg.c
    fcdefault.c
    fcdir.c
    fcformat.c
    fcfreetype.c
    fcfs.c
    fcinit.c
    fclang.c
    fclist.c
    fcmatch.c
    fcmatrix.c
    fcname.c
    fcobjs.c
    fcpat.c
    fcrange.c
    fcserialize.c
    fcstat.c
    fcstr.c
    fcweight
    fcxml.c
    ftglue.c
    # generated
    fcaliastail.h
    fcalias.h
    fcftaliastail.h
    fcftalias.h
)

include_directories(
${CMAKE_CURRENT_BINARY_DIR}
${CMAKE_CURRENT_BINARY_DIR}/../fc-lang
)

add_definitions(-DXML_STATIC)
add_library( fontconfig STATIC ${fontconfig_SRCS} )
set_target_properties(fontconfig PROPERTIES OUTPUT_NAME fontconfig )

# target_link_libraries( fontconfig ${FREETYPE_LIBRARIES})
# target_link_libraries( fontconfig ${EXPAT_LIBRARY} )

install( TARGETS fontconfig RUNTIME DESTINATION bin LIBRARY DESTINATION lib ARCHIVE DESTINATION lib )

