
# create folders

while read p; do mkdir "$p"; done < video-list.txt

# Rename screenshots

for f in $(find . -name *.png); do mv "$f" "${f// /_}"; done

# Generate image md

for f in $(find . -name *.png); do echo "!""[slide](${f/Screenshot_from_/img_})"; done
