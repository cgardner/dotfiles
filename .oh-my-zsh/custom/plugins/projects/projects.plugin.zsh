export WORKING_DIR="$HOME/src"

_projects () {
    _files -W $WORKING_DIR -/;
}

function cproj() {
    local PROJECT_NAME="${1}"
    local PROJECT_DIR="$WORKING_DIR/$PROJECT_NAME/repo"

    if [ ! -d "$PROJECT_DIR" ] ; then
        echo "Project $PROJECT_NAME does not exist"
        return
    fi

    cd $PROJECT_DIR;
    tmux rename-window $PROJECT_NAME
}

mkproj() {
    local REPO_URL="${1}"
    local PROJECT_DIR="$WORKING_DIR/`basename "$REPO_URL" .git`"

    if [ -d "$PROJECT_DIR" ]; then
        echo "Project Already Exists";
        cd $PROJECT_DIR
        return
    fi

    mkdir -p $PROJECT_DIR
    git clone $REPO_URL $PROJECT_DIR/repo;
    cd $PROJECT_DIR/repo

	which git-flow
	if [ $? -eq 0 ]; then
		echo -e "master\ndevelop\nfeature/\nrelease/\nhotfix/\nbugfix/\n\n" | git flow init -f
	fi

	curl http://stash.ds.adp.com/projects/CREDIT/repos/checkstyle/browse/hooks/commit-msg?raw > .git/hooks/commit-msg
	curl http://stash.ds.adp.com/projects/CREDIT/repos/checkstyle/browse/hooks/pre-push?raw > .git/hooks/pre-push
    chmod a+x .git/hooks/*
}

compdef _projects cproj
alias cproj='cproj'
