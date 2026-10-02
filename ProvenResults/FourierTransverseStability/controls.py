"""Fail-closed negative controls and a whole-box geometric positive control."""
from interval import *
from geometry import audit_partition, FRAMES, PROFILES, frame_test, contains_box
from charts import phase_matrix_tests
from kernel import accept_tile
import copy


def controls(tiles,arrays):
    successes=[]
    def rejects(name,fn):
        try: fn()
        except (ValueError,KeyError,TypeError): successes.append(name);return
        raise ValueError('negative control unexpectedly accepted: '+name)
    rejects('missing quadtree child',lambda:audit_partition(['0','1','2']))
    rejects('duplicate quadtree leaf',lambda:audit_partition(['0','1','2','3','3']))
    rejects('ancestor leaf overlap',lambda:audit_partition(['','0']))
    rejects('invalid quadtree digit',lambda:audit_partition(['x']))
    rejects('empty cover',lambda:audit_partition([]))
    tile=tiles[0]
    retained={b:{k:arrays[b+'_'+k][0].copy()
                 for k in ('inverse','linear','quadratic','radii')}
              for b in ('F','A')}
    wrong=copy.deepcopy(retained);wrong['F']['inverse'][:]=0
    rejects('zero full-chart preconditioner',lambda:accept_tile(tile['profile'],tile['path'],wrong))
    wrong2=copy.deepcopy(retained);wrong2['A']['radii'][:]=0
    rejects('zero alternative-side radii',lambda:accept_tile(tile['profile'],tile['path'],wrong2))
    wrong3=copy.deepcopy(retained);del wrong3['A']
    rejects('missing alternative-side branch',lambda:accept_tile(tile['profile'],tile['path'],wrong3))
    wrong4=copy.deepcopy(retained);wrong4['F']['linear'][0,0]=float('nan')
    rejects('nonfinite proposal',lambda:accept_tile(tile['profile'],tile['path'],wrong4))
    M=np.empty((6,6),dtype=object);M[:]=Q(1,100)
    rejects('projector cap cannot be silently tightened',
            lambda:phase_matrix_tests(M,Q(1),Q(1,16384)))
    rejects('negative seed halfwidth',lambda:contains_box([0]*4,[-1,0,0,0]))
    rejects('nonfinite seed center',lambda:contains_box([float('nan'),0,0,0],[0]*4))
    rejects('string not an exact phase input',lambda:contains_box(['1',0,0,0],[0]*4))
    identity=next(fr for fr in FRAMES if fr['matrix']==np.eye(4,dtype=int).tolist()
                  and not fr['transpose'] and not fr['conjugate'])
    cfg=PROFILES['thick'];p=sum(cfg['p'],Q(0))/2;q=sum(cfg['q'],Q(0))/2
    center=[2*iv.pi/3,4*iv.pi/3,2*iv.pi*v(Q(1,6)+p-q),2*iv.pi*v(Q(1,3)-q)]
    pos=frame_test(center,[v(Q(1,100000))]*4,identity,'thick')
    require(pos is not None,'whole-box geometric positive control failed')
    require(frame_test(center,[v(Q(1,20))]*4,identity,'thick') is None,
            'oversized seed halfwidth unexpectedly accepted')
    successes.append('oversized seed halfwidth')
    # Verify the numeric substrate encloses rather than rounds rational inputs.
    for fraction in (Q(1,3),Q(-7,11),Q(1,10**30)):
        x=v(fraction)
        require(as_rational(x.a)<=fraction<=as_rational(x.b),
                'rational interval enclosure failed')
    return dict(status='PASS',negative_controls=successes,
                negative_count=len(successes),whole_box_positive_control=pos,
                exact_rational_interval_controls=3)
