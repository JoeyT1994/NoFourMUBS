"""Read-only GitHub polling for the active proof task; never merges or pushes.

Run with --watch for a check every 1800 seconds. A changed branch or open PR
creates REPOSITORY_REVIEW_REQUIRED.json and pauses new canonical batches.
Create REPOSITORY_WATCH_STOP to stop the watcher. Source review, not this
poller, determines whether any changed proof should be adopted.
"""
from pathlib import Path
from datetime import datetime, timezone
import argparse
import json
import os
import subprocess
import time

AUDIT = Path(__file__).resolve().parent
REPO = 'JoeyT1994/NoFourMUBS'
INTERVAL = 1800


def api(endpoint):
    return json.loads(subprocess.check_output(
        ['/opt/homebrew/bin/gh', 'api', f'repos/{REPO}/{endpoint}'],
        text=True, timeout=90))


def check():
    started = time.time()
    result = {'checked_at': datetime.fromtimestamp(started, timezone.utc).isoformat(),
              'checked_epoch': started, 'repository': REPO, 'pid': os.getpid(),
              'interval_seconds': INTERVAL, 'next_check_epoch': started + INTERVAL}
    path = AUDIT / 'REPOSITORY_WATCH_STATUS.json'
    previous = json.loads(path.read_text()) if path.exists() else {}
    try:
        branches = api('branches?per_page=100')
        pulls = api('pulls?state=open&per_page=100')
        # This repository currently has one branch and no large PR inventory.
        # Refuse a silently incomplete inventory if it grows beyond one page.
        if len(branches) == 100 or len(pulls) == 100:
            raise RuntimeError('Branch/PR inventory requires pagination and review')
        refs = {b['name']: b['commit']['sha'] for b in branches}
        prs = {str(p['number']): p['head']['sha'] for p in pulls}
        result.update(ok=True, branches=refs, open_pr_heads=prs)
        baseline = json.loads((AUDIT / 'LATEST_REPOSITORY_HEAD.json').read_text())['sha']
        changed = (refs.get('main') != baseline or
                   (previous.get('ok') and
                    (refs != previous.get('branches') or prs != previous.get('open_pr_heads'))) or
                   (not previous.get('ok') and (set(refs) != {'main'} or bool(prs))))
        result['changed_requires_review'] = bool(changed)
        if changed:
            (AUDIT / 'REPOSITORY_REVIEW_REQUIRED.json').write_text(json.dumps(result, indent=2)+'\n')
            (AUDIT / 'SOS_CANONICAL_BUILD_STOP').touch()
    except Exception as error:
        result.update(ok=False, error=str(error))
    path.write_text(json.dumps(result, indent=2)+'\n')
    with (AUDIT / 'REPOSITORY_CHECKS.jsonl').open('a') as output:
        output.write(json.dumps(result)+'\n')
    print(json.dumps(result), flush=True)
    return started + INTERVAL


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--watch', action='store_true')
    args = parser.parse_args()
    due = check()
    while args.watch and not (AUDIT / 'REPOSITORY_WATCH_STOP').exists():
        time.sleep(min(30, max(0, due-time.time())))
        if time.time() >= due:
            due = check()
