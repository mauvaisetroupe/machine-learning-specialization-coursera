OIFS="$IFS"
IFS=$'\n'


for f in $(find . -name *.png); do mv "$f" "${f// /_}"; done
for f in $(find . -name *.png); do mv "$f" "${f//Screenshot_from_/img_}"; done
for f in $(find . -name *.png); do echo "> <img src=\"$f\">"; done

IFS="$OIFS"
