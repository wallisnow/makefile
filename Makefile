A=hello
B=world
C=big $(B)

C_SOURCE=main.c dev.c add.c
C_CLEAN=clean

#目标文件一定要存在, 依赖文件可以不需要
#echo "hello world"
#hello world

#添加@后, 不会打印
#hello world
hello:
	@echo "hello world"

test:main.c dev.c add.c
	gcc $^ -o $@


add.o:add.c
	gcc -c $^

dev.o:dev.c
	gcc -c $^

main:main.c add.o dev.o
	gcc $^ -o $@

all: $(C_CLEAN) main

#使用变量
vars:
	@echo $A
	@echo $B
	@echo $C

$(C_CLEAN):
	rm *.o main

.PHONY: $(C_CLEAN)

