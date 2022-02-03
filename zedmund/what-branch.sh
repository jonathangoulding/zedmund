source ./repos.sh

echo "Repos on branches"
echo "-----------------"
cd ..
for repository in "${repositories[@]}"
do
    cd "$repository" || exit
    branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
     if [ $branch != "main" ]
        then
          echo "Branch: $branch Repo: $repository" | column -tc2
    fi
    cd - > /dev/null
done

