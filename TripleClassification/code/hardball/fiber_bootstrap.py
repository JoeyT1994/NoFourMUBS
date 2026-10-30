"""Optional certified bootstrap of an already proved strong-root envelope.

After each contraction enclosure, every possible full source zero satisfies
||y-y0|| <= rho. The same-t mean-value segment therefore lies in the strong
ball of radius ||y0||+rho. A derivative bound on that ball yields a new necessary
enclosure; iteration never assumes existence or shrinks the source domain.

This file uses the unchanged production fiber primitives. Its complete cover
function is copied from that engine, with only the annotated bootstrap block
and diagnostic counters added. Include this file's hash in any proof receipt.
"""
import math,time
import numpy as np
from flint import arb
from fiber_cover import A,cnorm,solve_y,residual,slab_q,parameter_separator,serial

def refine_envelope(p,t,h,y,g_norm,q,rho,iterations=3,trace=None):
    """Refine an already proved necessary rho; return q,rho,call count,updates.

    The input rho must already contain every source root at each actual weak
    coordinate in this slab. No assertion of root existence is made. Entries
    appended to an optional trace are Arb bounds, for independent regression.
    """
    if not q.is_finite() or not q<1 or not rho.is_finite() or not rho>=0 or not g_norm.is_finite() or not g_norm>=0:
        raise ValueError('Bootstrap requires finite q<1 and nonnegative proved rho and residual norm')
    calls=updates=0
    y_norm=cnorm(y)
    for _ in range(iterations):
        Y=(y_norm+rho).upper()
        # Y is a strong-coordinate radius. Subtracting weak coordinates again
        # would be invalid, so the derivative-only call uses min_t_squared=0.
        derivative_problem=dict(p,R=Y)
        q_refined=slab_q(derivative_problem,t,h,y,arb(0)).upper()
        calls+=1
        if not q_refined<q:break
        rho_refined=(g_norm/(1-q_refined)).upper()
        if not rho_refined<rho:break
        updates+=1
        little_improvement=not rho_refined<rho*A('.98')
        q=q_refined;rho=rho_refined
        if trace is not None:trace.append(dict(strong_radius=Y,q=q,rho=rho))
        if little_improvement:break
    return q,rho,calls,updates

def cover(p,cap_radius='0.06',max_nodes=100000,min_width=1e-7):
    start=time.monotonic();R=p['R'];capvec=[A(z) for z in cap_radius] if isinstance(cap_radius,(list,tuple)) else [A(cap_radius) for _ in p['roots']]
    if len(capvec)!=len(p['roots']) or any(not x.is_finite() or not x>0 for x in capvec):raise ValueError('one finite positive cap radius is required per candidate')
    rb=np.nextafter(float(R.upper()),math.inf)
    while not A(rb)>R:rb=np.nextafter(rb,math.inf)
    stack=[([-rb,-rb],[rb,rb],0)];stats=dict(nodes=0,splits=0,radial=0,residual=0,parameter_prunes=0,capture=0,failed_q=0,local_q_calls=0,bootstrap_calls=0,bootstrap_improvements=0,max_depth=0);caps=[0]*len(p['roots']);min_res=None;max_rho=arb(0);leaves=[]
    while stack and stats['nodes']<max_nodes:
        lo,hi,depth=stack.pop();rd=None;rho=None;stats['nodes']+=1;stats['max_depth']=max(stats['max_depth'],depth)
        t=[(lo[i]+hi[i])/2 for i in range(2)];h=[max((A(lo[i])-A(t[i])).abs_upper(),(A(hi[i])-A(t[i])).abs_upper()).upper() for i in range(2)]
        mins=[0.0 if lo[i]<=0<=hi[i] else min(abs(lo[i]),abs(hi[i])) for i in range(2)]
        min_t_squared=sum((A(x)**2 for x in mins),arb(0))
        if min_t_squared>R**2:
            stats['radial']+=1;continue
        y=solve_y(p,t);yn=[A(float(z)) for z in y]
        top=[max(abs(lo[i]),abs(hi[i])) for i in range(2)];Rref=sum((A(z)**2 for z in top),arb(0))+sum((z*z for z in yn),arb(0));Rstar=max(R,Rref.sqrt().upper()).upper()
        q=sum((p['coeff'][k]*Rstar**k for k in range(4)),arb(0)).upper()
        if depth>=4 or not q<1:
            q=min(q,slab_q(p,t,h,yn,min_t_squared)).upper();stats['local_q_calls']+=1
        if q<1:
            g=residual(p,t,y,h,arb(0))[:3];rho=(cnorm(g)/(1-q)).upper()
            # The initial rho already contains every source root at this t.
            # Hence its segment to y0 lies in ||y|| <= ||y0||+rho.
            # This auxiliary radius is for derivative estimation only: the
            # original source radius p['R'] and all radial tests stay intact.
            # min_t_squared MUST be zero here, because R is a STRONG radius.
            if depth>=4 and q>A('0.5'):
                q,rho,calls,updates=refine_envelope(p,t,h,yn,cnorm(g),q,rho)
                stats['bootstrap_calls']+=calls
                stats['bootstrap_improvements']+=updates
            # This necessary envelope includes every full zero with weak coords in box.
            yn_lower=sum((z*z for z in yn),arb(0)).sqrt().lower();candidate_lower=(yn_lower-rho).lower();lower_y=candidate_lower if candidate_lower>0 else arb(0)
            if sum((A(x)**2 for x in mins),arb(0))+lower_y**2>R**2:
                stats['radial']+=1;continue
            rd=residual(p,t,y,h,rho,return_data=True);f=rd['intervals']
            if any(not z.contains(0) for z in f[3:]):
                stats['residual']+=1;continue
            margin=parameter_separator(p,rd,second_order=depth>=10)
            if margin is not None:
                stats['parameter_prunes']+=1;min_res=margin if min_res is None else min(min_res,margin);continue
            found=False
            for ri,root in enumerate(p['roots']):
                dist2=sum(((A(t[i])-root[i]).abs_upper()+A(h[i]))**2 for i in range(2))
                dist2+=(cnorm([yn[i]-root[2+i] for i in range(3)])+rho)**2
                if dist2<capvec[ri]**2:
                    stats['capture']+=1;caps[ri]+=1;found=True;max_rho=max(max_rho,rho).upper();break
            if found:continue
        else:stats['failed_q']+=1
        k=int(np.argmax([float(z) for z in h]))
        if h[k]<min_width:
            p['last_pending_debug']=dict(t=t,y=[float(z) for z in y],h=[z.str(radius=True,more=True) for z in h],q=q.str(radius=True,more=True),rho=None if rho is None else rho.str(radius=True,more=True),F0=None if rd is None else [z.str(radius=True,more=True) for z in rd['F0']],gy=None if rd is None else serial(rd['gy']),gw=None if rd is None else serial(rd['gw']))
            stack.append((lo,hi,depth));break
        cut=t[k];hi0=list(hi);hi0[k]=cut;lo1=list(lo);lo1[k]=cut
        stack.append((lo1,hi,depth+1));stack.append((lo,hi0,depth+1));stats['splits']+=1
    return dict(bootstrap_refinement=True,complete_coverage=not stack,status='PROVED COMPLETE COARSE CAP COVER' if not stack else 'NOT ESTABLISHED',scope='all full unbiasedness zeros in supplied column phase ball and whole supplied H cell',snapshot=p['snapshot'],column=p['ci'],cap_radii=[x.str(radius=True,more=True) for x in capvec],cap_centres_in_rotated_coordinates=[[x.str(radius=True,more=True) for x in root] for root in p['roots']],capture_counts=caps,q_source_upper=p['q_source'].str(radius=True,more=True),last_pending_debug=p.get('last_pending_debug'),stats=stats,minimum_parameter_separation=None if min_res is None else min_res.str(radius=True,more=True),pending=len(stack),max_capture_strong_radius=max_rho.str(radius=True,more=True),wall_seconds=time.monotonic()-start,strong_receipt=p['strong_receipt'])
