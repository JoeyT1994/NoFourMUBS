# One proof, reuse before new work

The user explicitly requires one minimal proof and no duplicated mathematical
work or regenerated certificates already available from the other LLM.

- Current user scope (10 October): do not generate or certify concrete atlas
  certificates. Keep AtlasCertificate explicit and continue the other proof
  inputs. Do not count the excluded atlas work as completed.
- Check GitHub every 30 minutes while this task is active. The read-only
  `audit/watch_repository.py --watch` process records branch and open-PR heads
  in `audit/REPOSITORY_WATCH_STATUS.json`; inspect that status before new work.
  If it is stale or the process has stopped, check again and restore monitoring.
- A changed head must be reviewed before generating more certificate data.
  Do not merge, overwrite local work, or adopt a proof solely because it is newer.
- Before writing a theorem or certificate, search the current Lean sources,
  the complete archive import/blob/source indexes, and the existing OAI closure.
  Open the plausible existing results and compare their exact hypotheses and
  conclusions. An omitted directory or truncated GitHub tree is not evidence
  that a result is absent.
- Reuse an existing theorem directly or add only the necessary model/index
  adapter. Record pinned sources, hashes, and any changed hypotheses in the
  reuse ledger. Keep one active route. Retired derivations are audit evidence,
  not additional proof targets.
- Never treat a filename, prior build receipt, theorem with unproved inputs,
  or an archived source as a completed Lean proof. Compile the adopted result
  on the pinned toolchain and inspect its assumptions.
- `audit/reuse_preflight.py` blocks certificate generation when the GitHub
  check is stale or the relevant reuse review is unfinished. Do not bypass it
  merely to keep a long-running generation pipeline busy.
- Preserve the already checked SOS witness. Its discovery/export/arithmetic
  generators are guarded separately; running a compatibility build does not
  require rediscovering or regenerating that certificate.
- No promise of coverage extends to work the other LLM has not made available.
  Clearly identify unresolved candidate reuse rather than claiming no overlap.

- User scope update (12 October): proof sources and audit records may be pushed
  to GitHub. The final Lean checks must run in GitHub Actions. Do not certify
  atlas certificates in CI. Keep all remaining theorem inputs visible in the
  workflow reports. Local build caches may be removed only after source backup
  is verified. Do not treat a green conditional build as a complete theorem.
