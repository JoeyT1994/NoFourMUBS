import NoFourMUBs.MainTheorem
import NoFourMUBs.Step2.FourierVanishing
import NoFourMUBs.Step2.CriticalStripMatrix
import NoFourMUBs.Step2.SOS.Arithmetic
import NoFourMUBs.Step2.SOS.ReusedRows
import NoFourMUBs.Step2.SOS.ComplementaryMoments
import NoFourMUBs.Step2.SOS.FourierRowInputs
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.TargetFrames
import NoFourMUBs.Step2.SOS.DefectFrames
import NoFourMUBs.Step2.SOS.FourierRows00
import NoFourMUBs.Step2.SOS.FourierRows01
import NoFourMUBs.Step2.SOS.FourierRows02
import NoFourMUBs.Step2.SOS.FourierRows03
import NoFourMUBs.Step2.SOS.FourierRows04
import NoFourMUBs.Step2.SOS.FourierRows05

-- These checks must be read together: an axiom-free implication may still
-- require unproved propositions as explicit arguments.
#check @NoFourMUBs.no_four_mubs_main
#print axioms NoFourMUBs.no_four_mubs_main
#print axioms NoFourMUBs.Step2.SOS.conditionalSOS
#print axioms NoFourMUBs.Step2.SOS.Semantics.rowsSound
#print axioms NoFourMUBs.Step2.frameScalarIdentities
#print axioms NoFourMUBs.Step2.repaired_exactReach
#print axioms NoFourMUBs.Side.signature_discriminant
#print axioms NoFourMUBs.Side.permanent_norm
#print axioms FourierPhysicalSide.eta_permanent
#print axioms NoFourMUBs.Step2.fourier_vanishing
#print axioms NoFourMUBs.Step2.fourier_vanishing_transpose
#print axioms NoFourMUBs.Step2.Critical.carrier_strip_not_all_classified
#print axioms NoFourMUBs.Step2.SOS.Arithmetic.consequence
#print axioms NoFourMUBs.Step2.SOS.Semantics.rowSound668
#print axioms NoFourMUBs.Step2.SOS.sideSignature_laurent
#print axioms NoFourMUBs.Step2.SOS.sameLabels_complementarySignatures
#print axioms NoFourMUBs.Step2.SOS.complementary_moments
#print axioms NoFourMUBs.Step2.SOS.Semantics.fourierInputZero0
#print axioms NoFourMUBs.Step2.SOS.Semantics.fourierInputZero12
#print axioms NoFourMUBs.Step2.SOS.Normalization.projected_zero
#print axioms NoFourMUBs.Step2.SOS.cubicMoment_real
#print axioms NoFourMUBs.Step2.SOS.physical_defect_average
#print axioms NoFourMUBs.Step2.SOS.signatureDefect_average_transpose
#print axioms NoFourMUBs.Step2.SOS.Semantics.rowSound0
#print axioms NoFourMUBs.Step2.SOS.Semantics.rowSound1
#print axioms NoFourMUBs.Step2.SOS.Semantics.rowSound2
#print axioms NoFourMUBs.Step2.SOS.Semantics.rowSound3
#print axioms NoFourMUBs.Step2.SOS.Semantics.rowSound4
#print axioms NoFourMUBs.Step2.SOS.Semantics.rowSound5

#check NoFourMUBs.AtlasCertificate
#check NoFourMUBs.Step2.MatchedExistence
#check NoFourMUBs.Step2.ConditionalSOS
#check NoFourMUBs.Step2.CriticalClassification
