alias github=GitHub
alias gh=github

function GitHub()
{
  if [ ! -d .git ] ; 
    then echo "ERROR: This isnt a git directory" && return false; 
  fi
  git_url=`git config --get remote.origin.url`  
  git_branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
  if [[ $git_url == https://github* ]];
  then
    url=${git_url%.git}/tree/${git_branch}
  else
    if [[ $git_url == git@github.com* ]]
    then
      url="https://github.com/${${git_url:15}%.git}/tree/${git_branch}"
    else
      echo "ERROR: Remote origin is invalid" && return false;
    fi
  fi
  google-chrome $url
}
