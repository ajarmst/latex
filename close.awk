#!/usr/local/bin/gawk -f
BEGIN {print "Closing Issues"}
{
    print "Closing ", $1, " - Issue ", $2
    system ("git config ghi.repo NAIT-CNT-CMPE1700/" $1)
    system ("ghi close " $2)
}
END{print "- DONE -"}
