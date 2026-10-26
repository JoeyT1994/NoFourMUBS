import KernelAtlas.WholeBall.Ball2299Data

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Matrix

namespace NoFourMUBs.KernelAtlas.WholeBall.Ball2299

theorem record_checked : recordErrorCheck data.phase data.jets.U P V data.record data.scalar.bounds.epsP data.scalar.bounds.epsU = true := by decide +kernel

theorem scalar_checked : scalarCheck data.scalar = true := by decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall.Ball2299
