seg1=$(echo $1 | cut -c1 -c2 -c3 -c4)
seg2=$(echo $1 | cut -c5 -c6 -c7)
seg3=$(echo $1 | cut -c8 -c9 -c10)
owner=0
group=0
other=0

# Is directory?
if [[ $seg1 == *d* ]]; then
    echo "Directory"
else
    echo "File"
fi

###########################
######### OWNER ###########
###########################
if [[ $seg1 == *r* ]]; then
    let "owner += 4"
fi
if [[ $seg1 == *w* ]]; then
    let "owner += 2"
fi
if [[ $seg1 == *x* ]]; then
    let "owner += 1"
fi

###########################
######### GROUP ###########
###########################
if [[ $seg2 == *r* ]]; then
    let "group += 4"
fi
if [[ $seg2 == *w* ]]; then
    let "group += 2"
fi
if [[ $seg2 == *x* ]]; then
    let "group += 1"
fi

###########################
######### OTHER ###########
###########################
if [[ $seg3 == *r* ]]; then
    let "other += 4"
fi
if [[ $seg3 == *w* ]]; then
    let "other += 2"
fi
if [[ $seg3 == *x* ]]; then
    let "other += 1"
fi


echo $owner$group$other

exit 0
