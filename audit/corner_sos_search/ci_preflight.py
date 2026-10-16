"""Read current GitHub heads and stop if any unreviewed upstream work appeared."""
from datetime import datetime, timezone
import json
import os
from pathlib import Path
import subprocess
import sys
import time

HERE=Path(__file__).resolve().parent
AUDIT=HERE.parent


def main():
    repo='JoeyT1994/NoFourMUBS'
    if os.environ.get('GITHUB_REPOSITORY') != repo:
        raise RuntimeError('This scoped review is for JoeyT1994/NoFourMUBS only.')
    expected=json.loads((HERE/'reviewed_heads.json').read_text())
    def api(endpoint):
        return json.loads(subprocess.check_output(['gh','api',f'repos/{repo}/{endpoint}']))
    started=time.time()
    branches=api('branches?per_page=100')
    pulls=api('pulls?state=open&per_page=100')
    if len(branches)==100 or len(pulls)==100:
        raise RuntimeError('Paginated source review is required.')
    actual={r['name']:r['commit']['sha'] for r in branches}
    prs={str(r['number']):r['head']['sha'] for r in pulls}
    own_ref='codex/unified-lean-github-checks'
    own_sha=os.environ['GITHUB_SHA']
    wanted=dict(expected['branches'], **{own_ref:own_sha})
    wanted_prs=dict(expected['open_pr_heads'])
    for r in pulls:
        if (str(r['number']) in wanted_prs and r['head']['ref']==own_ref
            and r['head']['repo']['full_name']==repo):
            wanted_prs[str(r['number'])]=own_sha
    record=dict(ok=True,repository=repo,checked_epoch=started,
                checked_at=datetime.fromtimestamp(started,timezone.utc).isoformat(),
                branches=actual,open_pr_heads=prs,
                changed_requires_review=(actual!=wanted or prs!=wanted_prs))
    (AUDIT/'REPOSITORY_WATCH_STATUS.json').write_text(json.dumps(record,indent=2)+'\n')
    if record['changed_requires_review']:
        (AUDIT/'REPOSITORY_REVIEW_REQUIRED.json').write_text(json.dumps(record,indent=2)+'\n')
        raise RuntimeError('GitHub changed since the scoped review; review and reuse before another search.')
    # Never erase a separately recorded pending-review flag.
    sys.path.insert(0,str(AUDIT))
    from reuse_preflight import require_reuse_review
    require_reuse_review('quartet_corner_sos_search')
    print('PASS: current main, other branches, and open PR heads match the scoped review.')


if __name__=='__main__':
    main()
