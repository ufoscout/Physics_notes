#
# Monitors the tex files and compiles on changes
# ----------------------------------------------
#
# BEWARE: it does not check for deleted files
#
# info: it requires inotify-tools

inotifywait -m -r -q --event close_write,create,modify,delete,moved_to,delete_self --format '%f' ./tex | 
while read FILE
do
  extension=${FILE: -4}
  if [ $extension == ".tex" ] 
    then
      #echo "something happened on path $FILE with extension $extension"
      ./latex_compile.sh
  fi
done
