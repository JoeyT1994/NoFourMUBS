import DependencyAuditCore
import Root1GlobalExclusion

/- Read-only dependency metadata. It contributes no theorem premise. -/
run_cmd Root0DependencyAudit.report #[
  ``ShoulderRoot1Actual20261003.no_globalMax_in_root1,
  ``ShoulderRoot1Actual20261003.globalMax_root1_literal_excluded,
  ``ShoulderRoot1Actual20261003.root1_radius_positive]
