用法：tree 
```linux shell
usage: tree [-acdfghilnpqrstuvxACDFJQNSUX] [-L level [-R]] [-H  baseHREF]
        [-T title] [-o filename] [-P pattern] [-I pattern] [--gitignore]
        [--matchdirs] [--metafirst] [--ignore-case] [--nolinks] [--inodes]
        [--device] [--sort[=]<name>] [--dirsfirst] [--filesfirst]
        [--filelimit #] [--si] [--du] [--prune] [--charset X]
        [--timefmt[=]format] [--fromfile] [--noreport] [--version] [--help]
        [--] [directory ...]
```Linux shell
  ------- Listing options -----------------------------------------------------------------------------------------
  列出的选项：
  -a           All files are listed.					列出所有文件
  -d           List directories only.					仅列出目录
  -l            Follow symbolic links like directories.			类似目录的前导符号
  -f            Print the full path prefix for each file.		输出每个文件路径前缀
  -x            Stay on current filesystem only.			仅保持当前文件系统
  -L level      Descend only level directories deep.			展开到指定文件层级
  -R            Rerun tree when max dir level reached.			当达到最大目录层级再次运行tree
  -P pattern    List only those files that match the pattern given.	仅列出符合所给模式相匹配的文件和目录
  -I pattern    Do not list files that match the given pattern.		排除符合所给模式相匹配的文件和目录
  --gitignore   Filter by using .gitignore files.			通过使用.gitignore 文件筛选
  --ignore-case Ignore case when pattern matching.			当模式匹配的时候忽略这些例子	
  --matchdirs   Include directory names in -P pattern matching.		在-P匹配模式中包含目录名
  --metafirst   Print meta-data at the beginning of each line.		在每一行开始前输出元数据
  --prune       Prune empty directories from the output.		在输出中删除空白目录
  --info        Print information about files found in .info files.	输出在.info文件中发现的信息
  --noreport    Turn off file/directory count at end of tree listing.	在tree末尾关闭文件目录统计
  --charset X   Use charset X for terminal/HTML 			对于terminal/HTML和行缩进输出
  		and indentation line output.				使用charset X
  --filelimit # Do not descend dirs with more than # files in them.	超过#个文件在子目录中不要列出
  -o filename   Output to file instead of stdout.			输出到文件，而不是stdout
  ------- File options -------------------------------------------------------------------------------------------
  文件选项

  -q            Print non-printable characters as '?'.			把不可打印字符输出为'?'
  -N            Print non-printable characters as is.			把不可打印字符输出为 is
  -Q            Quote filenames with double quotes.			文件名用""括起来
  -p            Print the protections for each file.			对每个文件输出保护
  -u            Displays file owner or UID number.			显示文件所有者或GID值
  -g            Displays file group owner or GID number.		显示文件组所有者或GID值
  -s            Print the size in bytes of each file.			显示每个文件大小（单位:字节）
  -h            Print the size in a more human readable way.		显示每个文件大小（单位:G/M/k/B）  单位1024
  --si          Like -h, but use in SI units (powers of 1000).		显示每个文件大小（单位:G/M/k/B）SI单位1000
  --du          Compute size of directories by their contents.		显示每个目录大小
  -D            Print the date of last modification 			显示最后修改日期或(-c)状态变更
  		or (-c) status change.					
  --timefmt <f> Print and format time according to the format <f>.	根据所给格式<f>显示日期
  -F            Appends '/', '=', '*', '@', '|' or '>' as per ls -F.	附加'/', '=', '*', '@', '|' or '>' 
  									根据每个 ls -F
  --inodes      Print inode number of each file.			显示每个文件索引节点数(inodes number)
  --device      Print device ID number to which each file belongs.	显示每个文件所属设备的ID值
  ------- Sorting options ----------------------------------------------------------------------------------------
  分类排序整理选项
  -v            Sort files alphanumerically by version.			按版本对文件进行字母数字排序
  -t            Sort files by last modification time.			按最后修改的时间进行排序
  -c            Sort files by last status change time.			按最后状态修改的时间进行排序
  -U            Leave files unsorted.					保留文件未排序状态
  -r            Reverse the order of the sort.				逆序排序
  --dirsfirst   List directories before files (-U disables).		在文件前列出目录(-U 禁用)
  --filesfirst  List files before directories (-U disables).		在目录前列出文件(-U 禁用)
  --sort X      Select sort: name,version,size,mtime,ctime.		选择排序:文件名，版本，大小，
  									修改时间，创建时间
  ------- Graphics options ---------------------------------------------------------------------------------------
  图形化选项
  -i            Don't print indentation lines.				不显示缩进线
  -A            Print ANSI lines graphic indentation lines.		显示 ANSI 缩进线
  -S            Print with CP437 (console) graphics indentation lines.	显示 CP437 缩进线
  -n            Turn colorization off always (-C overrides).		关闭彩色渲染(-C 强制开启)
  -C            Turn colorization on always.				开启彩色渲染
  ------- XML/HTML/JSON options ----------------------------------------------------------------------------------
  XML/HTML/JSON 选项
  -X            Prints out an XML representation of the tree.		以 XML 显示文件树
  -J            Prints out an JSON representation of the tree.		以 JOSN 显示文件树
  -H baseHREF   Prints out HTML format with baseHREF as top directory.	以 baseHREF为根目录的 HTML格式 显示文件树
  -T string     Replace the default HTML title 				以 string 替换默认 HTML标题 和 H1
  		and H1 header with string.
  --nolinks     Turn off hyperlinks in HTML output.			在 HTML 输出中取消 超链接
  ------- Input options ------------------------------------------------------------------------------------------
  输入选项

  --fromfile    Reads paths from files (.=stdin)			从文件(.=stdin)中读取路径

  ------- Miscellaneous options ----------------------------------------------------------------------------------
  混杂选项

  --version     Print version and exit.					显示版本然后退出	
  --help        Print usage and this help message and exit.		显示用法和帮助信息然后退出
  --            Options processing terminator.				选项处理终止符