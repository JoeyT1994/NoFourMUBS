"""Replay the local reconstruction proof dossier; never edits root verify.py."""
import hashlib,json,os,subprocess,sys,time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

HERE=Path(__file__).resolve().parent
CHECKS=['verify_invariants.py','verify_provenance.py','verify_side_fiber.py',
        'verify_matching_bridge.py','verify_tao_pairings.py',
        'verify_all_corner_matching_witness.py','verify_exceptional_matching.py',
        'verify_critical_reduction.py','verify_fourier_critical.py',
        'verify_fourier_routing.py','verify_critical_p7.py',
        'verify_critical_equicorrelation.py','verify_critical_square_sums.py',
        'verify_critical_scalar_classification.py','verify_strict_corner_coverage.py']


def run_one(name):
    t=time.monotonic()
    result=subprocess.run([sys.executable,str(HERE/name)],env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1'),
                          text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
    return name,result,time.monotonic()-t


def run(jobs=8):
    """The fifteen verifiers are independent; they run concurrently (jobs at a time), reported in CHECKS order."""
    start=time.monotonic();records=[]
    with ThreadPoolExecutor(max(1,min(jobs,os.cpu_count() or 1))) as pool:
        results=list(pool.map(run_one,CHECKS))
    for name,result,seconds in results:
        assert result.returncode==0,(name,result.stdout)
        assert 'PASS' in result.stdout,(name,'missing success report')
        records.append(dict(verifier=name,status='PASS',seconds=seconds,
                            output_sha256=hashlib.sha256(result.stdout.encode()).hexdigest()))
        print('PASS',name,flush=True)
    paths=sorted(list(HERE.glob('*.py'))+list(HERE.glob('*.md'))+
                 [HERE/'critical_quartic.json',HERE.parent/'ASSUMPTIONS.md',
                  HERE.parent/'RECONSTRUCTION.md',
                  HERE.parents[1]/'ClassificationPaper/source/paper_body.tex',
                  HERE.parents[1]/'ClassificationPaper/source/supp_body.tex'])
    hashes={str(p.relative_to(HERE.parents[1])):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}
    return dict(status='PASS_RECONSTRUCTION_PROOF_DOSSIER_REPLAY',checks=records,
                input_sha256=hashes,seconds=time.monotonic()-start,
                scope='Algebra, outward witnesses, finite censuses and provenance for the written MC1–MC5 proofs. ClassificationPaper results and the explicit analytic arguments remain proof inputs; this is not a proof-assistant formalization.')


if __name__=='__main__':print(json.dumps(run(),indent=2))
