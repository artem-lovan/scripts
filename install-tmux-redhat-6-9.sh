## you may need sudo permission to execute some commands or swith to root
# if installed old version by yum, remove it first
yes Y | sudo yum remove tmux libevent libevent-devel libevent-headers

# install deps
yes Y | sudo yum install gcc kernel-devel make ncurses-devel

# create temp dir
mkdir /tmp/for-latest-tmux

# downloads libenvent and install
cd /tmp/for-latest-tmux/ && mkdir ./libenvent && cd ./libenvent
wget https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz
tar -zxvf libevent-2.0.22-stable.tar.gz
cd libevent-2.0.22-stable/
./configure && make
sudo make install

# downloads tmux and install
cd /tmp/for-latest-tmux/ && mkdir ./tmux && cd ./tmux
wget https://github.com/tmux/tmux/releases/download/2.2/tmux-2.2.tar.gz
tar -zxvf tmux-2.2.tar.gz
cd tmux-2.2/
./configure && make
sudo make install

# kill the running tmux
# close your terminal window (flushes cached tmux executable)
# open new shell and check tmux version
pkill tmux
tmux -V

# remove temp dir if needed
rm -rf /tmp/for-latest-tmux
