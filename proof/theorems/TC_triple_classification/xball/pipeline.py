"""Frozen all-K pattern pipeline with the dimension-safe X-ball contractor.

The body of final_pattern is copied verbatim from bd87c6947. Acceptance
helpers remain imported from the frozen native release; only JB changes.
"""
import bootstrap
import native_cover as NC
import conditioned_columns as CC
import moving_symmetry as MS
import pattern_proposals as PP
import basis_exclusion as BE
import fine_patterns as FP
import coupled as JB

def final_pattern(model,prepared,bounds,cover,clique,allow_fine=True):
    attempts=[]
    labels=NC.label_pattern(cover,clique)
    if labels['status']=='EXCLUDED':return labels
    excluded=BE.exclude(model,prepared,bounds,clique)
    if excluded:return excluded
    # Cheap direct route for well-conditioned native columns.
    if max(float(bounds[c]['epsilon']) for c in clique)<.08:
        direct=MS.classify(model,prepared,bounds,clique,attempts=1)
        if direct['status']=='CERTIFIED':return dict(**direct,route='native')
        attempts.append(direct)
    pp,bb,possible=NC.restrict_pattern_bins(model,prepared,bounds,cover,clique)
    if not possible:return dict(status='EXCLUDED',route='bin orthogonality')
    pp,bb,possible=CC.refine_pattern(pp,bb,clique)
    if possible:pp,bb,possible=CC.refine_pattern(pp,bb,clique,reference_count=4)
    if not possible:return dict(status='EXCLUDED',route='conditioned orthogonality')
    if max(float(bb[c]['epsilon']) for c in clique)<.2:
        direct=MS.classify(model,pp,bb,clique,attempts=1)
        if direct['status']=='CERTIFIED':return dict(**direct,route='conditioned')
        attempts.append(direct)
    # Fit an expansion point, then reconstruct every covering radius in Arb.
    pp,bb,cc,fit=PP.fit(model,prepared,bounds,cover,clique)
    pp,bb,possible=NC.restrict_pattern_bins(model,pp,bb,cc,clique)
    if possible:pp,bb,possible=CC.refine_pattern(pp,bb,clique)
    if possible:pp,bb,possible=CC.refine_pattern(pp,bb,clique,reference_count=4)
    if not possible:return dict(status='EXCLUDED',route='refitted orthogonality',proposal=fit)
    excluded=BE.exclude(model,pp,bb,clique)
    if excluded:return excluded
    direct=MS.classify(model,pp,bb,clique,attempts=1)
    if direct['status']!='CERTIFIED':
        attempts.append(direct)
        pp,bb,joint=JB.refine(model,pp,bb,clique)
        excluded=BE.exclude(model,pp,bb,clique)
        if excluded:return dict(**excluded,joint_contraction=joint)
        direct=MS.classify(model,pp,bb,clique,attempts=1)
        direct['joint_contraction']=joint
    if direct['status']!='CERTIFIED' and allow_fine:
        refined,fine=FP.refine(model['ball'],model,cover,clique)
        if fine['status']=='EXCLUDED':return fine
        if refined is not None:
            fp,fb,_,_=NC.contract_patterns(model,refined['roots'],refined)
            result=final_pattern(model,fp,fb,refined,clique,allow_fine=False)
            return dict(**result,fine_refinement=fine)
        direct['fine_refinement']=fine
    return dict(**direct,route='refitted',proposal=fit,
        column_error_bounds=[str(bb[c]['epsilon']) for c in clique],previous_attempts=attempts)
