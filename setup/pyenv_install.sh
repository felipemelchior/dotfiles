# The definitive guide to setup my Python workspace with ubuntu and ZSH
# Author: Henrique Bastos <henrique@bastos.net>
# Modified by Wellington Moraes <wellpunk@gmail.com>

PY3=3.12.4
PY2=2.7.18
PY3TOOLS="poetry ipython youtube-dl pytest black flake8 pylint requests colorama virtualenvwrapper"
PY2TOOLS="rename"

VENVS=~/.ve
PROJS=~/Projects

# Install Pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
cat <<"EOT" >>$HOME/.zshrc

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
EOT

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
git clone https://github.com/pyenv/pyenv-update.git $(pyenv root)/plugins/pyenv-update
# All my virtualenvs are here...
mkdir -p $VENVS

# All my projects are here...
mkdir -p $PROJS

# Setup .zshrc
cat <<"EOT" >>$HOME/.zshrc

# Virtualenv-wrapper directories
export WORKON_HOME=~/.ve
export PROJECT_HOME=~/Projects
EOT

cat <<"EOT" >>$HOME/.zshrc

# Pyenv initialization
eval "$(pyenv init -)"
eval "$(pyenv init --path)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
EOT

# Initialize pyenv
eval "$(pyenv init -)"
if which pyenv-virtualenv-init >/dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Install Python versions
pyenv install $PY3
pyenv install $PY2

# Prepare virtual environments
pyenv virtualenv $PY3 tools39
pyenv virtualenv $PY2 tools27

~/.pyenv/versions/$PY3/bin/pip install --upgrade pip
~/.pyenv/versions/$PY2/bin/pip install --upgrade pip
~/.pyenv/versions/tools39/bin/pip install --upgrade pip
~/.pyenv/versions/tools27/bin/pip install --upgrade pip

# Install Python3 Tools
~/.pyenv/versions/tools39/bin/pip install $PY3TOOLS

# Install virtualenvwrapper
~/.pyenv/versions/tools39/bin/pip install virtualenvwrapper

cat <<"EOT" >>$HOME/.zshrc

# Virtualenv Wrapper initialization
export VIRTUALENVWRAPPER_PYTHON=$(which python3)
source ~/.pyenv/versions/tools39/bin/virtualenvwrapper.sh
EOT

# Install Python2 Tools
~/.pyenv/versions/tools27/bin/pip install $PY2TOOLS

# Protect lib dir for global interpreters
chmod -R -w ~/.pyenv/versions/$PY2/lib/
chmod -R -w ~/.pyenv/versions/$PY3/lib/

# Setup path order
pyenv global $PY3 $PY2 tools39 tools27

# Check everything
pyenv which python | grep -q "$PY3" && echo "✓ $PY3"
pyenv which python2 | grep -q "$PY2" && echo "✓ $PY2"
pyenv which youtube-dl | grep -q "tools39" && echo "✓ tools39"
pyenv which rename | grep -q "tools27" && echo "✓ tools27"

echo "Done! Restart the terminal."
