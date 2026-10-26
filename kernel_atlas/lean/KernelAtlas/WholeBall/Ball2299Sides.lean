import KernelAtlas.WholeBall.Ball2299Data

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

open Matrix

namespace NoFourMUBs.KernelAtlas.WholeBall.Ball2299

theorem horizontal_centre_checked : sideCentreCheck data.phase false data.horizontal = true := by decide +kernel

theorem vertical_centre_checked : sideCentreCheck data.phase true data.vertical = true := by decide +kernel

theorem horizontal_norm_checked : sideNormCheck false data.horizontal.gradient data.jets.U data.jets.H BasisNorm.matrix data.horizontalNorm data.scalar.horizontal = true := by decide +kernel

theorem vertical_norm_checked : sideNormCheck true data.vertical.gradient data.jets.U data.jets.H BasisNorm.matrix data.verticalNorm data.scalar.vertical = true := by decide +kernel

theorem horizontal_sign_checked : sideSignedCheck data.horizontal Centre2299.ball.o data.scalar.horizontal.signedCentre = true := by decide +kernel

theorem vertical_sign_checked : sideSignedCheck data.vertical (-Centre2299.ball.o) data.scalar.vertical.signedCentre = true := by decide +kernel

end NoFourMUBs.KernelAtlas.WholeBall.Ball2299
