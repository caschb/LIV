function(LIV_add_option name description default)
    set(LIV_${name} ${default} CACHE STRING ${description})
    set_property(CACHE LIV_${name} PROPERTY STRINGS "ON;OFF")
endfunction()