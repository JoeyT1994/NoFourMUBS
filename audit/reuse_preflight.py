"""Refuse new certificate generation without a current, scoped reuse review.

This enforces freshness and recorded review; it is not a mathematical test
that differently written theorems are equivalent. That comparison remains
part of the human-readable audit and the Lean adapter checks.
"""
from pathlib import Path
import json
import time

AUDIT = Path(__file__).resolve().parent


def require_reuse_review(scope):
    status_path = AUDIT / 'REPOSITORY_WATCH_STATUS.json'
    if not status_path.exists():
        raise RuntimeError('Check GitHub before generating more certificates.')
    status = json.loads(status_path.read_text())
    if not status.get('ok') or time.time()-status['checked_epoch'] > 1800:
        raise RuntimeError('GitHub check is failed or older than 30 minutes; refresh it first.')
    if (AUDIT / 'REPOSITORY_REVIEW_REQUIRED.json').exists():
        raise RuntimeError('GitHub updates require a reuse review before generation.')
    review_path = AUDIT / 'REUSE_REVIEW.json'
    review = json.loads(review_path.read_text()) if review_path.exists() else {}
    approved = review.get('scopes', {}).get(scope, {})
    if not approved.get('reviewed'):
        raise RuntimeError(f'Reuse review is not finished for {scope}; do not generate a parallel proof.')
    # A new, narrowly reviewed search must not silently refresh older scopes.
    reviewed_commit = approved.get('repository_commit', review.get('repository_commit'))
    if reviewed_commit != status.get('branches', {}).get('main'):
        raise RuntimeError('Reuse review does not match the current repository commit.')
    return approved


def wait_for_reuse_review(scope, timeout=120):
    """Wait for an in-flight polling refresh; never bypass a failed review.

    The watcher starts its network request at the 30-minute boundary. A build
    can reach its next batch during that request. No new batch starts until
    the ordinary freshness and source-review checks pass again.
    """
    deadline = time.monotonic() + timeout
    while True:
        try:
            return require_reuse_review(scope)
        except RuntimeError:
            path = AUDIT / 'REPOSITORY_WATCH_STATUS.json'
            status = json.loads(path.read_text()) if path.exists() else {}
            if (not status.get('ok') or
                    time.time() - status.get('checked_epoch', 0) <= 1800 or
                    (AUDIT / 'REPOSITORY_REVIEW_REQUIRED.json').exists() or
                    time.monotonic() >= deadline):
                raise
            time.sleep(5)
