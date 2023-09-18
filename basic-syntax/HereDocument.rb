# -*- coding : utf-8 -*-

print <<EOF
    这是第一种方式创建here document 。
    多行字符串。
EOF

print <<"EOF";                # 与上面相同
    这是第二种方式创建here document 。
    多行字符串。
EOF

print <<`EOC`       # 执行命令
    echo hi there
    echo lo there   # 有问题啊，这一行没有执行。环境 win 11， ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x64-mingw-ucrt]。试了下，WSL 下的 ruby 能正常执行这一行
EOC

print <<"foo", <<"bar"	      # 您可以把它们进行堆叠
	I said foo.
foo
	I said bar.
bar
