"""Reuse only the upstream normalization lemmas needed after boundary reuse.

Each generated lemma only changes coordinate indices and clears denominators.
The original moment proof is cited directly, never reproduced.
"""
from pathlib import Path
from fractions import Fraction as Q
from math import lcm
import gzip
import hashlib
import json
import re
from reuse_preflight import require_reuse_review

require_reuse_review('moment_normalization')

ROOT = Path(__file__).resolve().parents[1]
plan = json.loads((ROOT/'audit/sos/NORMALIZATION_PENDING_PLAN.json').read_text())
data = json.load(gzip.open(ROOT/'audit/sos/REDUCTION_DATA.json.gz', 'rt'))
embedding = data['old_embedding']
n = len(data['coordinates'])
source = ROOT/'lean/vendor/fourier/OAI/Analysis/MutuallyUnbiased/PairSemantics'
dst = ROOT/'lean/NoFourMUBs/Step2/SOS'
old = 'OAI.MUB6.Certificate.PairSemantics'
prefix = 'NoFourMUBs.Step2.SOS'
values, sound_modules = {}, {}
for p in source.glob('Values*.lean'):
    for m in re.finditer(r'def value(\d+) : Sparse \(Fin 909\) := (.*)', p.read_text()):
        values[int(m[1])] = {int(i): Q(int(a),int(b)) for i,a,b in
                            re.findall(r'\((\d+), \((-?\d+) / (\d+)\)\)',m[2])}
for p in source.glob('Sound*.lean'):
    for m in re.finditer(r'theorem sound(\d+)\b',p.read_text()):
        sound_modules[int(m[1])] = p.stem
needed = plan['reused_upstream_sound_lemmas']
manifest = {'status':'GENERATED_NOT_YET_KERNEL_CHECKED', 'reused_lemmas':len(needed),
            'unnecessary_old_bridges_excluded':470, 'records':{}, 'files':{}}
for start in range(0,len(needed),64):
    group = needed[start:start+64]
    name = f'OldProjections{start//64:03d}'
    imports = {prefix+'.NormalizationContext'}
    imports.update('OAI.Analysis.MutuallyUnbiased.PairSemantics.'+sound_modules[i] for i in group)
    text = ''.join('import '+m+'\n' for m in sorted(imports))
    text += f'\nnamespace {prefix}.Normalization\nopen OAI.MUB6 OAI.MUB6.Certificate\n'
    text += 'set_option maxRecDepth 10000\nset_option maxHeartbeats 800000\n\n'
    for i in group:
        row = values[i]
        d = lcm(*(c.denominator for c in row.values()))
        entries = sorted((embedding[j],int(d*c)) for j,c in row.items())
        literal = '['+', '.join(f'({j}, {c})' for j,c in entries)+']'
        text += f'def oldProjection{i} : Integer.Sparse (Fin {n}) := {literal}\n\n'
        text += (f'theorem oldProjectionSound{i} {{H : CMatrix}} (hH : IsHadamard H) :\n'
                 f'    ({d} : ℝ) * injectiveMoment H {old}.node{i} =\n'
                 f'      Integer.Sparse.eval oldProjection{i} (momentVector H) := by\n'
                 f'  simpa only [Int.cast_one, Int.cast_ofNat] using\n'
                 f'    (reuse_projection {d} oldEmbedding {old}.value{i} oldProjection{i}\n'
                 f'      (by decide +kernel) (by decide +kernel)\n'
                 f'      (momentVector H) ({old}.momentVector H) (old_moment H)\n'
                 f'      _ ({old}.sound{i} hH))\n\n')
        manifest['records'][i] = {'module':prefix+'.'+name, 'denominator':d,
                                   'projection':entries}
    text += f'end {prefix}.Normalization\n'
    path = dst/(name+'.lean')
    path.write_text(text)
    manifest['files'][path.name] = hashlib.sha256(path.read_bytes()).hexdigest()
(ROOT/'audit/sos/OLD_PROJECTION_MANIFEST.json').write_text(json.dumps(manifest,indent=2)+'\n')
print({'reused_lemmas':len(needed),'files':len(manifest['files'])},flush=True)
