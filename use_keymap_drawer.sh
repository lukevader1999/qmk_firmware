#!/usr/bin/env bash
KEYMAP_PATH=$"/home/erik/GitRepos/qmk_firmware/keyboards/massdrop/alt/keymaps/lukevader42QWERTY/keymap.c"
JSON_NAME=$"keymap.json"
YML_NAME=$"keymap.yaml"
SVG_NAME=$"keymap.svg"
QMK_INFO_PATH=$"/home/erik/GitRepos/qmk_firmware/keyboards/massdrop/alt/keyboard.json"

qmk c2json --no-cpp $KEYMAP_PATH > "$JSON_NAME"

keymap parse -q $JSON_NAME > "$YML_NAME"

keymap draw $YML_NAME -j $QMK_INFO_PATH > "$SVG_NAME"