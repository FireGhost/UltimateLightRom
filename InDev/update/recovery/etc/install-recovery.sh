#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p1:2048:56b0f6cda19a8a0f89f3f4f712dde59d9f4c3af7; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/mmcblk0p2:3115008:45161d52f72b892f741430ac45b528c77cf786af EMMC:/dev/block/mmcblk0p1 f8ff93f8732659a357b45a1d1c1a9e394f88e4f7 3469312 45161d52f72b892f741430ac45b528c77cf786af:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
