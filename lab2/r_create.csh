#!/bin/csh

set E = texp
set I = tinp
set quit = "woo"

while ( $quit != "quit" )
    set input = "$<"
    if ( "$input" != quit ) then
        set output = `echo $input| sed "s/ //g" `
        ( echo $input ) >! $I/test.$output
    else
        set quit = $input
    endif
end
