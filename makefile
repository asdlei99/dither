# makefile for dither project
# written by rockcarry

# ����������
CC      = i586-mingw32msvc-gcc
CCFLAGS = -Wall

# ���е�Ŀ���ļ�
OBJS = \
    dither.o

# ���еĿ�ִ��Ŀ��
EXES = \
    dither.exe \

# �������
all : $(EXES)

%.o : %.c
	$(CC) $(CCFLAGS) -o $@ $< -c

%.exe : %.o
	$(CC) $(CCFLAGS) -o $@ $<

clean :
	-rm -f *.o
	-rm -f *.exe

# rockcarry
# 2017.8.29
# THE END

