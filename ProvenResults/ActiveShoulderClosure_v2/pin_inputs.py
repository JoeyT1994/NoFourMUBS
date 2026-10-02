"""Release helper: regenerate pins only after review/replay, not in verify."""
import hashlib,json,sys
from pathlib import Path
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def main():
    files=[];selected={}
    def add(path,role):
        path=ROOT/path
        if path.is_dir():
            for p in path.rglob('*'):
                if p.is_file() and '__pycache__' not in p.parts and p.suffix not in ('.pyc',):selected[p]=role
        elif path.is_file():selected[path]=role
        else:raise FileNotFoundError(path)
    add('MinimalConstruction/ASSUMPTIONS.md','A1-A4 statement and chronological updates')
    add('MinimalConstruction/RECONSTRUCTION.md','A2/A4 side formulas')
    add('MinimalConstruction/Proofs','A1-A4 proof dossier; research/historical files pinned as context, not extra axioms')
    for p in ['ClassificationPaper/source/paper_body.tex','ClassificationPaper/source/supp_body.tex','ClassificationPaper/source/ref.bib']:add(p,'stated ClassificationPaper imports')
    add('NumericalCampaign/REDUCTION.md','E1 citation and quartet reduction context')
    add('PROOF_OF_RECORD.md','scope, evidence terminology and release gates')
    add('Incoming/ActiveF6ProductionClosure_docs_2026-10-01/PROOF.md','root/completion kernel specification; missing implementation not assumed proved by local replay')
    add('ProvenResults/BalancedProducts/BalancedFourSeedIdentity.md','side symmetric moment formulas')
    add('ProvenResults/CornerBounds/PROOF.md','complementary-corner square theorem')
    add('ProvenResults/CornerBounds/SideColumnPrune/prune.py','six-sine normalization provenance')
    add('ProvenResults/CornerBounds/SideColumnPrune/verify.py','exact normalization audit provenance')
    for name in ['WideFamilyTube','PracticalTube','ClusterTube']:
        add('ProvenResults/FourierNeighbourhood/'+name,'adopted proved matrix-tube dependency and its finite assets')
    for name in ['MOVING_REFERENCE.md','moving_reference_lift.py','verify_moving_reference.py','ATLAS_RIGIDITY.md']:
        add('ProvenResults/FourierNeighbourhood/SeedLifting/'+name,'moving reference symmetries; atlas rigidity is context only')
    for name in ['T2_F6_cluster_tube_2026-09-29','T2_F6_expanded_tube_2026-09-29','T2_moving_reference_2026-09-29','T2_practical_partition_2026-09-28','T2_practical_tube_2026-09-28','T2_regional_matrix_tubes_2026-09-29']:
        add('Verification/'+name,'retained upstream matrix-tube evidence, not a new replay claim')
    add('ProvenResults/FourierNeighbourhood/SeedLifting','root-free side-cover proof, guarded cube template and code dependencies')
    for name in ['SideColumnPrune','SideTriplePrune','PairedSidePrune']:
        add('ProvenResults/CornerBounds/'+name,'root-free exhaustive side cover and outward R bounds')
    add('ProvenResults/CornerBounds/verify.py','independent determinant identities for PSD terminal audit')
    add('ProvenResults/SignedCornerPSDPrune','whole-box strict-D0 exclusion and independent minor replay')
    add('ProvenResults/CommonRays/ClusterCover','accelerated common-ray cover theorem and controls')
    add('NumericalCampaign/Certification','production accelerated cover, Taylor models, pinned Julia environment')
    for name in ['driver.jl','cluster/build_bundle.sh','cluster/audit_exact.py']:
        add('NumericalCampaign/Campaign/'+name,'frozen production bundle hash definition and exact file census')
    add('ProvenResults/Sheets','opposite-sheet conjugation for campaign reduction')
    for p,role in sorted(selected.items()):files.append(dict(base='repository',path=str(p.relative_to(ROOT)),sha256=sha(p),role=role))
    excluded={'INPUTS.json','MANIFEST.sha256','DELIVERY.sha256','RESULTS.md'}
    for p in sorted(HERE.rglob('*')):
        if p.is_file() and p.name not in excluded and '__pycache__' not in p.parts and not any(x in p.relative_to(HERE).parts for x in ('replay','preflight')) and p.suffix not in ('.zip','.pyc'):
            files.append(dict(base='module',path=str(p.relative_to(HERE)),sha256=sha(p),role='additive module source or retained data'))
    data=dict(format=1,source_archive=dict(name='NoFourMUBS_shoulder_standalone_2026-10-01.zip',sha256='a0229a00aeb89ced726272c1c4484eaaa2b119d7ad6819f37571895d05271eb6'),mathematical_scope='Campaign Q uses A3/MC5 and the signed-corner PSD and accelerated Hplus-cover theorems; production transport requires both signs. A2/A4 via the supplied proof dossier and its stated ClassificationPaper inputs; adopted matrix-tube theorems. A1 is needed for maximal R=0 boundary points. ActiveF6ProductionClosure is specification only; no implementation or theorem is adopted from it.',external_E1=dict(citation='Jaming, Matolcsi, Mora, Szollosi, Weiner, J. Phys. A 42 (2009) 245305, Theorem 1.4, arXiv:0902.0882',role='context; published theorem is not claimed independently replayed'),files=files)
    (HERE/'INPUTS.json').write_text(json.dumps(data,indent=2,sort_keys=True)+'\n');print(len(files),'pinned files')
if __name__=='__main__':main()
