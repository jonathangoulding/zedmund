source repos.sh

cd ..

ORGANIZATION=""

for repository in "${repositories[@]}"
do
    echo "#################### $repository ####################"
    git clone git@github.com:$ORGANIZATION/$repository.git
done
