# If this is the root of project:
while [ 0 = 0 ]; do
  if [ -d "./.git" ]; then break; fi; cd ..
done
###########################################################
[ -d .dev-info ] || mkdir -p .dev-info
cd .dev-info
if [ ! -f info ]; then echo "0.0.0.1" > info ;
else 
  old_version=$(head -n 1 info); echo $old_version
  # Split AU_NAME into prefix and version number
  IFS='-' read -ra PREFIX_VER <<< "$old_version"
  PREFIX=${PREFIX_VER[0]}
  VERSION=${PREFIX_VER[1]}
  # Split version number into major, minor, micro, and build
  IFS='.' read -ra VER <<< "$VERSION"
  major=${VER[0]}; minor=${VER[1]}; micro=${VER[2]}; build=${VER[3]}
  echo "Prefix: $PREFIX"

  if [ $2 -eq 0 ]; then ((build++)); echo $build; fi
  if [ $1 == "push" ]; then 
    if [ $2 == "" ]
  fi 
  echo "Major: $major"
  echo "Minor: $minor"
  echo "Micro: $micro"
  echo "Build: $build"
fi
