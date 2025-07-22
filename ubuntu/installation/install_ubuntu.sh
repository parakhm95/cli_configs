# Install zsh first
#!/bin/zsh

# Check current shell
current_shell=$(basename "$SHELL")

echo "Current shell: $current_shell"

if [[ "$current_shell" == "zsh" ]]; then
    echo "You are already using Zsh."
else
    echo "---------------Installing zsh---------------"
    sudo apt install zsh
    chsh -s $(which zsh)
    printf "Please log out and log back in, and then run the script again"
    # Adding cli config to zshrc
    echo "--------------Adding shell_pmg to zshrc-----------------"
    cd /tmp
    echo 'source ~/git/cli_configs/ubuntu/shell_pmg.sh' >> ~/.zshrc
    exit 0
fi


echo "------------------Installing nodejs-------------------"
# Check if nodejs is already installed
if command -v node &> /dev/null; then
    echo "Node.js is already installed."
else
    echo "Installing Node.js..."
    cd /tmp
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
    \. "$HOME/.nvm/nvm.sh"
    nvm install 22
fi

echo "------------------Install clangd-----------------------"
# Check if clangd is already installed
if command -v clangd &> /dev/null; then
    echo "Clangd is already installed."
else
    echo "Installing Clangd..."
    sudo apt install clangd-18
    sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-18 100
fi


echo "------------------Installing neovim---------------------"
# Check if neovim is already installed
# If not, install it
if command -v nvim &> /dev/null; then
    echo "Neovim is already installed."
else
    echo "Neovim is not installed. Installing now..."
    cd /tmp
    sudo apt-get install ninja-build gettext cmake curl build-essential
    cd ~/git
    git clone https://github.com/neovim/neovim
    cd neovim
    git checkout stable
    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
fi

echo "----------------Installing tree-sitter-cli-----------------"
# Check if tree-sitter-cli is already installed
if command -v tree-sitter &> /dev/null; then
    echo "Tree-sitter CLI is already installed."
else
    echo "Installing Tree-sitter CLI..."
    npm install -g tree-sitter-cli
fi

echo "----------------Installing ripgrep-----------------------"
# Check if ripgrep is already installed
if command -v rg &> /dev/null; then
    echo "Ripgrep is already installed."
else
    echo "Installing Ripgrep..."
    sudo apt install ripgrep
fi


# Create a symbolic link for neovim configuration
cd ~/.config
ln -s ~/git/cli_configs/ubuntu/nvim .







echo "-------------------Installing vim-plug------------------"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'






echo "----------------Installing TMUX------------------------"
# Check if tmux is already installed
if command -v tmux &> /dev/null; then
    echo "TMUX is already installed."
else
    echo "Installing TMUX..."
    sudo apt install libevent-dev ncurses-dev build-essential bison pkg-config
    cd ~/git
    git clone https://github.com/tmux/tmux.git
    cd tmux
    git checkout 3.0a
    sh autogen.sh
    ./configure
    make && sudo make install
fi
# Create a symbolic link for tmux configuration
cd 
ln -s ~/git/cli_configs/ubuntu/tmux/.tmux.conf .

echo "-----------------Installing Tmux Plugin Manager (TPM)----------------"
# Check if TPM is already installed
if [ -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "TPM is already installed."
else
    echo "Installing TPM..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    echo "TPM installed successfully."
fi



echo "------------------Installing i3------------------------"
# Check if i3 is already installed
if command -v i3 &> /dev/null; then
    echo "i3 is already installed."
else
    echo "Installing i3..."
    cd /tmp
    /usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2025.03.09_all.deb keyring.deb SHA256:2c2601e6053d5c68c2c60bcd088fa9797acec5f285151d46de9c830aaba6173c
    sudo apt install ./keyring.deb
    echo "deb [signed-by=/usr/share/keyrings/sur5r-keyring.gpg] http://debian.sur5r.net/i3/ $(grep '^VERSION_CODENAME=' /etc/os-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
    sudo apt update
    sudo apt install i3
fi
cd ~/.config
ln -s ~/git/cli_configs/ubuntu/i3 .

echo "--------------------Installing lm-sensors-----------------"
# Check if lm-sensors is already installed
if command -v sensors &> /dev/null; then
    echo "lm-sensors is already installed."
else
    echo "Installing lm-sensors..."
    sudo apt install lm-sensors
    sudo sensors-detect
fi

echo "---------------------------Installing pamixer---------------------"
# Check if pamixer is already installed
if command -v pamixer &> /dev/null; then
    echo "pamixer is already installed."
else
    echo "Installing pamixer..."
    sudo apt install pamixer
fi

echo "---------------------Installing i3blocks-----------------"
# Check if i3blocks is already installed
if command -v i3blocks &> /dev/null; then
    echo "i3blocks is already installed."
else
    echo "Installing i3blocks..."
    # cd ~/git
    # git clone https://github.com/vivien/i3blocks
    # cd i3blocks
    # ./autogen.sh
    # ./configure
    # make
    # sudo make install
    sudo apt install i3blocks
fi
cd ~/.config
ln -s ~/git/cli_configs/ubuntu/i3blocks .

echo "------------------Installing Ranger--------------------"
# Check if ranger is already installed
if command -v ranger &> /dev/null; then
    echo "Ranger is already installed."
else
    echo "Installing Ranger..."
    cd ~/git
    git clone https://github.com/ranger/ranger.git
    cd ranger
    sudo make install
fi


echo "------------------Installing Keychain------------------"
# Check if keychain is already installed
if command -v keychain &> /dev/null; then
    echo "Keychain is already installed."
else
    echo "Installing Keychain..."
    sudo apt install keychain
fi

echo "------------------Installing xclip-----------------------"
# Check if xclip is already installed
if command -v xclip &> /dev/null; then
    echo "xclip is already installed."
else
    echo "Installing xclip..."
    sudo apt install xclip
fi

echo "-------------------Installing ncdu---------------------"
# Check if ncdu is already installed
if command -v ncdu &> /dev/null; then
    echo "ncdu is already installed."
else
    echo "Installing ncdu..."
    sudo apt install ncdu
fi

echo "--------------------Installing btop---------------------"
# Check if btop is already installed
if command -v btop &> /dev/null; then
    echo "btop is already installed."
else
    echo "Installing btop..."
    cd /tmp
    # Check architecture
    if [[ "$(uname -m)" == "x86_64" ]]; then
        wget https://github.com/aristocratos/btop/releases/download/v1.4.3/btop-x86_64-linux-musl.tbz
        tar -xvf btop-x86_64-linux-musl.tbz
    elif [[ "$(uname -m)" == "aarch64" ]]; then
        wget https://github.com/aristocratos/btop/releases/download/v1.4.3/btop-aarch64-linux-musl.tbz
        tar -xvf btop-aarch64-linux-musl.tbz
    else
        echo "Unsupported architecture: $(uname -m)"
        exit 1
    fi
    cd btop
    sudo make install
fi

echo "--------------------Installing rofi---------------------"
# Check if rofi is already installed
if command -v rofi &> /dev/null; then
    echo "Rofi is already installed."
else
    echo "Installing Rofi..."
    sudo apt install rofi
fi
cd ~/.config
ln -s ~/git/cli_configs/ubuntu/rofi .

echo "------------------Installing fzf---------------------"
# Check if fzf is already installed
if command -v fzf &> /dev/null; then
    echo "fzf is already installed."
else
    echo "Installing fzf..."
    sudo apt install fzf
fi

echo "--------------------Installing ROS1---------------------"
# Check if Ubuntu version is 20.04
if [[ $(lsb_release -rs) != "20.04" ]]; then
    echo "Not installing ROS1 as the Ubuntu version is not 20.04."
else
    echo "Ubuntu version is 20.04, proceeding with ROS1 installation."
    # Check if ROS1 is already installed
    if command -v roscore &> /dev/null; then
        echo "ROS1 is already installed."
    else
        echo "Installing ROS1..."
        sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
        curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
        sudo apt update
        sudo apt install ros-noetic-desktop-full
        echo "source /opt/ros/noetic/setup.bash" >> ~/.zshrc
    fi
fi

echo "------------------Installing tig---------------------"
# Check if tig is already installed
if command -v tig &> /dev/null; then
    echo "tig is already installed."
else
    echo "Installing tig..."
    sudo apt install tig
fi

echo "-------------------Installing nerdfonts-----------------"
cd /tmp
mkdir -p ~/.fonts/RobotoMono
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/RobotoMono.tar.xz
tar -xf RobotoMono.tar.xz -C ~/.fonts/RobotoMono
fc-cache -fv
echo "--------------------Installing Kitty---------------------"
# Check if kitty is already installed
if command -v kitty &> /dev/null; then
    echo "Kitty is already installed."
else
    echo "Installing Kitty..."
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
fi
echo "------------------------------DONE----------------------"
