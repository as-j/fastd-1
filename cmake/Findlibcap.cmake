FIND_PATH(LIBCAP_INCLUDE_DIR sys/capability.h)
FIND_LIBRARY(LIBCAP_LIBRARY NAMES cap)

IF (LIBCAP_INCLUDE_DIR AND LIBCAP_LIBRARY)
   SET(LIBCAP_FOUND TRUE)
ENDIF (LIBCAP_INCLUDE_DIR AND LIBCAP_LIBRARY)

IF (LIBCAP_FOUND)
   IF (NOT LIBCAP_FIND_QUIETLY)
      MESSAGE(STATUS "Found libcap: ${LIBCAP_LIBRARY}; include path: ${LIBCAP_INCLUDE_DIR}")
   ENDIF (NOT LIBCAP_FIND_QUIETLY)
ELSE (LIBCAP_FOUND)
   IF (LIBCAP_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find libcap")
   ENDIF (LIBCAP_FIND_REQUIRED)
ENDIF (LIBCAP_FOUND)

mark_as_advanced(LIBCAP_INCLUDE_DIR LIBCAP_LIBRARY)
