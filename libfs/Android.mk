LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := fssubs.c unicode_to_utf8.c devices.c utilsubs.c \
 super.c inode.c diskmap.c message.c uniupr.c jfs_endian.c \
 open_by_label.c log_dump.c logform.c logredo.c log_work.c log_read.c \
 log_map.c fsckmsgdef.c
# debug.h devices.h diskmap.h fsck_base.h fsckcbbl.h fscklog.h \
# fsckwsp.h inode.h libjufs.h message.h super.h unicode_to_utf8.h \
# utilsubs.h jfs_endian.h logform.h logredo.h fsck_message.h

LOCAL_MODULE := libfs
LOCAL_MODULE_TAGS := eng

LOCAL_C_INCLUDES := external/jfsutils external/jfsutils/include

LOCAL_CFLAGS := -Os -g -W -Wall \
	-DHAVE_UNISTD_H \
	-DHAVE_ERRNO_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_UTIME_H \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_LINUX_FD_H \
	-DHAVE_TYPE_SSIZE_T

include $(BUILD_STATIC_LIBRARY)

