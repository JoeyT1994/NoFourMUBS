"""Regression controls for isolated Julia request/response connections."""
import os
from multiprocessing import get_context,get_start_method
from concurrent.futures import ProcessPoolExecutor

_barrier=None

def initialize(barrier):
    global _barrier
    _barrier=barrier

def child_probe(box):
    import campaign_terminals as terminal
    assert get_start_method()=='spawn'
    assert terminal._worker is None
    _barrier.wait(timeout=120)
    c,r=box
    result=terminal.cover(c,r,500000,180)
    assert result['ok'],result
    worker=terminal._worker
    assert worker.owner_pid==os.getpid()
    return dict(python_pid=os.getpid(),julia_pid=worker.p.pid,
                owner_pid=worker.owner_pid,method=get_start_method(),
                cover=result)

def run(c,r):
    import campaign_terminals as terminal
    parent=terminal._worker
    assert parent is not None and parent.owner_pid==os.getpid()
    owner=parent.owner_pid
    try:
        parent.owner_pid=-1
        try:parent.run(c,r,500000,180)
        except RuntimeError as error:
            assert 'inherited Julia worker connection' in str(error)
        else:raise AssertionError('foreign-process connection accepted a request')
        parent.close()
        assert not parent.closed
    finally:parent.owner_pid=owner
    context=get_context('spawn')
    rr=list(r);rr[0]/=8
    with ProcessPoolExecutor(max_workers=2,mp_context=context,
                             initializer=initialize,initargs=(context.Barrier(2),)) as pool:
        records=list(pool.map(child_probe,[(c,r),(c,rr)]))
    assert len({q['python_pid'] for q in records})==2
    assert len({q['julia_pid'] for q in records})==2
    assert all(q['julia_pid']!=parent.p.pid for q in records)
    assert parent.p.poll() is None
    fresh=terminal.cover(c,r,500000,180)
    assert fresh['ok'],fresh
    return dict(status='PASS',explicit_spawn=True,foreign_owner_rejected=True,
                parent_connection_survives=True,children=records)
