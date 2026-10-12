import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput12288 : ExponentCode := ⟨4, 3, ![![-2, 3, -1], ![0, -4, 4], ![1, 0, -1], ![1, 1, -2]]⟩

def canonicalOutput12288 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node190⟩

theorem canonicalSound12288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12288.moment H = canonicalOutput12288.moment H :=
  canonical_of_padded canonicalInput12288 canonicalOutput12288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12289 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12289 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound12289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12289.moment H = canonicalOutput12289.moment H :=
  canonical_of_padded canonicalInput12289 canonicalOutput12289 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput12290 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12290 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound12290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12290.moment H = canonicalOutput12290.moment H :=
  canonical_of_padded canonicalInput12290 canonicalOutput12290 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12291 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12291 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound12291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12291.moment H = canonicalOutput12291.moment H :=
  canonical_of_padded canonicalInput12291 canonicalOutput12291 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12292 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12292 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound12292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12292.moment H = canonicalOutput12292.moment H :=
  canonical_of_padded canonicalInput12292 canonicalOutput12292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput12293 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12293 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound12293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12293.moment H = canonicalOutput12293.moment H :=
  canonical_of_padded canonicalInput12293 canonicalOutput12293 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput12294 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12294 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound12294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12294.moment H = canonicalOutput12294.moment H :=
  canonical_of_padded canonicalInput12294 canonicalOutput12294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12295 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12295 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound12295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12295.moment H = canonicalOutput12295.moment H :=
  canonical_of_padded canonicalInput12295 canonicalOutput12295 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation84⟩ (by decide +kernel) hH

def canonicalInput12296 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12296 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound12296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12296.moment H = canonicalOutput12296.moment H :=
  canonical_of_padded canonicalInput12296 canonicalOutput12296 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12297 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12297 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound12297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12297.moment H = canonicalOutput12297.moment H :=
  canonical_of_padded canonicalInput12297 canonicalOutput12297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12298 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12298 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound12298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12298.moment H = canonicalOutput12298.moment H :=
  canonical_of_padded canonicalInput12298 canonicalOutput12298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12299 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12299 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound12299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12299.moment H = canonicalOutput12299.moment H :=
  canonical_of_padded canonicalInput12299 canonicalOutput12299 (by decide) (by decide)
    ⟨true, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput12300 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12300 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound12300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12300.moment H = canonicalOutput12300.moment H :=
  canonical_of_padded canonicalInput12300 canonicalOutput12300 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput12301 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12301 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound12301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12301.moment H = canonicalOutput12301.moment H :=
  canonical_of_padded canonicalInput12301 canonicalOutput12301 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12302 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12302 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node36⟩

theorem canonicalSound12302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12302.moment H = canonicalOutput12302.moment H :=
  canonical_of_padded canonicalInput12302 canonicalOutput12302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput12303 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12303 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node37⟩

theorem canonicalSound12303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12303.moment H = canonicalOutput12303.moment H :=
  canonical_of_padded canonicalInput12303 canonicalOutput12303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation253, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput12304 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![3, -3, 0, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12304 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound12304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12304.moment H = canonicalOutput12304.moment H :=
  canonical_of_padded canonicalInput12304 canonicalOutput12304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation252, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12305 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![3, -2, -1, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12305 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node43⟩

theorem canonicalSound12305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12305.moment H = canonicalOutput12305.moment H :=
  canonical_of_padded canonicalInput12305 canonicalOutput12305 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12306 : ExponentCode := ⟨6, 6, ![![-2, 3, -1, 0, 0, 0], ![3, -1, -2, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12306 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node21⟩

theorem canonicalSound12306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12306.moment H = canonicalOutput12306.moment H :=
  canonical_of_padded canonicalInput12306 canonicalOutput12306 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput12307 : ExponentCode := ⟨6, 6, ![![-2, 3, 0, -1, 0, 0], ![1, -3, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12307 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound12307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12307.moment H = canonicalOutput12307.moment H :=
  canonical_of_padded canonicalInput12307 canonicalOutput12307 (by decide) (by decide)
    ⟨true, false, canonicalPermutation108, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12308 : ExponentCode := ⟨6, 6, ![![-2, 3, 0, -1, 0, 0], ![1, -3, 0, 2, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12308 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node475⟩

theorem canonicalSound12308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12308.moment H = canonicalOutput12308.moment H :=
  canonical_of_padded canonicalInput12308 canonicalOutput12308 (by decide) (by decide)
    ⟨false, false, canonicalPermutation12, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput12309 : ExponentCode := ⟨6, 6, ![![-2, 3, 0, -1, 0, 0], ![1, -3, 3, -1, 0, 0], ![1, 0, -3, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12309 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node98⟩

theorem canonicalSound12309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12309.moment H = canonicalOutput12309.moment H :=
  canonical_of_padded canonicalInput12309 canonicalOutput12309 (by decide) (by decide)
    ⟨true, false, canonicalPermutation66, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12310 : ExponentCode := ⟨6, 6, ![![-2, 3, 0, -1, 0, 0], ![1, -3, 3, -1, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12310 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code506

theorem canonicalSound12310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12310.moment H = canonicalOutput12310.moment H :=
  canonical_of_padded canonicalInput12310 canonicalOutput12310 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput12311 : ExponentCode := ⟨6, 6, ![![-2, 3, 0, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -3, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12311 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code431

theorem canonicalSound12311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12311.moment H = canonicalOutput12311.moment H :=
  canonical_of_padded canonicalInput12311 canonicalOutput12311 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput12312 : ExponentCode := ⟨6, 6, ![![-2, 3, 0, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, 0, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12312 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1003⟩

theorem canonicalSound12312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12312.moment H = canonicalOutput12312.moment H :=
  canonical_of_padded canonicalInput12312 canonicalOutput12312 (by decide) (by decide)
    ⟨false, true, canonicalPermutation70, canonicalPermutation111⟩ (by decide +kernel) hH

def canonicalInput12313 : ExponentCode := ⟨6, 6, ![![-2, 3, 0, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12313 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound12313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12313.moment H = canonicalOutput12313.moment H :=
  canonical_of_padded canonicalInput12313 canonicalOutput12313 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput12314 : ExponentCode := ⟨6, 6, ![![-2, 3, 0, -1, 0, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 2, -1, 0, 0], ![0, -1, -1, 2, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12314 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound12314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12314.moment H = canonicalOutput12314.moment H :=
  canonical_of_padded canonicalInput12314 canonicalOutput12314 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation325, canonicalPermutation12⟩ (by decide +kernel) hH

def canonicalInput12315 : ExponentCode := ⟨6, 6, ![![-2, 3, 1, -1, -1, 0], ![1, -3, 1, -1, 2, 0], ![1, 0, -2, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12315 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound12315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12315.moment H = canonicalOutput12315.moment H :=
  canonical_of_padded canonicalInput12315 canonicalOutput12315 (by decide) (by decide)
    ⟨true, false, canonicalPermutation109, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12316 : ExponentCode := ⟨6, 6, ![![-2, 3, 1, -1, -1, 0], ![1, -3, 1, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12316 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound12316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12316.moment H = canonicalOutput12316.moment H :=
  canonical_of_padded canonicalInput12316 canonicalOutput12316 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation372, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput12317 : ExponentCode := ⟨6, 6, ![![-2, 3, 1, -1, -1, 0], ![1, -3, 1, 2, -1, 0], ![1, 0, -2, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12317 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound12317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12317.moment H = canonicalOutput12317.moment H :=
  canonical_of_padded canonicalInput12317 canonicalOutput12317 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation364, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput12318 : ExponentCode := ⟨6, 6, ![![-2, 3, 1, -1, -1, 0], ![1, -3, 1, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12318 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound12318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12318.moment H = canonicalOutput12318.moment H :=
  canonical_of_padded canonicalInput12318 canonicalOutput12318 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation367, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput12319 : ExponentCode := ⟨6, 6, ![![-2, 3, 1, -1, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -2, -1, 2, 0], ![0, -1, 0, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12319 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound12319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12319.moment H = canonicalOutput12319.moment H :=
  canonical_of_padded canonicalInput12319 canonicalOutput12319 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput12320 : ExponentCode := ⟨6, 6, ![![-2, 3, 1, -1, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 0, -2, 2, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12320 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound12320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12320.moment H = canonicalOutput12320.moment H :=
  canonical_of_padded canonicalInput12320 canonicalOutput12320 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation4⟩ (by decide +kernel) hH

def canonicalInput12321 : ExponentCode := ⟨6, 6, ![![-2, 3, 1, -1, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -1, 0, 2, -1, 0], ![0, -1, 0, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput12321 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound12321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12321.moment H = canonicalOutput12321.moment H :=
  canonical_of_padded canonicalInput12321 canonicalOutput12321 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation330, OAI.MUB6.Certificate.PairSemantics.permutation325⟩ (by decide +kernel) hH

def canonicalInput12322 : ExponentCode := ⟨4, 4, ![![-2, 3, 3, -4], ![0, -1, -1, 2], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput12322 : ExponentCode := normalNode7845

theorem canonicalSound12322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12322.moment H = canonicalOutput12322.moment H :=
  canonical_of_padded canonicalInput12322 canonicalOutput12322 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput12323 : ExponentCode := ⟨4, 3, ![![-2, 4, -2], ![-1, -4, 5], ![1, 0, -1], ![2, 0, -2]]⟩

def canonicalOutput12323 : ExponentCode := normalNode4590

theorem canonicalSound12323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12323.moment H = canonicalOutput12323.moment H :=
  canonical_of_padded canonicalInput12323 canonicalOutput12323 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12324 : ExponentCode := ⟨4, 3, ![![-2, 4, -2], ![-1, -4, 5], ![2, 0, -2], ![1, 0, -1]]⟩

def canonicalOutput12324 : ExponentCode := normalNode4590

theorem canonicalSound12324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12324.moment H = canonicalOutput12324.moment H :=
  canonical_of_padded canonicalInput12324 canonicalOutput12324 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12325 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![-1, -3, 4], ![1, -1, 0], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput12325 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node428⟩

theorem canonicalSound12325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12325.moment H = canonicalOutput12325.moment H :=
  canonical_of_padded canonicalInput12325 canonicalOutput12325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12326 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![-1, -3, 4], ![1, 0, -1], ![1, -1, 0], ![1, 0, -1]]⟩

def canonicalOutput12326 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node428⟩

theorem canonicalSound12326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12326.moment H = canonicalOutput12326.moment H :=
  canonical_of_padded canonicalInput12326 canonicalOutput12326 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12327 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![-1, -3, 4], ![1, 0, -1], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput12327 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node428⟩

theorem canonicalSound12327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12327.moment H = canonicalOutput12327.moment H :=
  canonical_of_padded canonicalInput12327 canonicalOutput12327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12328 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![-1, -2, 3], ![0, -2, 2], ![1, 0, -1], ![2, 0, -2]]⟩

def canonicalOutput12328 : ExponentCode := normalNode4588

theorem canonicalSound12328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12328.moment H = canonicalOutput12328.moment H :=
  canonical_of_padded canonicalInput12328 canonicalOutput12328 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12329 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![-1, -2, 3], ![0, -2, 2], ![2, 0, -2], ![1, 0, -1]]⟩

def canonicalOutput12329 : ExponentCode := normalNode4588

theorem canonicalSound12329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12329.moment H = canonicalOutput12329.moment H :=
  canonical_of_padded canonicalInput12329 canonicalOutput12329 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12330 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![-1, -2, 3], ![1, -2, 1], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput12330 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node427⟩

theorem canonicalSound12330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12330.moment H = canonicalOutput12330.moment H :=
  canonical_of_padded canonicalInput12330 canonicalOutput12330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12331 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![-1, -1, 2], ![0, -3, 3], ![1, 0, -1], ![2, 0, -2]]⟩

def canonicalOutput12331 : ExponentCode := normalNode4589

theorem canonicalSound12331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12331.moment H = canonicalOutput12331.moment H :=
  canonical_of_padded canonicalInput12331 canonicalOutput12331 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12332 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![-1, -1, 2], ![0, -3, 3], ![2, 0, -2], ![1, 0, -1]]⟩

def canonicalOutput12332 : ExponentCode := normalNode4589

theorem canonicalSound12332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12332.moment H = canonicalOutput12332.moment H :=
  canonical_of_padded canonicalInput12332 canonicalOutput12332 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12333 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![-1, -1, 2], ![1, -3, 2], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput12333 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node425⟩

theorem canonicalSound12333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12333.moment H = canonicalOutput12333.moment H :=
  canonical_of_padded canonicalInput12333 canonicalOutput12333 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12334 : ExponentCode := ⟨4, 3, ![![-2, 4, -2], ![0, -4, 4], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput12334 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node157⟩

theorem canonicalSound12334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12334.moment H = canonicalOutput12334.moment H :=
  canonical_of_padded canonicalInput12334 canonicalOutput12334 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12335 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![0, -2, 2], ![0, -2, 2], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput12335 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node446⟩

theorem canonicalSound12335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12335.moment H = canonicalOutput12335.moment H :=
  canonical_of_padded canonicalInput12335 canonicalOutput12335 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12336 : ExponentCode := ⟨5, 3, ![![-2, 4, -2], ![0, -1, 1], ![0, -3, 3], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput12336 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node445⟩

theorem canonicalSound12336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12336.moment H = canonicalOutput12336.moment H :=
  canonical_of_padded canonicalInput12336 canonicalOutput12336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput12337 : ExponentCode := ⟨2, 4, ![![-1, -4, 4, 1], ![1, 4, -4, -1]]⟩

def canonicalOutput12337 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node14⟩

theorem canonicalSound12337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12337.moment H = canonicalOutput12337.moment H :=
  canonical_of_padded canonicalInput12337 canonicalOutput12337 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12338 : ExponentCode := ⟨5, 3, ![![-1, -4, 5], ![-2, 2, 0], ![1, 0, -1], ![1, 1, -2], ![1, 1, -2]]⟩

def canonicalOutput12338 : ExponentCode := normalNode5914

theorem canonicalSound12338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12338.moment H = canonicalOutput12338.moment H :=
  canonical_of_padded canonicalInput12338 canonicalOutput12338 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12339 : ExponentCode := ⟨5, 3, ![![-1, -4, 5], ![-1, 1, 0], ![1, 0, -1], ![0, 2, -2], ![1, 1, -2]]⟩

def canonicalOutput12339 : ExponentCode := normalNode5978

theorem canonicalSound12339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12339.moment H = canonicalOutput12339.moment H :=
  canonical_of_padded canonicalInput12339 canonicalOutput12339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12340 : ExponentCode := ⟨5, 3, ![![-1, -4, 5], ![-1, 1, 0], ![1, 0, -1], ![1, 1, -2], ![0, 2, -2]]⟩

def canonicalOutput12340 : ExponentCode := normalNode5978

theorem canonicalSound12340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12340.moment H = canonicalOutput12340.moment H :=
  canonical_of_padded canonicalInput12340 canonicalOutput12340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12341 : ExponentCode := ⟨5, 3, ![![-1, -4, 5], ![-1, 2, -1], ![0, 1, -1], ![1, 1, -2], ![1, 0, -1]]⟩

def canonicalOutput12341 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node721⟩

theorem canonicalSound12341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12341.moment H = canonicalOutput12341.moment H :=
  canonical_of_padded canonicalInput12341 canonicalOutput12341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12342 : ExponentCode := ⟨4, 3, ![![-1, -4, 5], ![-1, 2, -1], ![0, 2, -2], ![2, 0, -2]]⟩

def canonicalOutput12342 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node200⟩

theorem canonicalSound12342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12342.moment H = canonicalOutput12342.moment H :=
  canonical_of_padded canonicalInput12342 canonicalOutput12342 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12343 : ExponentCode := ⟨4, 3, ![![-1, -4, 5], ![-1, 2, -1], ![0, 3, -3], ![2, -1, -1]]⟩

def canonicalOutput12343 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1218

theorem canonicalSound12343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12343.moment H = canonicalOutput12343.moment H :=
  canonical_of_padded canonicalInput12343 canonicalOutput12343 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12344 : ExponentCode := ⟨4, 3, ![![-1, -4, 5], ![-1, 2, -1], ![1, 2, -3], ![1, 0, -1]]⟩

def canonicalOutput12344 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node233⟩

theorem canonicalSound12344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12344.moment H = canonicalOutput12344.moment H :=
  canonical_of_padded canonicalInput12344 canonicalOutput12344 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12345 : ExponentCode := ⟨4, 3, ![![-1, -4, 5], ![-1, 3, -2], ![0, 2, -2], ![2, -1, -1]]⟩

def canonicalOutput12345 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1222

theorem canonicalSound12345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12345.moment H = canonicalOutput12345.moment H :=
  canonical_of_padded canonicalInput12345 canonicalOutput12345 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12346 : ExponentCode := ⟨3, 3, ![![-1, -4, 5], ![-1, 5, -4], ![2, -1, -1]]⟩

def canonicalOutput12346 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1224

theorem canonicalSound12346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12346.moment H = canonicalOutput12346.moment H :=
  canonical_of_padded canonicalInput12346 canonicalOutput12346 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12347 : ExponentCode := ⟨4, 3, ![![-1, -4, 5], ![0, 1, -1], ![1, 1, -2], ![0, 2, -2]]⟩

def canonicalOutput12347 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node238⟩

theorem canonicalSound12347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12347.moment H = canonicalOutput12347.moment H :=
  canonical_of_padded canonicalInput12347 canonicalOutput12347 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12348 : ExponentCode := ⟨4, 3, ![![-1, -4, 5], ![0, 2, -2], ![1, 0, -1], ![0, 2, -2]]⟩

def canonicalOutput12348 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node240⟩

theorem canonicalSound12348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12348.moment H = canonicalOutput12348.moment H :=
  canonical_of_padded canonicalInput12348 canonicalOutput12348 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12349 : ExponentCode := ⟨3, 3, ![![-1, -4, 5], ![1, 0, -1], ![0, 4, -4]]⟩

def canonicalOutput12349 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node50⟩

theorem canonicalSound12349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12349.moment H = canonicalOutput12349.moment H :=
  canonical_of_padded canonicalInput12349 canonicalOutput12349 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12350 : ExponentCode := ⟨3, 3, ![![-1, -4, 5], ![1, 1, -2], ![0, 3, -3]]⟩

def canonicalOutput12350 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node49⟩

theorem canonicalSound12350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12350.moment H = canonicalOutput12350.moment H :=
  canonical_of_padded canonicalInput12350 canonicalOutput12350 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput12351 : ExponentCode := ⟨4, 4, ![![-1, -3, 0, 4], ![-1, 0, 2, -1], ![1, 0, 1, -2], ![1, 3, -3, -1]]⟩

def canonicalOutput12351 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code315

theorem canonicalSound12351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput12351.moment H = canonicalOutput12351.moment H :=
  canonical_of_padded canonicalInput12351 canonicalOutput12351 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
