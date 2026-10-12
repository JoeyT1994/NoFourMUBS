"""Reuse archived counting and strip-sum proofs; no replacement certificates.

Only imports and definitionally equal matrix-model names are adapted.
The original sources stay pinned and hashed in archive_sources/.
"""
from pathlib import Path
import hashlib
import json
from reuse_preflight import require_reuse_review

require_reuse_review('critical_counting')

AUDIT = Path(__file__).resolve().parent
LEAN = AUDIT.parent / 'lean'
DEST = LEAN / 'NoFourMUBs/Reuse/Archive'
DEST.mkdir(parents=True, exist_ok=True)
records = json.loads((AUDIT / 'ARCHIVE_FETCHED_SOURCES.json').read_text())
selected = {
    'CriticalCounts': 'e0f1e50c',
    'CriticalCountApplication': '37844cdd',
    'CriticalRowSum': '34b9f80f',
}
manifest = []
for module, prefix in selected.items():
    record = next(r for r in records if r['module'] == module and r['sha256'].startswith(prefix))
    source = (AUDIT / record['local']).read_text()
    assert hashlib.sha256(source.encode()).hexdigest() == record['sha256']
    if module == 'CriticalCounts':
        edits = [('import RadianSeedBounds', 'import Mathlib.Data.Real.Basic\nimport Mathlib.Tactic')]
    elif module == 'CriticalCountApplication':
        edits = [('import CriticalCounts',
                  'import NoFourMUBs.Reuse.Archive.CriticalCounts\nopen scoped BigOperators')]
    else:
        edits = [('import RadianSeedBounds', 'import OAI.Analysis.MutuallyUnbiased.Matrix.Hadamard'),
                 ('open Mub6 Mub6.Numerical\n', ''),
                 ('BasisMatrix', 'OAI.MUB6.CMatrix'),
                 ('PhaseHadamard', 'OAI.MUB6.IsHadamard')]
    text = source
    for before, after in edits:
        assert before in text, (module, before)
        text = text.replace(before, after)
    reused_row_gram = False
    if module == 'CriticalRowSum':
        # The OAI dependency already has this exact theorem. Use it directly;
        # retaining the archived derivation would duplicate that proof too.
        start = text.index('theorem row_gram ')
        end = text.index('theorem pair_sum ', start)
        text = text[:start] + (
            'theorem row_gram {H : OAI.MUB6.CMatrix} (hH : OAI.MUB6.IsHadamard H) :\n'
            '    H * H.conjTranspose = (6 : ℂ) • (1 : Matrix (Fin 6) (Fin 6) ℂ) :=\n'
            '  hH.row_gram\n\n') + text[end:]
        reused_row_gram = True
    path = DEST / (module+'.lean')
    path.write_text(text)
    manifest.append({**record, 'active_path': str(path.relative_to(LEAN)),
                     'active_sha256': hashlib.sha256(text.encode()).hexdigest(),
                     'adaptations': edits,
                     'row_gram_delegates_to_existing_OAI_theorem': reused_row_gram,
                     'other_proof_bodies_rewritten': False})
(AUDIT / 'ARCHIVE_REUSE_MANIFEST.json').write_text(json.dumps(manifest, indent=2)+'\n')
print('Reused three archived modules; exact import/model adaptations recorded.')
