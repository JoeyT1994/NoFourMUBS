import NoFourMUBs.Step2.SOS.CornerPairMoments
import NoFourMUBs.Step2.SOS.MomentExponentData
import NoFourMUBs.Step2.SOS.PrimitiveRows
import NoFourMUBs.Step2.SOS.TailPadding

noncomputable section
namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate Normalization
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000

def targetPsiTerm (H : CMatrix) (k l : Fin 55) : ℝ :=
  (2 * (psiCoefficient k : ℝ) * (psiCoefficient l : ℝ)) *
    (injectiveMoment H
      (blockExponent (psiExponent k) false - blockExponent (psiExponent l) false) -
     injectiveMoment H
      (blockExponent (psiExponent k) false + blockExponent (psiExponent l) true))

def targetCornerTerm (H : CMatrix) (p q : Fin 34) : ℝ :=
  450 * CornerPairs.weight p * CornerPairs.weight q *
    (injectiveMoment H (CornerPairs.overlapExponent cubicExponent cubicExponent p q) +
     injectiveMoment H (CornerPairs.overlapExponent cubicExponent (-cubicExponent) p q))

end NoFourMUBs.Step2.SOS.Semantics
