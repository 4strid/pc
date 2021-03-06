Usage() {
  cat <<EOF
usage: ${0##*/} [options] root

  Options:
    -f FILTER      Restrict output to mountpoints matching the prefix FILTER
    -L             Use labels for source identifiers (shortcut for -t LABEL)
    -p             Exclude pseudofs mounts (default behavior)
    -P             Include pseudofs mounts
    -t TAG         Use TAG for source identifiers (TAG should be one of: LABEL,
                      UUID, PARTLABEL, PARTUUID)
    -U             Use UUIDs for source identifiers (shortcut for -t UUID)

    -h             Print this help message

genfstab generates output suitable for addition to an fstab file based on the
devices mounted under the mountpoint specified by the given root.

EOF
}
