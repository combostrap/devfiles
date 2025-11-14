# Repo Scripts


## About
Common scripts used in Combostrap repository

## Usage Steps

### Add it as submodule

Add it as submodule in your repo

```bash
git submodule add https://github.com/combostrap/repo-scripts.git .repo-scripts
```

### Project Env
 
Project Env in [.envrc](.envrc) (used in scripts)
```bash
echo "Project: "
export PROJECT_ORGANISATION_NAME="combostrap"
echo "   Organization Name : $PROJECT_ORGANISATION_NAME"
export PROJECT_ROOT="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo "   Project Root      : $PROJECT_ROOT"
```

### Git Config

git config in [.envrc](.envrc)
```bash
.repo-scripts/git/config
```

### Maven scripts

maven scripts in [.envrc](.envrc)
```bash
export PATH="$PATH:$PWD/.repo-scripts/maven"
```
