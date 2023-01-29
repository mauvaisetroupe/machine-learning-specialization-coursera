
# create folders

while read p; do mkdir "$p"; done < video-list.txt

# Rename screenshots

OIFS="$IFS"
IFS=$'\n'

for f in $(find . -name *.png); do mv "$f" "${f// /_}"; done

for f in $(find . -name *.png); do mv "$f" "${f//Screenshot_from_/img_}"; done

IFS="$OIFS"



# Generate image md

run in folder /image parent

for f in $(find . -name *.png); do echo "!""[slide](${f/Screenshot_from_/img_})"; done
for f in $(find . -name *.png); do echo "> <img src=\"${f/Screenshot_from_/img_}\">"; done
