"""The pinned files are loaded only when every one matches its SHA-256 manifest, the manifest its recorded hash, and
the native binding its pinned id; nothing loaded from the repository may shadow a pinned file."""
import os, shutil, subprocess, sys
import pytest
from conftest import PACKAGE
from certifier import pinned


def fake_root(tmp_path):
    """A copy of the pinned files at their repository paths, with this package inside it."""
    root = tmp_path / 'repo'
    for rel, (path, _) in pinned.files().items():
        if rel not in pinned.PR4: (root / rel).parent.mkdir(parents=True, exist_ok=True); shutil.copy(path, root / rel)
    shutil.copytree(os.path.join(PACKAGE, 'certifier'), root / 'TripleClassification/certifier/certifier',
                    ignore=shutil.ignore_patterns('__pycache__'))
    return root


def load(root):
    return subprocess.run([sys.executable, '-c', 'import certifier.pinned'], cwd=root / 'TripleClassification/certifier',
                          capture_output=True, text=True, env=dict(os.environ, MUB_CERTIFIER_ROOT=str(root)))


def test_copy_of_the_pinned_files_loads(tmp_path):
    q = load(fake_root(tmp_path)); assert q.returncode == 0, q.stderr


@pytest.mark.parametrize('target,message', [
    ('TripleClassification/code/gamma_test.py', 'pinned file changed'),
    ('proof/theorems/TC_triple_classification/family_neighbourhoods/run.py', 'pinned file changed'),
    ('TripleClassification/certifier/certifier/pr4/plane_cell_certificate.py', 'pinned file changed'),
    ('TripleClassification/certifier/certifier/PINNED.sha256', 'pinned manifest has changed')])
def test_changed_pinned_file_refused(tmp_path, target, message):
    root = fake_root(tmp_path)
    with open(root / target, 'a') as f: f.write('\n')
    q = load(root); assert q.returncode != 0 and message in q.stderr


def test_extra_native_source_refused(tmp_path):
    root = fake_root(tmp_path)              # a new file the native binding hashes changes the binding
    (root / 'proof/theorems/TC_triple_classification/family_neighbourhoods/extra.py').write_text('')
    q = load(root); assert q.returncode != 0 and 'native source binding changed' in q.stderr


def test_pinned_modules_and_binding():
    assert pinned.native.binding(pinned.ATLAS)['id'] == pinned.NATIVE_BINDING
    assert pinned.atlas_size() == 2775
    pinned.require_pinned_modules()
