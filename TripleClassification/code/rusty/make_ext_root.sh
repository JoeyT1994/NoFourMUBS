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
for f in ext_cell_certificate.py ext_transfer.py projector/projector_joint_certificate.py projector/projector_union_hook.py projector/moving_secant_certificate.py; do
  mkdir -p "$(dirname "$C/$f")"; cp "$CODE/$f" "$C/$f.new"; mv -f "$C/$f.new" "$C/$f"
done
python3 - "$PINNED/TripleClassification/code/plane_audit_manifest.py" "$C/plane_audit_manifest.py.new" <<'EOF'
import sys
s = open(sys.argv[1]).read()
a = "'anchored_column_certificate.py','stagec_guard.py'))"
b = ("'anchored_column_certificate.py','stagec_guard.py',\n    # pr4ext: the extended check (projector and secant witnesses)\n"
     "    'ext_cell_certificate.py','projector/projector_joint_certificate.py','projector/projector_union_hook.py',\n"
     "    'projector/moving_secant_certificate.py','ext_transfer.py','gamma_test.py'))")
assert s.count(a) == 1; s = s.replace(a, b)
a = "from plane_column_certificate import digest,read_json,require\n"
b = a + "import ext_cell_certificate as _Ext;_Ext.install()   # pr4ext: plane_cell_certificate.check plus the two witnesses\n"
assert s.count(a) == 1; s = s.replace(a, b)
a = "CERTIFIED={'CERTIFIED_EMPTY_DYADIC_CELL','CERTIFIED_CLASSIFIED_DYADIC_CELL'}"
b = ("CERTIFIED={'CERTIFIED_EMPTY_DYADIC_CELL','CERTIFIED_CLASSIFIED_DYADIC_CELL',\n"
     "           'CERTIFIED_MINIMUM_TRANSITION_DYADIC_CELL'}   # pr4ext: restricted scope, recorded per cell (audit_select.py)")
assert s.count(a) == 1; s = s.replace(a, b)
open(sys.argv[2], 'w').write(s)
EOF
rm -f "$C/plane_audit_manifest.py"; mv "$C/plane_audit_manifest.py.new" "$C/plane_audit_manifest.py"
# plane_tree_certificate.py: a tree may also hold transfer leaves (ext_transfer.py), and its receipt names their targets
python3 - "$PINNED/TripleClassification/code/plane_tree_certificate.py" "$C/plane_tree_certificate.py.new" <<'EOF2'
import sys
s = open(sys.argv[1]).read()
rep = [
 ("def walk(node,level,cell,check_leaf,counts=None):", "def walk(node,level,cell,check_leaf,counts=None,check_transfer=None):"),
 ("            walk(child,level+1,[2*c+b for c,b in zip(cell,bits)],check_leaf,counts)",
  "            walk(child,level+1,[2*c+b for c,b in zip(cell,bits)],check_leaf,counts,check_transfer)"),
 ("    else:\n        require(set(node)=={'input','proposal'},'unresolved tree leaf')",
  "    elif 'transfer' in node and check_transfer is not None:   # pr4ext: closed by a certified equivalence into another ball\n"
  "        require(set(node)=={'transfer'},'invalid transfer leaf')\n"
  "        check_transfer(node['transfer'],level,cell);counts['transfer']=counts.get('transfer',0)+1\n"
  "    else:\n        require(set(node)=={'input','proposal'},'unresolved tree leaf')"),
 ("    counts=walk(tree['tree'],entry['level'],entry['cell'],check_leaf)\n    classified=any(leaf['status']=='CERTIFIED_CLASSIFIED_RECORDED_H_CELL' for leaf in leaves)",
  "    import ext_transfer as _X;targets=[]   # pr4ext: transfer leaves, and the balls they need closed\n"
  "    counts=walk(tree['tree'],entry['level'],entry['cell'],check_leaf,\n"
  "                check_transfer=lambda spec,level,cell:targets.append(_X.check(root,entry['ball'],level,cell,spec)))\n"
  "    classified=any(leaf['status']=='CERTIFIED_CLASSIFIED_RECORDED_H_CELL' for leaf in leaves) or bool(targets)"),
 ("        counts=counts,leaves=leaves,checker_sha256=digest(__file__),",
  "        counts=counts,leaves=leaves,checker_sha256=digest(__file__),transfer_targets=sorted(set(targets)),"),
 ("        require(result['status'] in ('CERTIFIED_EMPTY_RECORDED_H_CELL','CERTIFIED_CLASSIFIED_RECORDED_H_CELL'),",
  "        require(result['status'] in ('CERTIFIED_EMPTY_RECORDED_H_CELL','CERTIFIED_CLASSIFIED_RECORDED_H_CELL',\n"
  "                                     'CERTIFIED_MINIMUM_TRANSITION_RECORDED_H_CELL'),   # pr4ext: restricted scope"),
 ("    return dict(schema='tc-plane-tree-receipt-v1',status='CERTIFIED_CLASSIFIED_DYADIC_CELL' if classified else\n        'CERTIFIED_EMPTY_DYADIC_CELL',",
  "    restricted=any(leaf['status']=='CERTIFIED_MINIMUM_TRANSITION_RECORDED_H_CELL' for leaf in leaves)   # pr4ext\n"
  "    return dict(schema='tc-plane-tree-receipt-v2',status='CERTIFIED_MINIMUM_TRANSITION_DYADIC_CELL' if restricted else\n"
  "        'CERTIFIED_CLASSIFIED_DYADIC_CELL' if classified else 'CERTIFIED_EMPTY_DYADIC_CELL',"),
 ("        scope='Every completing K on the intersection",
  "        scope=('Restricted (minimum-transition) scope, Gamma_F(H) <= Gamma_F(K), Gamma_F(L): ' if restricted else '')+'Every completing K on the intersection"),
]
for a, b in rep:
    a = a.replace('\\n', '\n'); b = b.replace('\\n', '\n')
    assert s.count(a) == 1, a[:60]; s = s.replace(a, b)
open(sys.argv[2], 'w').write(s)
EOF2
rm -f "$C/plane_tree_certificate.py"; mv "$C/plane_tree_certificate.py.new" "$C/plane_tree_certificate.py"
cmp -s "$PINNED/TripleClassification/code/plane_cell_certificate.py" "$C/plane_cell_certificate.py" && echo "built $EXT"
