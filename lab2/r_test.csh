#!/bin/csh
set O = tact
@ scount = 0
@ ecount = 0
@ tcount = 0

if ( -e r_test.log ) rm r_test.log

foreach F ( tinp/* )
    set T = {$F:t}
    set switch = `cat $F`
    perl rndpassword.pl $switch >! $O/$T 
    diff tact/$T texp/$T >>& /dev/null
    if ( $status == 0 ) then
        @ scount ++   
    else 
	set ACT = `cat tact/$T`
	set EXP = `cat texp/$T`
        ( echo "Input: rndpassword $switch" ) >> r_test.log 
	( echo "Actual: $ACT" ) >> r_test.log 
	( echo "Expected: $EXP" ) >> r_test.log
        ( echo "=====END-ERROR=====" ) >> r_test.log
        @ ecount ++
    endif
    @ tcount ++
end
    if ( $ecount > 0 ) set status = 1
    if ( $status == 0 ) then
        echo 'Success!'
        echo 'Total Cases:' $tcount
    else
        echo $scount ' Successful, ' $ecount ' Errors '
        echo 'Refer to logfile: r_test.log'
    endif
    
        
