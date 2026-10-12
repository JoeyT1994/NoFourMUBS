import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes07
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21312 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![-1, -3, 2, 1, 1], ![1, 3, -2, 0, -2]]⟩

def canonicalOutput21312 : ExponentCode := normalNode11107

theorem canonicalSound21312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21312.moment H = canonicalOutput21312.moment H :=
  canonical_of_padded canonicalInput21312 canonicalOutput21312 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21313 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![-1, -2, 2, 1, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21313 : ExponentCode := normalNode11116

theorem canonicalSound21313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21313.moment H = canonicalOutput21313.moment H :=
  canonical_of_padded canonicalInput21313 canonicalOutput21313 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21314 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![-1, -2, 3, 0, 0], ![1, 2, -3, 1, -1]]⟩

def canonicalOutput21314 : ExponentCode := normalNode11118

theorem canonicalSound21314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21314.moment H = canonicalOutput21314.moment H :=
  canonical_of_padded canonicalInput21314 canonicalOutput21314 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21315 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![0, -3, 2, 0, 1], ![0, 3, -2, 1, -2]]⟩

def canonicalOutput21315 : ExponentCode := normalNode11154

theorem canonicalSound21315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21315.moment H = canonicalOutput21315.moment H :=
  canonical_of_padded canonicalInput21315 canonicalOutput21315 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21316 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![0, -3, 2, 1, 0], ![0, 3, -2, 0, -1]]⟩

def canonicalOutput21316 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2849⟩

theorem canonicalSound21316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21316.moment H = canonicalOutput21316.moment H :=
  canonical_of_padded canonicalInput21316 canonicalOutput21316 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21317 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![0, -2, 2, -1, 1], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput21317 : ExponentCode := normalNode11160

theorem canonicalSound21317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21317.moment H = canonicalOutput21317.moment H :=
  canonical_of_padded canonicalInput21317 canonicalOutput21317 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21318 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![0, -2, 2, 1, -1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput21318 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2805⟩

theorem canonicalSound21318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21318.moment H = canonicalOutput21318.moment H :=
  canonical_of_padded canonicalInput21318 canonicalOutput21318 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21319 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![0, -2, 3, 0, -1], ![0, 2, -3, 1, 0]]⟩

def canonicalOutput21319 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2849⟩

theorem canonicalSound21319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21319.moment H = canonicalOutput21319.moment H :=
  canonical_of_padded canonicalInput21319 canonicalOutput21319 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21320 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![1, -3, 2, 0, 0], ![-1, 3, -2, 1, -1]]⟩

def canonicalOutput21320 : ExponentCode := normalNode11172

theorem canonicalSound21320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21320.moment H = canonicalOutput21320.moment H :=
  canonical_of_padded canonicalInput21320 canonicalOutput21320 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21321 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![1, -2, 2, -1, 0], ![-1, 2, -2, 2, -1]]⟩

def canonicalOutput21321 : ExponentCode := normalNode11175

theorem canonicalSound21321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21321.moment H = canonicalOutput21321.moment H :=
  canonical_of_padded canonicalInput21321 canonicalOutput21321 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21322 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -1, 0], ![0, -3, 3, -1, 1], ![0, 3, -3, 1, -1]]⟩

def canonicalOutput21322 : ExponentCode := normalNode11106

theorem canonicalSound21322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21322.moment H = canonicalOutput21322.moment H :=
  canonical_of_padded canonicalInput21322 canonicalOutput21322 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput21323 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 1, -2, 0], ![0, -2, 1, -1, 2], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput21323 : ExponentCode := normalNode11160

theorem canonicalSound21323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21323.moment H = canonicalOutput21323.moment H :=
  canonical_of_padded canonicalInput21323 canonicalOutput21323 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21324 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 1, -2, 0], ![1, -2, 1, -1, 1], ![-1, 2, -2, 2, -1]]⟩

def canonicalOutput21324 : ExponentCode := normalNode11174

theorem canonicalSound21324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21324.moment H = canonicalOutput21324.moment H :=
  canonical_of_padded canonicalInput21324 canonicalOutput21324 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21325 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 1, -1, -1], ![-1, 2, -2, -1, 2], ![1, -2, 1, 1, -1]]⟩

def canonicalOutput21325 : ExponentCode := normalNode11089

theorem canonicalSound21325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21325.moment H = canonicalOutput21325.moment H :=
  canonical_of_padded canonicalInput21325 canonicalOutput21325 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21326 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 1, -1, -1], ![0, 2, -2, -1, 1], ![0, -2, 1, 1, 0]]⟩

def canonicalOutput21326 : ExponentCode := normalNode9383

theorem canonicalSound21326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21326.moment H = canonicalOutput21326.moment H :=
  canonical_of_padded canonicalInput21326 canonicalOutput21326 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21327 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![2, 0, 0, -2, 0], ![-1, -3, 2, 0, 2], ![0, 3, -2, 1, -2]]⟩

def canonicalOutput21327 : ExponentCode := normalNode11214

theorem canonicalSound21327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21327.moment H = canonicalOutput21327.moment H :=
  canonical_of_padded canonicalInput21327 canonicalOutput21327 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21328 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![2, 0, 0, -2, 0], ![0, -3, 2, 0, 1], ![-1, 3, -2, 1, -1]]⟩

def canonicalOutput21328 : ExponentCode := normalNode11218

theorem canonicalSound21328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21328.moment H = canonicalOutput21328.moment H :=
  canonical_of_padded canonicalInput21328 canonicalOutput21328 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21329 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![2, 0, 0, -1, -1], ![-1, -3, 3, -1, 2], ![0, 3, -3, 1, -1]]⟩

def canonicalOutput21329 : ExponentCode := normalNode11110

theorem canonicalSound21329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21329.moment H = canonicalOutput21329.moment H :=
  canonical_of_padded canonicalInput21329 canonicalOutput21329 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21330 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![2, 0, 0, -1, -1], ![0, -3, 3, -1, 1], ![-1, 3, -3, 1, 0]]⟩

def canonicalOutput21330 : ExponentCode := normalNode11109

theorem canonicalSound21330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21330.moment H = canonicalOutput21330.moment H :=
  canonical_of_padded canonicalInput21330 canonicalOutput21330 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21331 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-3, 1, 1, -1, 2], ![2, -2, 1, -1, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21331 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code983

theorem canonicalSound21331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21331.moment H = canonicalOutput21331.moment H :=
  canonical_of_padded canonicalInput21331 canonicalOutput21331 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21332 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-2, -2, 3, 0, 1], ![0, 2, -2, -1, 1], ![3, 0, -1, -1, -1]]⟩

def canonicalOutput21332 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1230

theorem canonicalSound21332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21332.moment H = canonicalOutput21332.moment H :=
  canonical_of_padded canonicalInput21332 canonicalOutput21332 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21333 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-2, 1, 1, -1, 1], ![1, -2, 1, -1, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21333 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code977

theorem canonicalSound21333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21333.moment H = canonicalOutput21333.moment H :=
  canonical_of_padded canonicalInput21333 canonicalOutput21333 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21334 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-2, 1, 1, -1, 1], ![2, -2, 1, -1, 0], ![1, 1, -2, 0, 0]]⟩

def canonicalOutput21334 : ExponentCode := normalNode4312

theorem canonicalSound21334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21334.moment H = canonicalOutput21334.moment H :=
  canonical_of_padded canonicalInput21334 canonicalOutput21334 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21335 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 0, 2], ![0, 1, -2, -1, 2], ![2, 1, 1, -1, -3]]⟩

def canonicalOutput21335 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code983

theorem canonicalSound21335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21335.moment H = canonicalOutput21335.moment H :=
  canonical_of_padded canonicalInput21335 canonicalOutput21335 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21336 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 0, 2], ![0, 1, 1, -2, 0], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21336 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1272

theorem canonicalSound21336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21336.moment H = canonicalOutput21336.moment H :=
  canonical_of_padded canonicalInput21336 canonicalOutput21336 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21337 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 0, 2], ![0, 1, 1, -1, -1], ![2, 1, -2, -1, 0]]⟩

def canonicalOutput21337 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1158

theorem canonicalSound21337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21337.moment H = canonicalOutput21337.moment H :=
  canonical_of_padded canonicalInput21337 canonicalOutput21337 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21338 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 0, 2], ![0, 1, 1, 0, -2], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput21338 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code667

theorem canonicalSound21338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21338.moment H = canonicalOutput21338.moment H :=
  canonical_of_padded canonicalInput21338 canonicalOutput21338 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21339 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 0, 2], ![0, 2, -2, -1, 1], ![2, 0, 1, -1, -2]]⟩

def canonicalOutput21339 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code979

theorem canonicalSound21339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21339.moment H = canonicalOutput21339.moment H :=
  canonical_of_padded canonicalInput21339 canonicalOutput21339 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21340 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 0, 2], ![0, 2, -2, 1, -1], ![2, 0, 1, -3, 0]]⟩

def canonicalOutput21340 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code390

theorem canonicalSound21340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21340.moment H = canonicalOutput21340.moment H :=
  canonical_of_padded canonicalInput21340 canonicalOutput21340 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21341 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 0, 2], ![0, 3, -2, -1, 0], ![2, -1, 1, -1, -1]]⟩

def canonicalOutput21341 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code980

theorem canonicalSound21341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21341.moment H = canonicalOutput21341.moment H :=
  canonical_of_padded canonicalInput21341 canonicalOutput21341 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21342 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 0, 2], ![0, 3, -2, 0, -1], ![2, -1, 1, -2, 0]]⟩

def canonicalOutput21342 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code834

theorem canonicalSound21342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21342.moment H = canonicalOutput21342.moment H :=
  canonical_of_padded canonicalInput21342 canonicalOutput21342 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21343 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 0, 2], ![1, 0, 1, -1, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21343 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1161

theorem canonicalSound21343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21343.moment H = canonicalOutput21343.moment H :=
  canonical_of_padded canonicalInput21343 canonicalOutput21343 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21344 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 1, 1], ![0, 0, 1, -2, 1], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput21344 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1262

theorem canonicalSound21344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21344.moment H = canonicalOutput21344.moment H :=
  canonical_of_padded canonicalInput21344 canonicalOutput21344 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21345 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 1, 1], ![0, 1, 1, -3, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21345 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code424

theorem canonicalSound21345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21345.moment H = canonicalOutput21345.moment H :=
  canonical_of_padded canonicalInput21345 canonicalOutput21345 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21346 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 1, 1], ![1, 0, 1, -3, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21346 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code422

theorem canonicalSound21346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21346.moment H = canonicalOutput21346.moment H :=
  canonical_of_padded canonicalInput21346 canonicalOutput21346 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21347 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 1, 1], ![1, 1, -2, -1, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput21347 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code557

theorem canonicalSound21347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21347.moment H = canonicalOutput21347.moment H :=
  canonical_of_padded canonicalInput21347 canonicalOutput21347 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21348 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 1, 1], ![1, 1, -2, 1, -1], ![1, 1, 1, -4, 1]]⟩

def canonicalOutput21348 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code286

theorem canonicalSound21348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21348.moment H = canonicalOutput21348.moment H :=
  canonical_of_padded canonicalInput21348 canonicalOutput21348 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21349 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 1, 1, 1], ![1, 1, 1, -1, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput21349 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code544

theorem canonicalSound21349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21349.moment H = canonicalOutput21349.moment H :=
  canonical_of_padded canonicalInput21349 canonicalOutput21349 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21350 : ExponentCode := ⟨3, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, -1, 2], ![2, 2, -2, -1, -1]]⟩

def canonicalOutput21350 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1220

theorem canonicalSound21350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21350.moment H = canonicalOutput21350.moment H :=
  canonical_of_padded canonicalInput21350 canonicalOutput21350 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21351 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![0, 1, -2, -1, 2], ![2, 1, 0, -1, -2]]⟩

def canonicalOutput21351 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code938

theorem canonicalSound21351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21351.moment H = canonicalOutput21351.moment H :=
  canonical_of_padded canonicalInput21351 canonicalOutput21351 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21352 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![0, 1, -2, 0, 1], ![2, 1, 0, -2, -1]]⟩

def canonicalOutput21352 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code887

theorem canonicalSound21352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21352.moment H = canonicalOutput21352.moment H :=
  canonical_of_padded canonicalInput21352 canonicalOutput21352 (by decide) (by decide)
    ⟨true, false, canonicalPermutation25, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput21353 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![0, 1, -1, -1, 1], ![2, 1, -1, -1, -1]]⟩

def canonicalOutput21353 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1171

theorem canonicalSound21353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21353.moment H = canonicalOutput21353.moment H :=
  canonical_of_padded canonicalInput21353 canonicalOutput21353 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21354 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![0, 1, 0, -2, 1], ![2, 1, -2, 0, -1]]⟩

def canonicalOutput21354 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1273

theorem canonicalSound21354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21354.moment H = canonicalOutput21354.moment H :=
  canonical_of_padded canonicalInput21354 canonicalOutput21354 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21355 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![1, 0, -2, -1, 2], ![1, 2, 0, -1, -2]]⟩

def canonicalOutput21355 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code937

theorem canonicalSound21355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21355.moment H = canonicalOutput21355.moment H :=
  canonical_of_padded canonicalInput21355 canonicalOutput21355 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21356 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![1, 0, -2, 0, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput21356 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code906

theorem canonicalSound21356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21356.moment H = canonicalOutput21356.moment H :=
  canonical_of_padded canonicalInput21356 canonicalOutput21356 (by decide) (by decide)
    ⟨true, false, canonicalPermutation28, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput21357 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![1, 0, -1, -1, 1], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21357 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1195

theorem canonicalSound21357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21357.moment H = canonicalOutput21357.moment H :=
  canonical_of_padded canonicalInput21357 canonicalOutput21357 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21358 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![1, 0, 0, -2, 1], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21358 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1277

theorem canonicalSound21358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21358.moment H = canonicalOutput21358.moment H :=
  canonical_of_padded canonicalInput21358 canonicalOutput21358 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21359 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![1, 1, -2, 1, -1], ![1, 1, 0, -3, 1]]⟩

def canonicalOutput21359 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code422

theorem canonicalSound21359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21359.moment H = canonicalOutput21359.moment H :=
  canonical_of_padded canonicalInput21359 canonicalOutput21359 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21360 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![1, 1, -1, 0, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput21360 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code884

theorem canonicalSound21360 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21360.moment H = canonicalOutput21360.moment H :=
  canonical_of_padded canonicalInput21360 canonicalOutput21360 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21361 : ExponentCode := ⟨3, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![2, 2, -2, -2, 0]]⟩

def canonicalOutput21361 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩

theorem canonicalSound21361 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21361.moment H = canonicalOutput21361.moment H :=
  canonical_of_padded canonicalInput21361 canonicalOutput21361 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21362 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 2, 0, 1], ![3, -1, 0, -1, -1], ![-1, 3, -2, -1, 1]]⟩

def canonicalOutput21362 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code939

theorem canonicalSound21362 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21362.moment H = canonicalOutput21362.moment H :=
  canonical_of_padded canonicalInput21362 canonicalOutput21362 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21363 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 3, 0, 0], ![-1, 2, -2, -1, 2], ![3, 0, -1, -1, -1]]⟩

def canonicalOutput21363 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code931

theorem canonicalSound21363 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21363.moment H = canonicalOutput21363.moment H :=
  canonical_of_padded canonicalInput21363 canonicalOutput21363 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21364 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -2, 3, 0, 0], ![0, 2, -2, -1, 1], ![2, 0, -1, -1, 0]]⟩

def canonicalOutput21364 : ExponentCode := normalNode5474

theorem canonicalSound21364 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21364.moment H = canonicalOutput21364.moment H :=
  canonical_of_padded canonicalInput21364 canonicalOutput21364 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput21365 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, -1, -1, 4], ![1, -1, 2, -1, -1], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput21365 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code945

theorem canonicalSound21365 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21365.moment H = canonicalOutput21365.moment H :=
  canonical_of_padded canonicalInput21365 canonicalOutput21365 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21366 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, -1, 1, 2], ![0, -1, 2, -1, 0], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput21366 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound21366 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21366.moment H = canonicalOutput21366.moment H :=
  canonical_of_padded canonicalInput21366 canonicalOutput21366 (by decide) (by decide)
    ⟨true, true, canonicalPermutation27, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput21367 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, -1, 1, 2], ![1, -1, 2, -2, 0], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21367 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code599

theorem canonicalSound21367 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21367.moment H = canonicalOutput21367.moment H :=
  canonical_of_padded canonicalInput21367 canonicalOutput21367 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21368 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, -1, 1, 2], ![1, -1, 2, 0, -2], ![1, 2, -1, -3, 1]]⟩

def canonicalOutput21368 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code477

theorem canonicalSound21368 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21368.moment H = canonicalOutput21368.moment H :=
  canonical_of_padded canonicalInput21368 canonicalOutput21368 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21369 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, -1, 2, 1], ![0, -1, 2, -2, 1], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput21369 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code213

theorem canonicalSound21369 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21369.moment H = canonicalOutput21369.moment H :=
  canonical_of_padded canonicalInput21369 canonicalOutput21369 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21370 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, -1, 2, 1], ![1, -1, 2, -1, -1], ![1, 2, -1, -3, 1]]⟩

def canonicalOutput21370 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code168

theorem canonicalSound21370 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21370.moment H = canonicalOutput21370.moment H :=
  canonical_of_padded canonicalInput21370 canonicalOutput21370 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21371 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 1, -1, 2], ![-1, 3, -2, 0, 0], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput21371 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code929

theorem canonicalSound21371 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21371.moment H = canonicalOutput21371.moment H :=
  canonical_of_padded canonicalInput21371 canonicalOutput21371 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21372 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 1, -1, 2], ![0, 2, -2, -1, 1], ![2, -1, 1, 0, -2]]⟩

def canonicalOutput21372 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code971

theorem canonicalSound21372 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21372.moment H = canonicalOutput21372.moment H :=
  canonical_of_padded canonicalInput21372 canonicalOutput21372 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21373 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 1, -1, 2], ![0, 3, -2, 0, -1], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput21373 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code930

theorem canonicalSound21373 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21373.moment H = canonicalOutput21373.moment H :=
  canonical_of_padded canonicalInput21373 canonicalOutput21373 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21374 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 1, -1, 2], ![1, -1, 1, 0, -1], ![1, 2, -2, -1, 0]]⟩

def canonicalOutput21374 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code973

theorem canonicalSound21374 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21374.moment H = canonicalOutput21374.moment H :=
  canonical_of_padded canonicalInput21374 canonicalOutput21374 (by decide) (by decide)
    ⟨true, true, canonicalPermutation53, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21375 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 2, -1], ![-1, -1, 2, -1, 1], ![0, 2, -1, 0, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput21375 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code948

theorem canonicalSound21375 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21375.moment H = canonicalOutput21375.moment H :=
  canonical_of_padded canonicalInput21375 canonicalOutput21375 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
