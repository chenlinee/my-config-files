tmp_path="tmp_$(date +%Y%m%d_%H%M%S)"
backup_dir="backup_$(date +%Y%m%d_%H%M%S)"
skip_list=(".git" "auto_script" "README.md" $tmp_path $backup_dir)

rm -rf $tmp_path && mkdir $tmp_path
rm -rf backup_dir && mkdir -p $backup_dir
current_dir=$(pwd)

pushd $tmp_path
# download and install nodejs
wget https://nodejs.org/dist/v22.13.0/node-v22.13.0-linux-x64.tar.xz
tar -xJf node-v22.13.0-linux-x64.tar.xz
mkdir -p ~/.local
cp -r node-v22.13.0-linux-x64/* ~/.local
popd

# vim-plug
#  NeoVim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


## 备份原来的用户目录文件
# 遍历当前目录的一级目录和文件
for item in "$current_dir"/* "$current_dir"/.*; do
  item_name=$(basename "$item")

  if [[ " ${skip_list[@]} " =~ " ${item_name} " ]]; then
    continue
  fi

  if [ -d "$item" ] || [ -f "$item" ]; then
    # 构建目标路径
    target_path="$HOME/$item_name"
    backup_path="$backup_dir/$item_name"

    # 检查目标路径是否存在
    if [ -e "$target_path" ]; then
      # 复制到备份目录
      cp -r "$target_path" "$backup_path"
      echo "已复制: $target_path -> $backup_path"
    else
      echo "跳过: $target_path (不存在)"
    fi
  fi
done
echo "备份完成，备份目录: $backup_dir"


## 当前配置生效
# 遍历当前目录的一级目录和文件
for item in "$current_dir"/* "$current_dir"/.*; do
  item_name=$(basename "$item")

  if [[ " ${skip_list[@]} " =~ " ${item_name} " ]]; then
    echo "跳过: $item_name (在跳过列表中)"
    continue
  fi

  if [ -d "$item" ] || [ -f "$item" ]; then
    target_path="$HOME/$item_name"
    # 检查目标路径是否存在
    if [ -e "$target_path" ]; then
      echo "已覆盖: $target_path"
    fi
    cp -r $item $HOME
    echo "已复制: $item -> $target_path"
  fi
done
echo "配置文件移动完成"


# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# clean
rm -rf $tmp_path
