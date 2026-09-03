clear
sudo lynis audit system --quiet
reboot
sudo lynis audit system --skip-plugins --quiet
sudo lynis audit system --quiet
sudo grep -E "Warning|Suggestion" /var/log/lynis-report.dat
sudo cat /var/log/lynis.log | grep -E "WARNING|SUGGESTION"
sudo lynis audit system --quick
sudo less /var/log/lynis-report.dat | grep "suggestion"
sudo cat /var/log/lynis-report.dat | grep "suggestion"
sudo pacman -S arch-audit
arch-audit
sudo pacman -Syu
sudo pacman -Syyu
sudo pacman -S rkhunter
sudo rkhunter --check --sk
sudo tail -n 50 /var/log/rkhunter.log
systemctl suspend
pacman -Qn
clear
pacman -Qent
pacman -Qen
clear
pacman -Qen
pacman -Qen | wc -l
sudo pacman -Rns wofi
grep "installed" /var/log/pacman.log | grep -v "installed.*as a dependency"
sudo pacman -S wtype
sudo pacman -S waybar
sudo pacman -S nwg-look
sudo pacman -S noto-font-cjk
sudo pacman -S noto-fonts-cjk
sudo pacman -S cava
cava
systemctl suspend
systemctl suspend
timedatectl
timedatectl-set-timezone Asia/Makassar
timedatectl set-timezone Asia/Makassar
clear
systemctl suspend
sudo pacman -S cliphist 
cliphist wipe
cliphist wipe
systemctl suspend
reboot
cliphist wipe
systemctl suspend
sudo pacman -S llvm
cd Documents 
ls
cd Documents && git clone https://github.com/mozilla-firefox/firefox.git
git clone https://github.com/mozilla-firefox/firefox.git
cd firefox
cd ..
cd firefox/js/src
./mach bootstrap
cd ..
cd ..
./mach bootstrap
source "$HOME/.cargo/env"
export MOZCONFIG="$HOME/mozconfig-debug"
./mach build
cat << 'EOF' > "$HOME/mozconfig-debug"
ac_add_options --enable-project=js
ac_add_options --enable-debug
ac_add_options --enable-optimize
mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/obj-debug-js
EOF

export MOZCONFIG="$HOME/mozconfig-debug"
./mach build
cd obj-debug-js/dist/bin/
ls libmozjs*
ls
cd ..
cd ..
cd ..
cd ..
mkdir testing-runtime
cd testing-tuntime
cd testing-runtime
cat << 'EOF' > main.cpp
int main(int argc, char* argv[]) {
    std::cout << "Enable SpiderMonkey" << std::endl;

    // 1. Inisialisasi engine
    if (!JS_Init()) {
        std::cerr << "Fail Installtation Engine!" << std::endl;
        return 1;
    }

    std::cout << "Success" << std::endl;

    // 2. Shutdown engine clean up
    JS_ShutDown();
    return 0;
}
EOF

g++ main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1
ls
cd ..
ls
nvim testing-runtime
cd testing-runtime
g++ main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1
g++ main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1
cp /home/ali/Documents/firefox/obj-debug-js/dist/bin/js /home/ali/Documents/testing-runtime/alirun
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
./alirun test.js
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
./testing test.js
chmod +x testing
cp /home/ali/Documents/firefox/obj-debug-js/dist/bin/js /home/ali/Documents/testing-runtime/testing
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
./testing test.js
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
./testing test.js
ls
touch .gitignore
ls
cd Documents && testing-runtime
ls
cd testing-runtime
g++ main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1
clear
g++ main.cpp -o alirun   -DDEBUG   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1
clear
g++ -std=c++17 -DDEBUG -DXP_LINUX -DJS_64BIT   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1
g++ -std=c++20 -DDEBUG -DXP_LINUX -DJS_64BIT -DHAVE_LINUX_PERF_EVENT_H -DHAVE_STRNDUP   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1
clear
g++ -std=c++20 -DDEBUG -DXP_LINUX -DJS_64BIT -DHAVE_LINUX_PERF_EVENT_H -DHAVE_STRNDUP   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4 -lmozglue
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
./alirun
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
ls -l alirun
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
nvim main.cpp
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
nvim main.cpp
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
./alirun
ls
nvim main.cpp
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
nvim main.cpp
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
export MOZ_DISABLE_SIGSET=1
./alirun
nvim main.cpp
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
export MOZ_DISABLE_SIGSET=1
./alirun
mvim main.cpp
nvim main.cpp
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
gdb ./alirun
ls /home/ali/Documents/firefox/obj-debug-js/dist/bin
nvim main.cpp
# 1. Compile
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
# 2. Set Library Path & Run
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
./alirun
g++ -std=c++20 -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_64BIT -DJS_STANDALONE   main.cpp -o alirun   -I/home/ali/Documents/firefox/obj-debug-js/dist/include   -L/home/ali/Documents/firefox/obj-debug-js/dist/bin   -lmozjs-154a1 -lnspr4
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
./alirun
touch main.js
nvim main.js
nvim main.js
rm -rf main.js
ls
echo "print('Test');" > test.js
ls
export LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin
/home/ali/Documents/firefox/obj-debug-js/dist/bin/js test.js
ls
cp -L /home/ali/Documents/firefox/obj-debug-js/dist/bin/libmozjs-154a1.so ./lib/
cp -L /home/ali/Documents/firefox/obj-debug-js/dist/bin/libnspr4.so ./lib/
cp -L /home/ali/Documents/firefox/obj-debug-js/dist/bin/libnspr4.so ./lib/
ldd /home/ali/Documents/testing-runtime/testing
unset LD_LIBRARY_PATH
./testing test.js
ls
cd lib && ls
cd ..
rm -rf lib
./testing test.js
git init
git add .
ls
cd
cd Documents
nvim testing-runtime
nvim .gitignore
cd Documents && testing-runtime
cd testing-runtime
ls
nvim build.sh
build.sh
./build.sh
chmod +x build.sh
./build.sh
pkg-config --list-all | grep mozjs
find / -name "jsapi.h" 2>/dev/null
nvim build.sh
chmod +x build.sh
./build.sh
nvim build.sh
chmod +x build.sh
./build.sh
nvim build.sh
build.sh
chmod +x build.sh
./build.sh
nvim build.sh
chmod +x build.sh
./build.sh
g++ -O3 src/main.cpp -o bin/testing -DDEBUG -DXP_LINUX -DXP_UNIX -I/home/ali/Documents/firefox/obj-debug-js/dist/include -L/home/ali/Documents/firefox/obj-debug-js/dist/lib -lmozjs-154a1 -lmfbt
./bin/testing test.js
./bin/testing test.js
find /home/ali/Documents/firefox/obj-debug-js/dist/ -name "libmozjs*" -o -name "libmfbt*"
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX     -I/home/ali/Documents/firefox/obj-debug-js/dist/include     -L/home/ali/Documents/firefox/obj-debug-js/dist/bin     -lmozjs-154a1
LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin ./bin/testing test.js
cat src/main.cpp
cd ..
nvim testing-runtime
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX     -I/home/ali/Documents/firefox/obj-debug-js/dist/include     -L/home/ali/Documents/firefox/obj-debug-js/dist/bin     -lmozjs-154a1
cd testting-runtime
cd testing-runtime
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX     -I/home/ali/Documents/firefox/obj-debug-js/dist/include     -L/home/ali/Documents/firefox/obj-debug-js/dist/bin     -lmozjs-154a1
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX     -I/home/ali/Documents/firefox/obj-debug-js/dist/include     -L/home/ali/Documents/firefox/obj-debug-js/dist/bin     -lmozjs-154a1
In file included from /usr/include/strings.h:23,
                 from /usr/include/string.h:494,
                 from /home/ali/Documents/firefox/obj-debug-js/dist/include/mozilla/Poison.h:17,
                 from /home/ali/Documents/firefox/obj-debug-js/dist/include/mozilla/Maybe.h:21,
                 from /home/ali/Documents/firefox/obj-debug-js/dist/include/jsapi.h:10,
                 from src/main.cpp:2:
/home/ali/Documents/firefox/obj-debug-js/dist/include/js/HeapAPI.h:409:47: warning: ‘offsetof’ within non-standard-layout type ‘js::gc::ArenaChunkBase’ is conditionally-supported [-Winvalid-offsetof]
  409 | const size_t ChunkMarkBitmapOffset = offsetof(ArenaChunkBase, markBits);
      |                                               ^
/home/ali/Documents/firefox/obj-debug-js/dist/include/js/HeapAPI.h:411:14: warning: ‘offsetof’ within non-standard-layout type ‘js::gc::ArenaChunkBase’ is conditionally-supported [-Winvalid-offsetof]
  411 |     offsetof(ArenaChunkBase, info) + offsetof(ArenaChunkInfo, zone);
      |              ^
/home/ali/Documents/firefox/obj-debug-js/dist/include/js/HeapAPI.h:411:47: warning: ‘offsetof’ within non-standard-layout type ‘js::gc::ArenaChunkInfo’ is conditionally-supported [-Winvalid-offsetof]
  411 |     offsetof(ArenaChunkBase, info) + offsetof(ArenaChunkInfo, zone);
      |
LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin ./bin/testing test.js
LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin gdb --args ./bin/testing test.js
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_STANDALONE     -I/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/include     -L/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin     -lmozjs-154a1
cd ..
nvim testing-runtime
cd testing-runtime
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_STANDALONE     -I/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/include     -L/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin     -lmozjs-154a1
LD_LIBRARY_PATH=/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin ./bin/testing test.js
cd Documents && cd testing-runtime
LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin gdb --args ./bin/testing test.js
find /home/ali/Documents/firefox/obj-debug-js/dist/ -name "libmozglue*"
LD_PRELOAD=/home/ali/Documents/firefox/obj-debug-js/dist/bin/libmozjs-154a1.so LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin ./bin/testing test.js
g++ -O3 src/main.cpp -o bin/testing -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_STANDALONE -I/home/ali/Documents/firefox/obj-debug-js/dist/include -L/home/ali/Documents/firefox/obj-debug-js/dist/bin -lmozjs-154a1
LD_LIBRARY_PATH=/home/ali/Documents/firefox/obj-debug-js/dist/bin ./bin/testing test.js
../configure --enable-debug --disable-jemalloc
cd /home/ali/Documents/firefox/js/src
mkdir build_standalone_dbg
cd build_standalone_dbg
../configure --enable-debug --disable-jemalloc
make -j4(nproc)
make -j4(nproc)
cd ..
make -j4(nproc)
make -j4
make -j$(nproc)
ls
cd build_standalone_dbg
../configure --enable-debug --disable-jemalloc
make -j$(nproc)
find . -name "libmozjs*"
cd /path/to/your/testing-runtime
cd ..
cd ..
cd ..
cd ..
cd testing-runtime
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_STANDALONE     -I/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/include     -L/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin     -lmozjs-154a1
LD_LIBRARY_PATH=/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin ./bin/testing test.js
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_STANDALONE     -I/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/include     -L/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin     -lmozjs-154a1
cd Documents && cd testing-runtime
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_STANDALONE     -I/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/include     -L/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin     -lmozjs-154a1
LD_LIBRARY_PATH=/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin ./bin/testing test.js
sudo pacman -S github-cli
gh auth login
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_STANDALONE     -I/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/include     -L/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin     -lmozjs-154a1
LD_LIBRARY_PATH=/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin ./bin/testing test.js
nvim Makefile
ln -s $HOME/Documents/firefox/js/src/build_standalone_dbg ./spidermonkey
ls
nvim Makefile
ls
ls -a
nvim .gitignore
cd ..
nvim testing-runtime
git add .
git commit -m "testing build runtime"
git branch -M main
git remote add origin https://github.com/Ali-syr/Testing-runtime.git
git push -u origin main --force
git push -u origin main --force
systemctl suspend
llvm
llvm version
llvm --version
pacman -Qm
sudo pacman -S llvm
sudo pacman -S clang
clang --version
sudo pacman -S clang
clang --version
llvm --version
llvm
gcc main.cpp
clear
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
cd .config/nvim
ls
cd lua
ls
cd plugins
ls
reboot
sudo pacman -Syu
sudo pacman -Rns neovim
sudo pacman -S neovim
sudo pacman -Rns clang
nemo -q
cd Documents && cd learning
git clone https://github.com/Ali-syr/Testing-runtime.git
cd Documents && cd learning
cd Testing-runtime
ls
cd ..
nvim Testing-runtime
nvim
git clone https://github.com/Ali-syr/backup-dotfiles
git clone https://github.com/Ali-syr/backup-dotfiles.git
git clone https://github.com/Ali-syr/backup-dotfile.git
cd Documents && git clone https://github.com/Ali-syr/backup-dotfiles.git
sudo pacman -Rns neovim
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
sudo pacman -S neovim
cd .config
mkdir nvim
cd
cliphits wipe
cliphist wipe
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
g++ '/home/ali/Documents/learning/ya/main.cpp' -o 'main' && ./'main'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
clear
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
waybar
systemctl suspend
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
 g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/Documents/learning/ya/test.cpp' -o 'test' && ./'test'
g++ '/home/ali/else.cpp' -o 'else' && ./'else'
g++ '/home/ali/else.cpp' -o 'else' && ./'else'
clear
g++ O3 src/main.cpp -o bin/testing
g++ O3 src/main.cpp -o bin/testing DDEBUG -DXP_LINUX -XDP_UNIX I $HOME/Documents/firefox/obj-debug-js/dist/include L $HOME/Documents/firefox/js/src/build_standtalone_dbg/dist/bin lmzojs-154a1
g++ O3 src/main.cpp -o bin/testing DDEBUG -DXP_LINUX -XDP_UNIX I $HOME/Documents/firefox/obj-debug-js/dist/include L $HOME/Documents/firefox/js/src/build_standtalone_dbg/dist/bin lmozjs-154a1
g++ -O3 src/main.cpp -o bin/testing     -DDEBUG -DXP_LINUX -DXP_UNIX -DJS_STANDALONE     -I/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/include     -L/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin     -lmozjs-154a1
LD_LIBRARY_PATH= $HOME/DOcuments/firefox/js/src/build_standalone_dbg/dist/bin ./bin/testing test.js
LD_LIBRARY_PATH=$HOME/DOcuments/firefox/js/src/build_standalone_dbg/dist/bin ./bin/testing test.js
LD_LIBRARY_PATH=/home/ali/DOcuments/firefox/js/src/build_standalone_dbg/dist/bin ./bin/testing test.js
LD_LIBRARY_PATH=/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin ./bin/testing test.js
LD_LIBRARY_PATH=/home/ali/Documents/firefox/js/src/build_standalone_dbg/dist/bin ./bin/testing test.js
make run
sytemctl suspend
systemctl suspend
systemctl suspend
systemctl suspend
make run
sudo pacman -S wtype
pip list
make
make run
systemctl suspend
cd Documents && cd testing-runtime
ls
cd src && ls
cd ..
cd bin && ls
cd..
make run
ls
cd ..
make run
cd ..
nvim testing-runtime
cd testing-runtime
LD_LIBRARY_PATH=./spidermonkey/dist/bin valgrind --leak-check=full ./bin/testing test.js
sudo pacman -S valgrind
sudo pacman -S valgrind
LD_LIBRARY_PATH=./spidermonkey/dist/bin valgrind --leak-check=full ./bin/testing test.js
cd Documents && cd testing-runtime && LD_LIBRARY_PATH=./spidermonkey/dist/bin valgrind --leak-check=full ./bin/testing test.js
cd Documents && cd testing-runtime && LD_LIBRARY_PATH=./spidermonkey/dist/bin time ./bin/testing test.js
nvim test.js
cd Documents && cd testing-runtime && LD_LIBRARY_PATH=./spidermonkey/dist/bin time ./bin/testing test.js
cd Documents && cd testing-runtime && LD_LIBRARY_PATH=./spidermonkey/dist/bin time ./bin/testing test.js
LD_LIBRARY_PATH=./spidermonkey/dist/bin valgrind --leak-check=full ./bin/testing test.js
fastfetch
cd Documents && cd testing-runtime && LD_LIBRARY_PATH=./spidermonkey/dist/bin valgrind --leak-check=full --smc-check=all-non-file ./bin/testing test.js
cd Documents && cd testing-runtime && make run
nvim test.js
make run
btop
systemctl suspend
fastfetch
systemctl suspend
fastfetch
shutdown now
yay -Syu
sudo pacman -Syu
fastfetch
flatpak update
g++ '/home/ali/Documents/learning/ya/else.cpp' -o 'else' && ./'else'
g++ '/home/ali/Documents/learning/ya/else.cpp' -o 'else' && ./'else'
g++ '/home/ali/Documents/learning/ya/else.cpp' -o 'else' && ./'else'
cd Documents && cd learning && cd ya
g++ '/home/ali/Documents/learning/ya/else.cpp' -o 'else' && ./'else'
g++ '/home/ali/Documents/learning/ya/else.cpp' -o 'else' && ./'else'
g++ '/home/ali/Documents/learning/ya/else.cpp' -o 'else' && ./'else'
g++ '/home/ali/Documents/learning/ya/else.cpp' -o 'else' && ./'else'
g++ '/home/ali/Documents/learning/ya/else.cpp' -o 'else' && ./'else'
g++ '/home/ali/Documents/learning/ya/else.cpp' -o 'else' && ./'else'
cat io.cpp
touch  io.cpp
cat io.cpp
g++ '/home/ali/Documents/learning/ya/io.cpp' -o 'io' && ./'io'
g++ '/home/ali/Documents/learning/ya/io.cpp' -o 'io' && ./'io'
2004
g++ '/home/ali/Documents/learning/ya/io.cpp' -o 'io' && ./'io'
g++ '/home/ali/Documents/learning/ya/io.cpp' -o 'io' && ./'io'
g++ '/home/ali/Documents/learning/ya/io.cpp' -o 'io' && ./'io'
g++ '/home/ali/Documents/learning/ya/io.cpp' -o 'io' && ./'io'
 ls
echo $SHELL
