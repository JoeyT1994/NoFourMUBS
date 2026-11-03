"""The certificate format: reading and writing it.

A certificate of a ball B is a dyadic tree over B's chart, `tree.json`, and the leaves' files:

    {"schema": "onetree-v2", "ball": B, "root": [level, [c0, c1, c2, c3]], "tree": NODE}
    NODE = {"children": [16 NODEs, in the order of cells.children]}
         | {"outside": true}                              the closed cell misses the closed ball
         | {"native": "<level>_<c0>_<c1>_<c2>_<c3>"}       a native leaf, with <name>.json.gz below level 0 (none at 0)
         | {"normal_form": "<level>_<c0>_<c1>_<c2>_<c3>"}  a normal-form leaf, with <name>.json.gz

B is a seed ball's atlas index, or for any other ball the key "r<first 16 hex digits of its record's SHA-256>", with
the record itself under "record". The root is [0, [0, 0, 0, 0]] for a whole ball. A leaf is named by its own
position. Its file holds the cell's H record, and for a normal-form leaf the witness's certificate:

    {"schema": "tc-h-cell-input-v1", "ball": B, "level": L, "cell": [...], "record": {...}, "record_sha256": ...,
     "normal_form": {exact proposals and a replay plan for every pattern of the cell's complete cover},
     "ordering": {pattern: an ordering witness, for patterns discharged that way (optional)}}

The leaf files are members `leaves/<file>` of one uncompressed tar. Three layouts are read:

    DIR/tree.json + DIR/leaves.tar     (packed: what `close` writes)
    DIR/tree.json + DIR/leaves/<file>  (unpacked)
    FILE.tar holding tree.json and leaves/<file>, or tree.json and leaves.tar (a packed directory, tarred), optionally
             under one top-level directory
"""
import gzip, io, json, os, tarfile
from pathlib import Path
from . import cells

SCHEMA = 'onetree-v2'
LEAF = '.json.gz'
RECORD_KEYS = ('schema', 'ball', 'level', 'cell', 'record', 'record_sha256')


def leaf(data):
    """A leaf's file, as bytes: the cell's record (the RECORD_KEYS of `data`), with a normal-form leaf's certificate."""
    x = {k: data[k] for k in RECORD_KEYS}
    if 'normal_form' in data: x['normal_form'] = data['normal_form']
    if 'ordering' in data: x['ordering'] = data['ordering']
    return gz(x)


def gz(x): return gzip.compress(json.dumps(x, separators=(',', ':')).encode(), mtime=0)


class Certificate:
    def __init__(self, path):
        path = Path(path)
        self.path = path; self.members = {}; self.tar = None
        if path.is_dir():
            self.tree = json.loads((path / 'tree.json').read_bytes())
            if (path / 'leaves').is_dir(): self.dir = path / 'leaves'
            elif (path / 'leaves.tar').exists(): self.dir = None; self._index(path / 'leaves.tar', '')
            else: self.dir = None                   # no leaf files (a native whole-ball certificate needs none)
        else:
            self.dir = None; self._index(path, None)
            if 'tree.json' not in self.members: raise ValueError('no tree.json in %s' % path)
            self.tree = json.loads(self.read('tree.json'))

    def _index(self, tar, prefix):
        """Offsets of the tar's regular members, built once; workers then read members by seeking."""
        self.tar = str(tar)
        with tarfile.open(tar) as t:
            names = {m.name: (m.offset_data, m.size) for m in t if m.isfile()}
            if prefix is None:                     # a whole-certificate tar, possibly under one top-level directory
                tops = {n.split('/', 1)[0] for n in names if '/' in n and not n.startswith('leaves/')}
                top = tops.pop() + '/' if 'tree.json' not in names and len(tops) == 1 else ''
                names = {n[len(top):]: v for n, v in names.items() if n.startswith(top)}
                if 'leaves.tar' in names and not any(n.startswith('leaves/') for n in names):
                    base = names['leaves.tar'][0]  # a packed directory, tarred: its leaves.tar's members, in place
                    with tarfile.open(fileobj=t.extractfile(top + 'leaves.tar')) as inner:
                        names.update({m.name: (base + m.offset_data, m.size) for m in inner if m.isfile()})
        self.members = names

    def read(self, member):
        """A member's bytes (`tree.json` or `leaves/<file>`), or None if it is absent."""
        if self.dir is not None:
            p = self.dir / member[len('leaves/'):]
            return p.read_bytes() if member.startswith('leaves/') and p.is_file() else None
        if member not in self.members: return None
        off, size = self.members[member]
        with open(self.tar, 'rb') as f: f.seek(off); return f.read(size)

    def extract(self, name, folder):
        """Write the leaf file `name` into `folder` (the checks read files by path); its path, or None."""
        data = self.read('leaves/' + name)
        if data is None: return None
        p = os.path.join(folder, name)
        with open(p, 'wb') as f: f.write(data)
        return p

    def nodes(self, ball=None):
        """The tree's nodes to verify, and the nodes it leaves unresolved: ([(kind, level, cell)], [(level, cell, why)]).
        kind is 'outside', 'native' or 'normal_form'."""
        t = self.tree
        if not (isinstance(t, dict) and t.get('schema') == SCHEMA and (type(t.get('ball')) is int or
                isinstance(t.get('ball'), str) and isinstance(t.get('record'), dict))):
            raise ValueError('not a one-tree certificate')
        if isinstance(t['ball'], str):                     # a ball given by its record: the key must be the record's
            from . import pinned
            if pinned.register(t['record']) != t['ball']: raise ValueError('the ball key is not its record\'s')
        if ball is not None and t['ball'] != ball: raise ValueError('this is a certificate of ball %d' % t['ball'])
        level, cell = t['root']
        if not (type(level) is int and 0 <= level <= 30 and isinstance(cell, list) and len(cell) == 4 and
                all(type(c) is int and 0 <= c < 2 ** level for c in cell)): raise ValueError('invalid root cell')
        jobs, bad = [], []
        def walk(node, level, cell):
            if isinstance(node, dict) and 'children' in node:
                if set(node) == {'children'} and isinstance(node['children'], list) and len(node['children']) == 16:
                    for child, k in zip(node['children'], cells.children(level, cell)): walk(child, *k)
                else: bad.append((level, cell, 'incomplete partition'))
            elif node == {'outside': True}: jobs.append(('outside', level, cell))
            elif isinstance(node, dict) and len(node) == 1 and next(iter(node)) in ('native', 'normal_form') and \
                    next(iter(node.values())) == cells.name(level, cell):
                jobs.append((next(iter(node)), level, cell))
            else: bad.append((level, cell, 'unresolved node'))
        walk(t['tree'], level, cell)
        return jobs, bad


def write(out, tree, files):
    """A packed certificate directory: tree.json, and leaves.tar holding `files` ({name: bytes}) if there are any."""
    out = Path(out); out.mkdir(parents=True)
    (out / 'tree.json').write_text(json.dumps(tree))
    if files:
        with tarfile.open(out / 'leaves.tar', 'w', format=tarfile.PAX_FORMAT) as t:
            for name in sorted(files):
                info = tarfile.TarInfo('leaves/' + name); info.size = len(files[name]); t.addfile(info, io.BytesIO(files[name]))
