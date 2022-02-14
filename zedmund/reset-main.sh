source repos.sh

cd ..

reset_project() {
      echo "#################### $1 ####################"
      cd "$1" || exit
      git stash
      git checkout main
      git fetch origin
      git reset --hard origin/main
      git clean -d -f
      git pull
      npm ci
      cd - > /dev/null || exit
}

for repository in "${repositories[@]}"
do
  reset_project "$repository" &
done

wait
