# !/bin/bash
# Created by Wesley Joseph Axline
if [[ $# != 3 ]]; then
  echo "please make sure there is 3 arguements"
elif [[ $2 =~ ^[+-]?[0-9]+$ && $3 =~ ^[+-]?[0-9]+$ ]]
then
Addition(){
  let answer=$1+$2
  echo $answer
}

Subtraction() {
  let answer=$1-$2
  echo $answer
}

Multiplication() {
  let answer=$1\*$2
  echo $answer
}

Division() {
  let answer=$1/$2
  echo $answer
}

case $1 in
  +)Addition $2 $3
    ;;
  -)Subtraction $2 $3
    ;;
 \*)Multiplication $2 $3
    ;;
  /)Division $2 $3
    ;;
esac
fi
