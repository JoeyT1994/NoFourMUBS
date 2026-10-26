"""Replay the reconstruction proofs used by PROOF.md (Theorem 2.5 and the side fibre); never edits root verify.py."""
import hashlib,json,os,subprocess,sys,time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

HERE=Path(__file__).resolve().parent
CHECKS=['verify_invariants.py','verify_side_fiber.py','verify_critical_reduction.py',
        'verify_fourier_critical.py','verify_endpoint_counting.py','verify_critical_square_sums.py',
        'verify_critical_scalar_classification.py','verify_strict_corner_coverage.py']


def run_one(name):
    t=time.monotonic()
    result=subprocess.run([sys.executable,str(HERE/name)],env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1'),
                          text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
    return name,result,time.monotonic()-t


def run(jobs=8):
    """The verifiers are independent; they run concurrently (jobs at a time), reported in CHECKS order."""
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
                 [HERE/'critical_quartic.json',HERE.parent/'RECONSTRUCTION.md'])
    hashes={str(p.relative_to(HERE.parents[1])):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}
    return dict(status='PASS_RECONSTRUCTION_PROOF_DOSSIER_REPLAY',checks=records,
                input_sha256=hashes,seconds=time.monotonic()-start,
                scope='Exact identities, outward witnesses and finite censuses for strict-corner coverage (PROOF.md Theorem 2.5) and the side fibre (Lemma 2.1). No classification input. Not a proof-assistant formalization.')


if __name__=='__main__':print(json.dumps(run(),indent=2))
