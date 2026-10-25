import KernelAtlas.Edge.Baseline.ChartCheck
import KernelAtlas.Edge.Baseline.EnclosureData

namespace NoFourMUBs.KernelAtlas.Edge.Baseline

open NoFourMUBs.KernelAtlas.Edge

theorem box0_enclosure : enclosureOK ball box0 enclosure0 = true := by decide +kernel

end NoFourMUBs.KernelAtlas.Edge.Baseline
