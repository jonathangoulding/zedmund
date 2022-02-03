# zedmund
Scripts to help refresh and reset git branches.

## Setup

Pull the repo into the top directory of your projects. 

Add the repos to `repos.sh`. For repos in sub folders add the folder to the path.

```
# Example repos.sh
declare -a repositories=(
"api"
"ui"
"testing/api-testing"
)
```

Run the `reset-main.sh` script to reset all the branches to main. 


## WIP

- [ ] checkout feature branch and select specific repos
- [ ] pull repositories from the repo list (Simple git pull with the git path variables set / looped)

