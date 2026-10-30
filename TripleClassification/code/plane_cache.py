"""Replay cache for whole-cell (plane) proofs, shared by audit_select.py and rusty/plane_prereplay.py (live loop only;
verify_ball.py never uses it).

An entry 'certified' under a key means the pinned plane checker certified that exact cell from byte-identical files.
The key hashes everything a replay reads: the manifest's entry and tree hashes, the tree file and every leaf input and
proposal it names (re-hashed when the key is computed), the checker sources the manifest pinned, and the cell.
A cache is the union of FILE and its siblings replay_cache*.json in the same directory (one writer per file).
"""
import glob, hashlib, json, os
from pathlib import Path


def sha(p):
    h = hashlib.sha256()
    with open(p, 'rb') as f:
        for c in iter(lambda: f.read(1 << 20), b''): h.update(c)
    return h.hexdigest()


def jsonsha(x):
    return hashlib.sha256(json.dumps(x, sort_keys=True).encode()).hexdigest()


def key(item, tree_path, checker_sources, level, cell):
    tree_path = Path(tree_path); leaves = []

    def walk(node):
        if isinstance(node, dict):
            for k in ('input', 'proposal'):
                if k in node:
                    q = Path(node[k]['path']); q = q if q.is_absolute() else tree_path.parent / q
                    leaves.append(sha(q) if q.is_file() else None)
            for v in node.values(): walk(v)
        elif isinstance(node, list):
            for v in node: walk(v)
    walk(json.load(open(tree_path))['tree'])
    return jsonsha([item['entry']['sha256'], item['tree']['sha256'], sha(tree_path), leaves, checker_sources, level, list(cell)])


def load(path):
    out = {}
    path = Path(path)
    for p in sorted(glob.glob(str(path.parent / 'replay_cache*.json'))):
        try: out.update(json.load(open(p)))
        except (OSError, ValueError): pass
    return out


def save(path, d):
    path = Path(path); tmp = str(path) + '.new'
    with open(tmp, 'w') as f: json.dump(d, f)
    os.replace(tmp, path)
