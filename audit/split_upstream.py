"""Move existing declarations, byte for byte, into lightweight shared modules.

No mathematical proof is copied into a second route. The original modules
import the new modules, and retain their classification-specific statements.
"""
from pathlib import Path
import hashlib
import json

ROOT = Path(__file__).resolve().parents[1] / 'lean'
VENDOR = ROOT / 'vendor/hadamard6/Hadamard6'
records = []


def move_blocks(source, target, imports, blocks):
    path = VENDOR / source
    original = text = path.read_text()
    chunks = []
    for start, end in blocks:
        a = text.index(start)
        b = text.index(end, a + len(start))
        chunk = text[a:b]
        chunks.append(chunk)
        text = text[:a] + text[b:]
    module = 'Hadamard6.' + target.removesuffix('.lean')
    text = f'import {module}\n' + text
    header = '\n'.join('import ' + name for name in imports)
    new = header + '\n\n/-! Shared declarations moved unchanged from ' + source + '. -/\n\n'
    new += 'noncomputable section\nnamespace Hadamard6\n\n'
    new += ''.join(chunks) + '\nend Hadamard6\n'
    assert all(chunk in new and chunk not in text for chunk in chunks)
    path.write_text(text)
    (VENDOR / target).write_text(new)
    records.append({
        'from': source, 'to': target,
        'original_sha256': hashlib.sha256(original.encode()).hexdigest(),
        'moved_blocks_sha256': [hashlib.sha256(x.encode()).hexdigest() for x in chunks],
        'declaration_bodies_changed': False,
    })


move_blocks('TaoAtlas.lean', 'StandardPhase.lean',
            ['Hadamard6.TaoOrbit', 'Mathlib.Analysis.SpecialFunctions.Sqrt'],
            [('/-- A fixed primitive cubic phase', 'def taoE')])
move_blocks('KarlssonFourierSeam.lean', 'AffineFourierCore.lean',
            ['Hadamard6.TaoOrbit', 'Hadamard6.UnitSymmetric', 'Hadamard6.BlockGram'],
            [("/-- The paper's displayed affine-Fourier family", '/-- The affine-Fourier seam lies')])
move_blocks('HadamardQuotient.lean', 'HadamardQuotientCore.lean',
            ['Hadamard6.TaoOrbit'],
            [('/-- The type of order-six Hadamard matrices before quotienting.', 'def FiniteCornerAtlasClass'),
             ('def TaoClass :', 'def FiniteCornerAtlasClasses'),
             ('def TaoClasses :', '@[simp] theorem finiteCornerAtlasClass_mk'),
             ('@[simp] theorem taoClass_mk', '/-- Tao containment in the quotient atlas')])

replacements = {
    'NoFourMUBs/Basic.lean': [('import Hadamard6\n', 'import Hadamard6.Basic\n')],
    'NoFourMUBs/Skeleton.lean': [('import NoFourMUBs.Basic\n', 'import NoFourMUBs.Basic\nimport Hadamard6.TaoOrbit\n')],
    'NoFourMUBs/Step2/Statements.lean': [('import Hadamard6.PaperTheorem\n',
        'import Hadamard6.AffineFourierCore\nimport Hadamard6.StandardPhase\n')],
    'NoFourMUBs/Step2/QuotientTopology.lean': [('import Hadamard6.HadamardQuotient\n',
        'import Hadamard6.HadamardQuotientCore\n')],
    'NoFourMUBs/Step2/MatchedUnique.lean': [('import NoFourMUBs.Step2.SidePerm\n',
        'import NoFourMUBs.Step2.SidePerm\nimport Hadamard6.BlockGram\nimport Hadamard6.BlockCompletion\n')],
}
for name, edits in replacements.items():
    path = ROOT / name
    text = path.read_text()
    for old, new in edits:
        assert text.count(old) == 1
        text = text.replace(old, new)
    path.write_text(text)

(ROOT.parent / 'audit/SHARED_MODULE_EXTRACTION.json').write_text(
    json.dumps(records, indent=2) + '\n')
print('Moved existing declarations into three shared modules; no duplicate declarations.')
