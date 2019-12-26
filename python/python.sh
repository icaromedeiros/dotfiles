# Installs latest Python 3 and pyenv
brew install python3 && brew install pyenv

# Install brewed Python last version in pyenv
LAST_BREWED_PY=$(ls $(brew --cellar python) -rt | tail -1)
ln -sf ${LAST_BREWED_PY} ~/.pyenv/versions

# Add pyenv-virtualenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

# Last Python 3 version supported by Azure Functions
pyenv install -s 3.6.9