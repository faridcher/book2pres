#! /usr/bin/bash
# cd 4/
# stdin=pdf.txt

csplit -z --suppress-matched - '//' '{*}' &> /dev/null

for i in xx??; do # xx[[:digit:]][[:digit:]]
  # echo $i
  sed -E '/^[[:digit:]]+ +GIS Fundamentals$/d' $i |\
  # EQUATIONS
  # Bolstad ch4/3/*
  # there are between 8 to 15 spaces before an EQN
  # xx03 1) eqn (#.#)  2nd column
  # xx04 2) eqn (#.#)$ 			(no action required; awk considers as first column; but I add \t to exclude them)
   sed -E 's;^ {4,15}[[:graph:]]+.+\([[:digit:]]+\.[[:digit:]]+\);&\t;' |\
    # xx03 3) 1st col   eqn (#.#)$
    # xx03 3) 1st col   2nd column
    # if line is not affected by previous REGEX. affect the above eqn and normal cases
    sed -E '/\t/!s;([[:graph:]]) {2,};&\t;' |\
    # xx03 4)           eqn (#.#)$
    # xx03 4)           normal text$
    sed -E '/\t/!s;^ {16,};&\t;' |\
    # concat two columns of text
  gawk -F $'\t' '{ x1=x1"\n"$1; x2=x2"\n"$2 } END { print(x1,"\n",x2) }'  > $i-sp
done

cat xx??-sp #> onecol.txt
