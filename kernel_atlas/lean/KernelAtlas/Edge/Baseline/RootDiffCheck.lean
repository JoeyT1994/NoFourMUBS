import KernelAtlas.Edge.Baseline.C1eData
import KernelAtlas.Edge.Baseline.RootDiffData

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem box0_diffH : rootDiffOK ball box0 false box0.phH box0.eH box0.YH diffH0 = true := by decide +kernel

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem box0_diffV : rootDiffOK ball box0 true box0.phV box0.eV box0.YV diffV0 = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
