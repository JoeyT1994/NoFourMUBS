"""Use the sealed v2 implementation without editing or copying its data."""
import importlib.util
import sys
from pathlib import Path
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
BASE = HERE.with_name('ActiveShoulderClosure_v2')
if str(BASE) not in sys.path: sys.path.append(str(BASE))

def load_base(name):
    key = '_shoulder_v2_' + name
    if key in sys.modules: return sys.modules[key]
    spec = importlib.util.spec_from_file_location(key, BASE / (name + '.py'))
    obj = importlib.util.module_from_spec(spec)
    sys.modules[key] = obj
    spec.loader.exec_module(obj)
    return obj
