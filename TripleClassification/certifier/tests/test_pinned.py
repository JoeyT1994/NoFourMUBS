"""The vendored code is loaded only when every file matches its SHA-256 manifest, and the manifest its recorded hash."""
import os, shutil, subprocess, sys
import pytest
from conftest import PACKAGE


@pytest.mark.parametrize('target,message', [
    ('TripleClassification/code/gamma_test.py', 'pinned file changed'),
    ('proof/theorems/TC_triple_classification/family_neighbourhoods/run.py', 'pinned file changed'),
    ('MANIFEST.sha256', 'pinned manifest has changed')])
def test_changed_vendored_file_refused(tmp_path, target, message):
    shutil.copytree(os.path.join(PACKAGE, 'certifier'), tmp_path / 'certifier', ignore=shutil.ignore_patterns('__pycache__'))
    with open(tmp_path / 'certifier' / '_pinned' / target, 'a') as f: f.write('\n')
    q = subprocess.run([sys.executable, '-c', 'import certifier.pinned'], cwd=tmp_path, capture_output=True, text=True)
    assert q.returncode != 0 and message in q.stderr


def test_pinned_modules_and_binding():
    from certifier import pinned
    assert pinned.native.binding(pinned.ATLAS)['id'] == pinned.NATIVE_BINDING
    assert pinned.atlas_size() == 2775
