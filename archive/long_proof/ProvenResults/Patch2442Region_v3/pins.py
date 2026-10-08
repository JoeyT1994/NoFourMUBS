from pathlib import Path
import hashlib,json,sys
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
def sha(p):
 h=hashlib.sha256()
 with Path(p).open('rb') as f:
  for chunk in iter(lambda:f.read(1024*1024),b''):h.update(chunk)
 return h.hexdigest()
def check():
 if not __debug__:raise ValueError('Python -O forbidden')
 import mpmath
 if sys.version_info[:2]!=(3,11) or mpmath.__version__!='1.3.0':raise ValueError('require Python 3.11 and mpmath 1.3.0')
 for base,name in [(ROOT,'PINNED_UPSTREAM.json'),(HERE,'INPUTS.json')]:
  manifest=json.loads((HERE/name).read_text())
  for q in manifest['files']:
   p=base/q['path']
   if not p.is_file() or sha(p)!=q['sha256']:raise ValueError('SHA-256 mismatch: '+str(p))
 return {'python':sys.version.split()[0],'mpmath':mpmath.__version__}
