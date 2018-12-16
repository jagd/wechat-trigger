INC=/usr/include/wine/wine/windows/

wechat-trigger: main.c
	winegcc -m32 -I ${INC} $< -o $@


install:
	-mkdir -p ~/.local/bin
	cp wechat-trigger.exe*  ~/.local/bin
