# WSL

## Setup

### WSL Config `/etc/wsl.conf`

1. Run `./install` or manually copy the file `files/unix_linux_wsl/wsl.conf` to `/etc/wsl.conf`
2. Run a  `cmd.exe` as Admin
3. Restart WSL via `net stop LxssManager` + `net start LxssManager`

### Updated nano (>=3.2)

This may be required to support all custom syntax highlighting 

```bash
sudo apt install libncursesw5-dev
cd ~
wget https://www.nano-editor.org/dist/v3/nano-3.2.tar.gz
extract nano-3.2.tar.gz
cd nano-3.2
./configure
make
sudo make install
cd ..
rm -rf nano-3.2
```

