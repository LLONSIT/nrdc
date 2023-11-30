#***********************************************
#
#	Simple Makefile for Makemask
#
#
#**********************************************

#Support for sgi systems
IRIX ?=  0

#Build the irix binary using qemu-irix with an "irix root"
CROSS ?= 0

#IRIX 6.5.30 root
ROOT = tools/irix

DIR = src

AVOID_UB ?= 0 #Probably going to be necessary soon

#Yes, is this the 90's style?

C_FILES = 	$(DIR)/rdc.c\
		$(DIR)/main.c\
		$(DIR)/strupr.c\
		$(DIR)/crc.c\
		$(DIR)/getcode.c



#maybe -KPIC should be necesary
SGI_CFLAGS :=  -I /usr/include/ -g0 -O1 -KPIC -mips1 -fullwarn -wlint,-fph -Wab,-r4300_mul -Xcpluscomm -nostdinc

ifeq ($(CROSS),1)
 CFLAGS := -g0 -O1 -KPIC -mips1 -fullwarn -wlint,-fph -Wab, -Xcpluscomm -nostdinc -woff 649,838,712 -I $(ROOT)/usr/include
 CC := /usr/bin/qemu-irix -silent -L $(ROOT) $(ROOT)/usr/bin/cc
else
 CFLAGS := -Wall -O1 -ggdb3 -fPIC -Wno-unused-function -Wno-incompatible-pointer-types
endif

all:

ifeq ($(IRIX),1)
	$(CC) $(SGI_CFLAGS) $(DIR)/$(C_FILES)
else
	$(CC) $(CFLAGS) $(C_FILES) -o nrdc
endif

clean:
	rm *.o nrdc
