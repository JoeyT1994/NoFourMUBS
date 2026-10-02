"""Replay the retained proofs' algebra/certificates in an isolated copy.

The written analytic arguments supply universal scope. This runner neither
rebuilds Lean nor proves the external reconstruction inputs or a MUB bound.
"""
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
import argparse, hashlib, importlib.metadata, json, os, platform
import shutil, signal, subprocess, sys, tempfile, time

ROOT=Path(__file__).resolve().parent
CHECKS=[
 ('fasttm_invariant','ProvenResults/FastTMInvariant/verify.py'),
 ('strict_side_guards','ProvenResults/StrictSideGuards/verify.py'),
 ('certificate_arithmetic','ProvenResults/CertificateArithmetic/verify.py'),
 ('dyadic_tiling','ProvenResults/DyadicTiling/verify.py'),
 ('reconstruction_proofs','MinimalConstruction/Proofs/verify_dossier.py'),
 ('reconstruction','MinimalConstruction/Implementation/verify.py'),
 ('single_radical','MinimalConstruction/Implementation/verify_single_radical.py'),
 ('balanced_polynomial','ProvenResults/BalancedProducts/BalancedFourSeedIdentity.py'),
 ('balanced_all_corners','ProvenResults/BalancedProducts/BalancedAllCornersCertificate.py'),
 ('phase_orbits','ProvenResults/RelativePhases/PhaseGaugeObstruction.py'),
 ('relative_phase_kernel','ProvenResults/RelativePhases/RelativePhaseCompatibility.py'),
 ('fourier_blocks','ProvenResults/FourierBlocks/FourierBlockClassification.py'),
 ('aligned_anchor','ProvenResults/AnchorElimination/SmallAnchorElimination.py'),
 ('anchor_inequalities','ProvenResults/AnchorInequalities/verify.py'),
 ('completion','ProvenResults/Completion/verify.py'),
 ('frame_potential','ProvenResults/SpectralMoments/FramePotential.py'),
 ('edge_rigidity','ProvenResults/EdgeRigidity/verify.py'),
 ('tao_exclusion','ProvenResults/ExceptionalEndpoints/Tao/verify.py'),
 ('common_rays_finite_algebra','ProvenResults/CommonRays/finite_algebra/verify.py'),
 ('common_rays_collisions','ProvenResults/CommonRays/collisions/verify.py'),
 ('common_rays_alignment','ProvenResults/CommonRays/alignment/verify.py'),
 ('cluster_cover','ProvenResults/CommonRays/ClusterCover/verify.py'),
 ('cluster_cover_acceleration','ProvenResults/CommonRays/ClusterCover/verify_acceleration.py'),
 ('triangle_nullities','ProvenResults/Triples/TriangleNullities.py'),
 ('quadratic_phase_cone','ProvenResults/RelativePhases/QuadraticPhaseCone.py'),
 ('covariance_contraction','ProvenResults/Triples/CovarianceContraction.py'),
 ('sharp_three_row','ProvenResults/Triples/ThreeRowGram/SharpBound.py'),
 ('gram_equality_branches','ProvenResults/Triples/ThreeRowGram/EqualityBranches.py'),
 ('positive_weight_equality','ProvenResults/Triples/ThreeRowGram/PositiveWeight.py'),
 ('h8_mates','ProvenResults/Triples/ThreeRowGram/H8Mates.py'),
 ('fourier_neighbourhood','ProvenResults/FourierNeighbourhood/verify.py'),
 ('fourier_neighbourhood_family','ProvenResults/FourierNeighbourhood/verify_seed_family.py'),
 ('fourier_seed_atlas','ProvenResults/FourierNeighbourhood/SeedAtlas/verify.py'),
 ('fourier_uniform_tube','ProvenResults/FourierNeighbourhood/UniformTube/verify.py'),
 ('fourier_practical_tube','ProvenResults/FourierNeighbourhood/PracticalTube/verify_partition.py'),
 ('fourier_practical_audit','ProvenResults/FourierNeighbourhood/PracticalTube/audit.py'),
 ('fourier_practical_controls','ProvenResults/FourierNeighbourhood/PracticalTube/verify_controls.py'),
 ('fourier_seed_lifting','ProvenResults/FourierNeighbourhood/SeedLifting/verify.py'),
 ('fourier_atlas_rigidity','ProvenResults/FourierNeighbourhood/SeedLifting/atlas_rigidity.py'),
 ('fourier_atlas_linear_gap','ProvenResults/FourierNeighbourhood/SeedLifting/linear_gap.py'),
 ('fourier_conservative_lift','ProvenResults/FourierNeighbourhood/SeedLifting/verify_lift.py'),
 ('fourier_direct_lift','ProvenResults/FourierNeighbourhood/SeedLifting/verify_direct_lift.py'),
 ('fourier_small_R_obstruction','ProvenResults/FourierNeighbourhood/SeedLifting/small_R_obstruction.py'),
 ('fourier_f6_cluster_tube','ProvenResults/FourierNeighbourhood/ClusterTube/verify.py'),
 ('fourier_R_zero_lift','ProvenResults/FourierNeighbourhood/SeedLifting/verify_rzero_lift.py'),
 ('fourier_matched_cover_lift','ProvenResults/FourierNeighbourhood/SeedLifting/verify_side_cover_lift.py'),
 ('fourier_regional_tubes','ProvenResults/FourierNeighbourhood/WideFamilyTube/verify.py'),
 ('fourier_regional_audit','ProvenResults/FourierNeighbourhood/WideFamilyTube/audit.py'),
 ('fourier_regional_seed_lift','ProvenResults/FourierNeighbourhood/SeedLifting/verify_family_side_lift.py'),
 ('fourier_f6_expanded_tube','ProvenResults/FourierNeighbourhood/ClusterTube/verify_expanded.py'),
 ('fourier_residual_lift','ProvenResults/FourierNeighbourhood/SeedLifting/verify_residual_lift.py'),
 ('fourier_production_seed_cube','ProvenResults/FourierNeighbourhood/SeedLifting/verify_production_cube.py'),
 ('fourier_zero_neighbourhood','ProvenResults/FourierNeighbourhood/SeedLifting/verify_zero_neighbourhood.py'),
 ('fourier_max_corner_R','ProvenResults/FourierNeighbourhood/SeedLifting/verify_fourier_max_R.py'),
 ('fourier_near_F6_closure','ProvenResults/FourierNeighbourhood/SeedLifting/verify_near_f6.py'),
 ('fourier_analytic_radius_extension','ProvenResults/FourierNeighbourhood/SeedLifting/verify_analytic_radius_extension.py'),
 ('fourier_f3_joint_lift','ProvenResults/FourierNeighbourhood/F3JointLift/verify.py'),
 ('fourier_branch_reference','ProvenResults/FourierNeighbourhood/SeedLifting/verify_branch_reference.py'),
 ('fourier_corner_rigidity','ProvenResults/FourierCornerRigidity/verify.py'),
 ('chart_conditioning','ProvenResults/ChartConditioning/verify.py'),
 ('effective_confinement','ProvenResults/EffectiveConfinement/verify.py'),
 ('symmetric_signed_corner_prune','ProvenResults/SymmetricSignedCornerPrune/verify.py'),
 ('signed_corner_psd_prune','ProvenResults/SignedCornerPSDPrune/verify.py'),
 ('fourier_neighbourhood_tests','ProvenResults/FourierNeighbourhood/tests/test_certificate.py'),
 ('fourier_neighbourhood_nonvacuity','ProvenResults/FourierNeighbourhood/nonvacuity.py'),
 ('four_plus_one','ProvenResults/FourthBasis/FourPlusOne/verify.py'),
 ('flat_complement','ProvenResults/FourthBasis/FlatComplement/verify.py'),
 ('four_basis_chirality','ProvenResults/FourthBasis/Chirality/verify.py'),
 ('ghost_factors','ProvenResults/FourthBasis/GhostFactors/verify.py'),
 ('sheet_conjugation','ProvenResults/Sheets/verify.py'),
 ('side_branch_lemma','ProvenResults/Sheets/verify_branch_lemma.py'),
 ('corner_boundary_bounds','ProvenResults/CornerBounds/verify.py'),
 ('side_column_prune','ProvenResults/CornerBounds/SideColumnPrune/verify.py'),
 ('side_triple_prune','ProvenResults/CornerBounds/SideTriplePrune/verify.py'),
 ('paired_side_prune','ProvenResults/CornerBounds/PairedSidePrune/verify.py'),
 ('campaign_layer_second_pass','ProvenResults/CornerBounds/CampaignSecondPass/verify.py'),
 ('local_branch_R_gap','ProvenResults/CornerBounds/LocalBranchGap/verify.py'),
 ('campaign_layer_coverage','ProvenResults/CampaignLayerCoverage/verify.py'),
 ('regular_side_charts','ProvenResults/RegularSideCharts/verify.py'),
 ('t6_residual_cells','ProvenResults/RegularSideCharts/ResidualCells/verify.py'),
 ('count_two','ProvenResults/Quartets/CountTwo/verify.py'),
 ('count_six','ProvenResults/Quartets/CountSix/verify.py'),
 ('zauner_matching','ProvenResults/Triples/ZaunerMatching.py'),
 ('campaign_reduction','NumericalCampaign/Domain/verify_reduction.py'),
]

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output-dir',type=Path,default=ROOT/'Verification')
    parser.add_argument('--jobs',type=int,choices=(1,2,3,4,6,8),default=4)
    parser.add_argument('--only',nargs='+',choices=[name for name,_ in CHECKS],
                        help='Replay only the named checks; use a separate output directory to retain earlier receipts.')
    args=parser.parse_args();out=args.output_dir.resolve();out.mkdir(parents=True,exist_ok=True)
    selected=[check for check in CHECKS if args.only is None or check[0] in args.only]
    started=time.monotonic()
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',PYTHONUNBUFFERED='1')
    with tempfile.TemporaryDirectory(prefix='mub6-foundation-checks-') as tmp:
        testroot=Path(tmp)
        for folder in ['MinimalConstruction','ProvenResults','NumericalCampaign/Domain']:
            shutil.copytree(ROOT/folder,testroot/folder,
                ignore=shutil.ignore_patterns('__pycache__','*.pyc','.DS_Store'))
        if any(name == 'reconstruction_proofs' for name, _ in selected):
            shutil.copytree(ROOT/'ClassificationPaper/source', testroot/'ClassificationPaper/source',
                            ignore=shutil.ignore_patterns('__pycache__','*.pyc','.DS_Store'))
        if any(name in ('symmetric_signed_corner_prune', 'signed_corner_psd_prune') for name, _ in selected):
            shutil.copytree(ROOT/'NumericalCampaign/Campaign/branch_bins_study_2026-09-30',
                            testroot/'NumericalCampaign/Campaign/branch_bins_study_2026-09-30',
                            ignore=shutil.ignore_patterns('__pycache__','*.pyc','.DS_Store'))
        if any(name in ('cluster_cover', 'cluster_cover_acceleration', 't6_residual_cells') for name, _ in selected):
            shutil.copytree(ROOT/'NumericalCampaign/Certification',
                            testroot/'NumericalCampaign/Certification',
                            ignore=shutil.ignore_patterns('__pycache__','*.pyc','.DS_Store'))
        def run(check):
            name,rel=check;t=time.monotonic();script=testroot/rel
            timeout=(7200 if name=='fourier_practical_tube' else
                     1800 if name in ('fourier_regional_tubes','fourier_production_seed_cube','fourier_zero_neighbourhood') else
                     900 if name in ('fourier_matched_cover_lift','signed_corner_psd_prune') else 300)
            command=[sys.executable,'-B',str(script)]
            if name=='symmetric_signed_corner_prune':
                command += ['--project-root',str(testroot),'--all']
            if name=='signed_corner_psd_prune':
                command += ['--project-root',str(testroot),'--all','--workers','4']
            if name=='fourier_practical_tube':
                stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
                command += ['--output-dir',str(out/(name+'_'+stamp))]
            proc=subprocess.Popen(command,cwd=script.parent,env=env,text=True,
                                  stdout=subprocess.PIPE,stderr=subprocess.STDOUT,
                                  start_new_session=True)
            try:
                output,_=proc.communicate(timeout=timeout)
                code=proc.returncode
            except subprocess.TimeoutExpired:
                # Stop this check's compiler/search descendants as well.
                try:os.killpg(proc.pid,signal.SIGKILL)
                except ProcessLookupError:pass
                output,_=proc.communicate()
                output+=f'\nTIMEOUT after {timeout} seconds\n';code=124
            (out/(name+'.txt')).write_text(output)
            return dict(name=name,script=rel,status='PASS' if code==0 else 'FAIL',
                        source_sha256=hashlib.sha256((ROOT/rel).read_bytes()).hexdigest(),
                        exit_code=code,elapsed_seconds=round(time.monotonic()-t,3),log=name+'.txt')
        results=[]
        with ThreadPoolExecutor(max_workers=args.jobs) as pool:
            for future in as_completed([pool.submit(run,c) for c in selected]):
                r=future.result();results.append(r)
                print(f"{r['status']}: {r['name']} ({r['elapsed_seconds']}s)",flush=True)
    order={name:i for i,(name,_) in enumerate(CHECKS)}
    results.sort(key=lambda r:order[r['name']])
    versions={}
    for name in ['sympy','mpmath','numpy','python-flint']:
        try:versions[name]=importlib.metadata.version(name)
        except importlib.metadata.PackageNotFoundError:versions[name]='missing'
    report=dict(status='PASS' if all(r['status']=='PASS' for r in results) else 'FAIL',
        completed_at_utc=datetime.now(timezone.utc).isoformat(),python=platform.python_version(),
        dependencies=versions,checks=results,elapsed_seconds=round(time.monotonic()-started,3),
        scope='Retained exact algebra/certificates and labelled numerical regressions. Universal statements also require their written proofs. No Lean rebuild, external-input verification, or global MUB exclusion.')
    (out/'summary.json').write_text(json.dumps(report,indent=2)+'\n')
    print(f"{report['status']}: {len(results)} retained checks",flush=True)
    return 0 if report['status']=='PASS' else 1

if __name__=='__main__':raise SystemExit(main())
