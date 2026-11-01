"""Shared helpers: reading and rewriting certificates, and running the command line."""
import gzip, io, json, os, shutil, subprocess, sys, tarfile
import pytest

PACKAGE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DATA = os.path.join(PACKAGE, 'tests', 'data')


def cli(*args):
    """python -m certifier ARGS; (return code, stdout + stderr)."""
    q = subprocess.run([sys.executable, '-W', 'ignore', '-m', 'certifier', *map(str, args)], capture_output=True, text=True, cwd=PACKAGE)
    return q.returncode, q.stdout + q.stderr


def leaves(cert):
    """{file name: bytes} of a certificate directory's leaves.tar."""
    out = {}
    if os.path.exists(os.path.join(cert, 'leaves.tar')):
        with tarfile.open(os.path.join(cert, 'leaves.tar')) as t:
            out = {m.name[len('leaves/'):]: t.extractfile(m).read() for m in t if m.isfile()}
    return out


def write(cert, tree, files):
    """A packed certificate directory with this tree and these leaf files."""
    os.makedirs(cert, exist_ok=True)
    with open(os.path.join(cert, 'tree.json'), 'w') as f: json.dump(tree, f)
    if os.path.exists(os.path.join(cert, 'leaves.tar')): os.remove(os.path.join(cert, 'leaves.tar'))
    if files:
        with tarfile.open(os.path.join(cert, 'leaves.tar'), 'w') as t:
            for n in sorted(files):
                i = tarfile.TarInfo('leaves/' + n); i.size = len(files[n]); t.addfile(i, io.BytesIO(files[n]))
    return cert


def gz_json(b): return json.loads(gzip.decompress(b))
def to_gz(x): return gzip.compress(json.dumps(x).encode(), mtime=0)


@pytest.fixture
def copy_of(tmp_path):
    """copy_of(name): a fresh copy of tests/data/certificates/<name> (tree.json, leaves.tar)."""
    def f(name):
        d = tmp_path / name; shutil.copytree(os.path.join(DATA, 'certificates', name), d); return str(d)
    return f
