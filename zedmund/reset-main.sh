source repos.sh

cd ..

for repository in "${repositories[@]}"
do
    echo "#################### $repository ####################"
    cd "$repository" || exit
    git stash
    git checkout main
    git fetch origin
    git reset --hard origin/main
    git clean -d -f
    git pull
    npm ci
    cd - > /dev/null
done
