# 常见linux命令用法汇总
## ls
用法：ls [选项]... [文件]...
列出 <文件>（默认为当前目录）的信息。
如果既没有指定 -cftuvSUX 中任何一个，也没有指定 --sort，则按字母排序项目。

长选项的必选参数对于短选项也是必选的。
  -a, --all                  不要隐藏以 . 开头的项目
  -A, --almost-all           列出除 . 及 .. 以外的所有项目
      --author               与 -l 同时使用时，列出每个文件的作者
  -b, --escape               以 C 风格的转义序列表示不可打印的字符
      --block-size=大小      与 -l 同时使用时，将文件大小以此处给定的大小为
                               单位进行缩放；例如：“--block-size=M”；
                               请参考下文的大小格式说明
  -B, --ignore-backups       不列出任何以 ~ 字符结束的项目
  -c                         与 -lt 共同使用时：根据 ctime 排序并显示
                             ctime（文件状态最后更改的时间）；
                             与 -l 共同使用时：显示 ctime 并按照名称排序；
                             其它情况：按照 ctime 排序，最新的最前
  -C                         每栏由上至下列出项目
      --color[=WHEN]         控制是否使用带颜色的输出；WHEN 可以是
                               “always”（默认缺省值）、“auto”或
                               “never”；更多信息请见下文
  -d, --directory            当遇到目录时列出目录本身而非目录内的文件
  -D, --dired                产生适合 Emacs 的 dired 模式使用的结果
  -f                         不进行排序，-aU 选项生效，禁用 -ls --color
  -F, --classify             加上文件类型的指示符号（*/=@| 其中一个）
      --file-type            类似，但不后缀‘*’字符
      --format=关键字        交错 -x，逗号分隔 -m，水平 -x，长 -l，
                               单栏 -1，详细 -l，垂直 -C
      --full-time            类似 -l --time-style=full-iso
  -g                         类似 -l，但不列出所有者
      --group-directories-first
                             在文件前分组目录；
                               此选项可与--sort 一起使用，但是一旦使用
                               --sort=none (-U) 将禁用分组
  -G, --no-group             使用长列表格式时，不输出组名
  -h, --human-readable       同时使用 -l 或 -s 时，将大小表示为 1K 234M 2G 等
      --si                   类似，但是使用 1000 的幂，而不是 1024
  -H, --dereference-command-line
                             跟随命令行中列出的符号链接
      --dereference-command-line-symlink-to-dir
                             跟随命令行中列出的、指向目录的符号链接
      --hide=模式            隐藏符合 shell <模式> 的项目
                               （-a 或 -A 使此选项失效）
      --hyperlink[=何时]     文件名使用超链接；<何时> 可以是 "always"
                               （省略时的默认值）、"auto" 或 "never"
      --indicator-style=方式  指定在每个项目名称后加上指示符号方式：
                               none（默认）、slash（-p）、
                               file-type（--file-type）以及 classify（-F）
  -i, --inode                显示每个文件的索引编号（inode 号）
  -I, --ignore=模式          不显示任何匹配指定 shell <模式>的项目
  -k, --kibibytes            默认使用 1024 字节的块显示磁盘使用量；
                               只用于 -s 和每个目录的总计
  -l				使用较长格式列出信息
  -L, --dereference		当显示符号链接的文件信息时，显示符号链接所指示
				的对象而并非符号链接本身的信息
  -m				所有项目以逗号分隔，并填满整行行宽
  -n, --numeric-uid-gid      类似 -l，但列出用户和组的 ID 号
  -N, --literal              输出不加引号的项目名称
  -o                         类似 -l，但不列出有关组的信息
  -p, --indicator-style=slash
                             对目录追加 "/" 作为指示符号
  -q, --hide-control-chars   以“?”字符代替无法打印的字符
      --show-control-chars   原样显示无法打印的字符（这是默认行为，除非被调用
                               本程序的名称是“ls”而且是在终端中进行输出）
  -Q, --quote-name           将条目名称括上双引号
      --quoting-style=方式   使用指定引用的方式显示条目的名称：
                               literal, locale, shell, shell-always,
                               shell-escape, shell-escape-always, c, escape
                               （该选项优先于 QUOTING_STYLE 环境变量的配置）
  -r, --reverse              排序时逆序排列
  -R, --recursive            递归地列出子目录
  -s, --size                 显示给每个文件分配的大小，单位为块
  -S                         sort by file size, largest first
      --sort=WORD            sort by WORD instead of name: none (-U), size (-S),
                               time (-t), version (-v), extension (-X)
      --time=WORD            change the default of using modification times;
                               access time (-u): atime, access, use;
                               change time (-c): ctime, status;
                               birth time: birth, creation;
                             with -l, WORD determines which time to show;
                             with --sort=time, sort by WORD (newest first)
      --time-style=TIME_STYLE  使用 -l 时显示的时间/日期格式；请见下面
                                 TIME_STYLE 的相关内容
  -t                         按时间排序，最新的最前；参见 --time
  -T, --tabsize=列数         指定制表符宽度为 <列数>，而非默认的 8
  -u                         与 -lt 一起使用：按照访问时间排序，并显示访问时间；
                               与 -l 一起使用：显示访问时间，并按文件名排序；
                               其它情况：按照访问时间排序，最新的最前
  -U                         不进行排序；按照目录顺序列出项目
  -v                         对文本中的数字（或版本号）进行自然排序
  -w, --width=COLS           设置输出宽度为 COLS 对应的值。0 代表无限制
  -x                         逐行列出项目而不是逐栏列出
  -X                         根据扩展名按字母顺序排序
  -Z, --context              输出每个文件的所有安全上下文信息
  -1                         每行只列出一个文件。与 -q 或 -b 共用时避免 '\n'
      --help		显示此帮助信息并退出
      --version		显示版本信息并退出

<大小> 参数是一个整数，后面可以跟一个单位（例如：10K 指 10*1024）。
可用的单位有 K、M、G、T、P、E、Z、Y（1024 的幂）以及 KB、MB、...（1000 的幂）。
也可以使用二进制前缀：KiB=K、MiB=M，以此类推。

<时间风格> 参数可以是 full-iso、long-iso、iso、locale，或者 +格式。
<格式> 的解析方式同 date(1)。如果 <格式> 是 格式1<换行符>格式2 的话，
则 <格式1> 将应用于时间较久远的文件，<格式2> 将应用于时间较近的文件。
<时间风格> 如果带有 "posix-" 前缀，则它只会在区域设置非 POSIX 时生效。
另外，可以使用 TIME_STYLE 环境变量设置默认使用的风格。

使用色彩来区分文件类型的功能已被禁用，默认设置和 --color=never 同时禁用了它。
使用 --color=auto 选项，ls 只在标准输出被连至终端时才生成颜色代码。
LS_COLORS 环境变量可改变此设置，可使用 dircolors 命令来设置。

退出状态：
 0  表示正常，
 1  表示小问题（例如：无法访问子目录），
 2  表示严重问题（例如：无法使用命令行参数）。

GNU coreutils 在线帮助：<https://www.gnu.org/software/coreutils/>
请向 <http://translationproject.org/team/zh_CN.html> 报告任何翻译错误
完整文档 <https://www.gnu.org/software/coreutils/ls>
或者在本地使用：info '(coreutils) ls invocation'

## mv
用法：mv [选项]... [-T] 源 目标
　或：mv [选项]... 源... 目录
　或：mv [选项]... -t 目录 源...
将 <源> 重命名为 <目标>，或将 <源> 移动至 <目录>。

长选项的必选参数对于短选项也是必选的。
      --backup[=控制]          为每个已存在的目标文件创建备份
  -b                           类似 --backup 但不接受参数
  -f, --force                  覆盖前不询问
  -i, --interactive            覆盖前询问
  -n, --no-clobber             不覆盖已存在的文件
如果您指定了 -i、-f、-n 中的多个，仅最后一个生效。
      --strip-trailing-slashes  去掉每个 <源> 尾部的斜杠
  -S, --suffix=后缀            用 <后缀> 替代通常使用的备份文件后缀
  -t, --target-directory=目录  将所有 <源> 移动至 <目录> 中
  -T, --no-target-directory    将 <目标> 视为普通文件
  -u, --update                 仅在 <源> 比目标文件更新，或者目标文件
                                 不存在时，才进行移动操作
  -v, --verbose                显示详细步骤
  -Z, --context                将目标文件的 SELinux 安全上下文设置为默认类型
      --help		显示此帮助信息并退出
      --version		显示版本信息并退出

备份文件的后缀为 "~"，除非使用了 --suffix 选项或 SIMPLE_BACKUP_SUFFIX 环境变量
指定了其他后缀。版本控制的方式可通过 --backup 选项或 VERSION_CONTROL 环境变量
来选择。以下是可用的设置值：

  none, off       不进行备份（即使使用了--backup 选项）
  numbered, t     使用带有数字编号的备份文件进行备份
  existing, nil   若带数字的备份文件已经存在则使用 numbered，否则使用 simple
  simple, never   总是使用简单方式进行备份

GNU coreutils 在线帮助：<https://www.gnu.org/software/coreutils/>
请向 <http://translationproject.org/team/zh_CN.html> 报告任何翻译错误
完整文档 <https://www.gnu.org/software/coreutils/mv>
或者在本地使用：info '(coreutils) mv invocation'

