#!/bin/bash
# Build the extended checker tree pr4ext: the pinned PR #4 tree PINNED (hard links: no extra space, unchanged files
# shared) plus the extension (ext_cell_certificate.py and its projector/ acceptance modules, from CODE), with one
# changed file, TripleClassification/code/plane_audit_manifest.py: its SOURCES also pin the extension's files (so a
# manifest built on pr4ext names them), and it installs the extended check (so audit_select.py --plane replays leaves
# with the projector and secant witnesses available). Every new or changed file is written as a new file, never
# through a hard link, so the pinned tree cannot change.
#   bash make_ext_root.sh PINNED EXT CODE
set -eu
PINNED=$(cd "$1" && pwd); EXT=$2; CODE=$(cd "$3" && pwd)
[ -e "$EXT" ] && { echo "$EXT exists"; exit 1; }
rsync -a --exclude .git --link-dest="$PINNED/" "$PINNED/" "$EXT/"
C=$EXT/TripleClassification/code
for f in ext_cell_certificate.py projector/projector_joint_certificate.py projector/projector_union_hook.py projector/moving_secant_certificate.py; do
  mkdir -p "$(dirname "$C/$f")"; cp "$CODE/$f" "$C/$f.new"; mv -f "$C/$f.new" "$C/$f"
done
python3 - "$PINNED/TripleClassification/code/plane_audit_manifest.py" "$C/plane_audit_manifest.py.new" <<'EOF'
import sys
s = open(sys.argv[1]).read()
a = "'anchored_column_certificate.py','stagec_guard.py'))"
b = ("'anchored_column_certificate.py','stagec_guard.py',\n    # pr4ext: the extended check (projector and secant witnesses)\n"
     "    'ext_cell_certificate.py','projector/projector_joint_certificate.py','projector/projector_union_hook.py',\n"
     "    'projector/moving_secant_certificate.py'))")
assert s.count(a) == 1; s = s.replace(a, b)
a = "from plane_column_certificate import digest,read_json,require\n"
b = a + "import ext_cell_certificate as _Ext;_Ext.install()   # pr4ext: plane_cell_certificate.check plus the two witnesses\n"
assert s.count(a) == 1; s = s.replace(a, b)
open(sys.argv[2], 'w').write(s)
EOF
rm -f "$C/plane_audit_manifest.py"; mv "$C/plane_audit_manifest.py.new" "$C/plane_audit_manifest.py"
cmp -s "$PINNED/TripleClassification/code/plane_cell_certificate.py" "$C/plane_cell_certificate.py" && echo "built $EXT"
