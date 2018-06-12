# makefile for dither project
# written by rockcarry

# ����������
CC      = gcc
STRIP   = strip
CCFLAGS = -Wall -Os

# ���е�Ŀ���ļ�
OBJS = \
    dither.o \
    palette.o

# ���еĿ�ִ��Ŀ��
EXES = \
    dither.exe \
    palette.exe

# �������
all : $(EXES)

%.o : %.c
	$(CC) $(CCFLAGS) -o $@ $< -c

%.exe : %.o
	$(CC) $(CCFLAGS) -o $@ $<
	$(STRIP) $@

clean :
	-rm -f *.o
	-rm -f *.exe

# rockcarry
# 2017.8.29
# THE END

