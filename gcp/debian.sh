


clear
echo
echo "#############################################################"
echo "#install zsh                                                #"
echo

# https://blog.csdn.net/qierkang/article/details/85941316
 echo $SHELL;
 cat /etc/shells ;
sudo apt install  -y  zsh;
 chsh -s /bin/zsh;
sudo apt install -y wget git ;
 wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh;


cd ~/.oh-my-zsh/plugins;
wget http://mimosa-pudica.net/src/incr-0.2.zsh;
source incr*.zsh;


cd ~/.oh-my-zsh/plugins;
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;

sed -i 's\robbyrussell\cypher\g' ~/.zshrc;
sed -i 's\(git)\(git history history-substring-search node npm wd web-search last-working-dir zsh-autosuggestions)\g' ~/.zshrc;
source ~/.zshrc;



clear
echo
echo "#############################################################"
echo "#install tmux                                               #"
echo
 

sudo apt-get  install tmux -y




#  更新
apt-get instal -y git update 

# install python3 （要调整）
sudo apt install -y python3
sudo apt install -y python3-pip



# install golang 

sudo apt install -y golang

#  install docker 
# Dockerの公式GPG鍵を取得
# Dockerの以前バージョンがインストールされている場合はアンインストールしてください。

apt remove docker docker-engine docker.io containerd runc

# 必要なパッケージ、更新を行います。

# パッケージの更新
sudo apt update

# パッケージの取得
sudo apt install ca-certificates curl gnupg lsb-release

# Dockerの公式GPG鍵を追加します。

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# リポジトリのセットアップ
$ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Dockerのインストール
apt update
apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
