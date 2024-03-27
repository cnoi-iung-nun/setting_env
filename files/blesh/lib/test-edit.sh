# Copyright 2015 Koichi Murase <myoga.murase@gmail.com>. All rights reserved.
# This script is a part of blesh (https://github.com/akinomyoga/ble.sh)
# provided under the BSD-3-Clause license.  Do not edit this file because this
# is not the original source code: Various pre-processing has been applied.
# Also, the code comments and blank lines are stripped off in the installation
# process.  Please find the corresponding source file(s) in the repository
# "akinomyoga/ble.sh".
#
# Source: /lib/test-edit.sh
ble-import lib/core-test
ble/test/start-section 'ble/edit' 2
(
  ble/test "_ble_edit_str=$'echo\nhello\nworld' ble-edit/content/find-logical-eol 13 -1" exit=0 ret=10
  ble/test "_ble_edit_str=$'echo\nhello\nworld' ble-edit/content/find-logical-bol 13 -1" exit=0 ret=5
)
ble/test/end-section
