LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := fsckbmap.c fsckconn.c fsckdire.c fsckdtre.c fsckea.c \
          fsckimap.c fsckino.c fsckmeta.c fsckpfs.c  dirindex.c \
          fsckwsp.c fsckxtre.c xchkdsk.c fsckruns.c fsck_message.c \

LOCAL_MODULE := fsck.jfs
LOCAL_MODULE_TAGS := eng

LOCAL_STATIC_LIBRARIES := libfs libfs_uuid
												# uuid
LOCAL_C_INCLUDES := external/jfsutils external/jfsutils/include external/jfsutils/libfs external/jfsutils/uuid

LOCAL_CFLAGS := -Os -g -W -Wall \
	-DHAVE_DIRENT_H \
	-DHAVE_ERRNO_H \
	-DHAVE_INTTYPES_H \
	-DHAVE_LINUX_FD_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SETJMP_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_UNISTD_H \
	-DHAVE_UTIME_H \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_INTPTR_T \
	-DENABLE_HTREE=1

include $(BUILD_EXECUTABLE)

