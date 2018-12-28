for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
        source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
        source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
        complete -o default -o nospace -F _git g;
fi;

export PGDATA=/usr/local/var/postgres

export PATH="$HOME/.rbenv/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"

export ANDROID_HOME=/usr/local/share/android-sdk

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"