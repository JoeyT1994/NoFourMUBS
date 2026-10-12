import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9280 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -3, 3], ![0, 0, 0], ![1, 0, -1], ![1, 3, -4]]⟩

def canonicalOutput9280 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node195⟩

theorem canonicalSound9280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9280.moment H = canonicalOutput9280.moment H :=
  canonical_of_padded canonicalInput9280 canonicalOutput9280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9281 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -3, 3], ![0, 4, -4], ![1, 0, -1], ![1, -1, 0]]⟩

def canonicalOutput9281 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node637⟩

theorem canonicalSound9281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9281.moment H = canonicalOutput9281.moment H :=
  canonical_of_padded canonicalInput9281 canonicalOutput9281 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9282 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -3, 3], ![1, -1, 0], ![0, 1, -1], ![1, 3, -4]]⟩

def canonicalOutput9282 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node632⟩

theorem canonicalSound9282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9282.moment H = canonicalOutput9282.moment H :=
  canonical_of_padded canonicalInput9282 canonicalOutput9282 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9283 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -3, 3], ![1, -1, 0], ![1, 0, -1], ![0, 4, -4]]⟩

def canonicalOutput9283 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node637⟩

theorem canonicalSound9283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9283.moment H = canonicalOutput9283.moment H :=
  canonical_of_padded canonicalInput9283 canonicalOutput9283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9284 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![0, -3, 3], ![1, 4, -5], ![1, -1, 0]]⟩

def canonicalOutput9284 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node194⟩

theorem canonicalSound9284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9284.moment H = canonicalOutput9284.moment H :=
  canonical_of_padded canonicalInput9284 canonicalOutput9284 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9285 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -2, 2], ![-1, 2, -1], ![1, 2, -3], ![2, -2, 0]]⟩

def canonicalOutput9285 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1035

theorem canonicalSound9285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9285.moment H = canonicalOutput9285.moment H :=
  canonical_of_padded canonicalInput9285 canonicalOutput9285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9286 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -2, 2], ![0, 1, -1], ![1, 2, -3], ![1, -1, 0]]⟩

def canonicalOutput9286 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node645⟩

theorem canonicalSound9286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9286.moment H = canonicalOutput9286.moment H :=
  canonical_of_padded canonicalInput9286 canonicalOutput9286 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9287 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -2, 2], ![0, 5, -5], ![1, -1, 0], ![1, -2, 1]]⟩

def canonicalOutput9287 : ExponentCode := normalNode4622

theorem canonicalSound9287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9287.moment H = canonicalOutput9287.moment H :=
  canonical_of_padded canonicalInput9287 canonicalOutput9287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9288 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![0, -2, 2], ![0, 5, -5], ![2, -3, 1]]⟩

def canonicalOutput9288 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code693

theorem canonicalSound9288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9288.moment H = canonicalOutput9288.moment H :=
  canonical_of_padded canonicalInput9288 canonicalOutput9288 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9289 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -1, 1], ![-1, -1, 2], ![1, 4, -5], ![2, -2, 0]]⟩

def canonicalOutput9289 : ExponentCode := normalNode4583

theorem canonicalSound9289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9289.moment H = canonicalOutput9289.moment H :=
  canonical_of_padded canonicalInput9289 canonicalOutput9289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9290 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -1, 1], ![-1, 0, 1], ![1, 3, -4], ![2, -2, 0]]⟩

def canonicalOutput9290 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node317⟩

theorem canonicalSound9290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9290.moment H = canonicalOutput9290.moment H :=
  canonical_of_padded canonicalInput9290 canonicalOutput9290 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9291 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![0, -1, 1], ![0, -1, 1], ![0, -1, 1], ![3, -1, -2], ![-1, 4, -3]]⟩

def canonicalOutput9291 : ExponentCode := normalNode217

theorem canonicalSound9291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9291.moment H = canonicalOutput9291.moment H :=
  canonical_of_padded canonicalInput9291 canonicalOutput9291 (by decide) (by decide)
    ⟨false, true, canonicalPermutation93, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9292 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![0, -1, 1], ![0, -1, 1], ![0, 1, -1], ![-2, 3, -1], ![4, -2, -2]]⟩

def canonicalOutput9292 : ExponentCode := normalNode16

theorem canonicalSound9292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9292.moment H = canonicalOutput9292.moment H :=
  canonical_of_padded canonicalInput9292 canonicalOutput9292 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation339, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9293 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![0, -1, 1], ![0, -1, 1], ![1, 0, -1], ![2, -2, 0], ![-1, 4, -3]]⟩

def canonicalOutput9293 : ExponentCode := normalNode4593

theorem canonicalSound9293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9293.moment H = canonicalOutput9293.moment H :=
  canonical_of_padded canonicalInput9293 canonicalOutput9293 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation291, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9294 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -1, 1], ![0, -1, 1], ![1, 3, -4], ![1, -1, 0]]⟩

def canonicalOutput9294 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node653⟩

theorem canonicalSound9294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9294.moment H = canonicalOutput9294.moment H :=
  canonical_of_padded canonicalInput9294 canonicalOutput9294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9295 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -1, 1], ![0, -1, 1], ![1, 4, -5], ![1, -2, 1]]⟩

def canonicalOutput9295 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node652⟩

theorem canonicalSound9295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9295.moment H = canonicalOutput9295.moment H :=
  canonical_of_padded canonicalInput9295 canonicalOutput9295 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9296 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![0, -1, 1], ![0, 4, -4], ![2, -3, 1]]⟩

def canonicalOutput9296 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node171⟩

theorem canonicalSound9296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9296.moment H = canonicalOutput9296.moment H :=
  canonical_of_padded canonicalInput9296 canonicalOutput9296 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9297 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -1, 1], ![1, -3, 2], ![0, 1, -1], ![1, 3, -4]]⟩

def canonicalOutput9297 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node657⟩

theorem canonicalSound9297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9297.moment H = canonicalOutput9297.moment H :=
  canonical_of_padded canonicalInput9297 canonicalOutput9297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9298 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -1, 1], ![1, -3, 2], ![1, 0, -1], ![0, 4, -4]]⟩

def canonicalOutput9298 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node664⟩

theorem canonicalSound9298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9298.moment H = canonicalOutput9298.moment H :=
  canonical_of_padded canonicalInput9298 canonicalOutput9298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9299 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -1, 1], ![1, -2, 1], ![0, 0, 0], ![1, 3, -4]]⟩

def canonicalOutput9299 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node206⟩

theorem canonicalSound9299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9299.moment H = canonicalOutput9299.moment H :=
  canonical_of_padded canonicalInput9299 canonicalOutput9299 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9300 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, -1, 1], ![1, -2, 1], ![1, -1, 0], ![0, 4, -4]]⟩

def canonicalOutput9300 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node665⟩

theorem canonicalSound9300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9300.moment H = canonicalOutput9300.moment H :=
  canonical_of_padded canonicalInput9300 canonicalOutput9300 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9301 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![0, -1, 1], ![1, -1, 0], ![1, -1, 0], ![-1, -1, 2], ![1, 4, -5]]⟩

def canonicalOutput9301 : ExponentCode := normalNode4582

theorem canonicalSound9301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9301.moment H = canonicalOutput9301.moment H :=
  canonical_of_padded canonicalInput9301 canonicalOutput9301 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9302 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![0, -3, 3], ![0, 4, -4]]⟩

def canonicalOutput9302 : ExponentCode := normalNode4611

theorem canonicalSound9302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9302.moment H = canonicalOutput9302.moment H :=
  canonical_of_padded canonicalInput9302 canonicalOutput9302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9303 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![0, -1, 1], ![1, 0, -1], ![1, 0, -1], ![1, -3, 2], ![-1, 4, -3]]⟩

def canonicalOutput9303 : ExponentCode := normalNode4607

theorem canonicalSound9303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9303.moment H = canonicalOutput9303.moment H :=
  canonical_of_padded canonicalInput9303 canonicalOutput9303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9304 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, 0, 0], ![0, 3, -3], ![1, -3, 2], ![1, 0, -1]]⟩

def canonicalOutput9304 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩

theorem canonicalSound9304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9304.moment H = canonicalOutput9304.moment H :=
  canonical_of_padded canonicalInput9304 canonicalOutput9304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9305 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, 1, -1], ![-1, 3, -2], ![1, -3, 2], ![2, -1, -1]]⟩

def canonicalOutput9305 : ExponentCode := normalNode4606

theorem canonicalSound9305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9305.moment H = canonicalOutput9305.moment H :=
  canonical_of_padded canonicalInput9305 canonicalOutput9305 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9306 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, 1, -1], ![0, -2, 2], ![1, -1, 0], ![1, 2, -3]]⟩

def canonicalOutput9306 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node645⟩

theorem canonicalSound9306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9306.moment H = canonicalOutput9306.moment H :=
  canonical_of_padded canonicalInput9306 canonicalOutput9306 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9307 : ExponentCode := ⟨6, 3, ![![-2, 0, 2], ![0, 1, -1], ![0, 1, -1], ![1, -1, 0], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput9307 : ExponentCode := normalNode4633

theorem canonicalSound9307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9307.moment H = canonicalOutput9307.moment H :=
  canonical_of_padded canonicalInput9307 canonicalOutput9307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9308 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, 2, -2], ![0, -2, 2], ![1, -1, 0], ![1, 1, -2]]⟩

def canonicalOutput9308 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node647⟩

theorem canonicalSound9308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9308.moment H = canonicalOutput9308.moment H :=
  canonical_of_padded canonicalInput9308 canonicalOutput9308 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9309 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![0, 2, -2], ![0, 2, -2], ![2, -4, 2]]⟩

def canonicalOutput9309 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node151⟩

theorem canonicalSound9309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9309.moment H = canonicalOutput9309.moment H :=
  canonical_of_padded canonicalInput9309 canonicalOutput9309 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9310 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![0, 2, -2], ![0, 3, -3], ![2, -5, 3]]⟩

def canonicalOutput9310 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code103

theorem canonicalSound9310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9310.moment H = canonicalOutput9310.moment H :=
  canonical_of_padded canonicalInput9310 canonicalOutput9310 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9311 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![0, 2, -2], ![1, 2, -3], ![1, -4, 3]]⟩

def canonicalOutput9311 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩

theorem canonicalSound9311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9311.moment H = canonicalOutput9311.moment H :=
  canonical_of_padded canonicalInput9311 canonicalOutput9311 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9312 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, 3, -3], ![0, -3, 3], ![1, 0, -1], ![1, 0, -1]]⟩

def canonicalOutput9312 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node636⟩

theorem canonicalSound9312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9312.moment H = canonicalOutput9312.moment H :=
  canonical_of_padded canonicalInput9312 canonicalOutput9312 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9313 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![0, 3, -3], ![0, 1, -1], ![2, -4, 2]]⟩

def canonicalOutput9313 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node147⟩

theorem canonicalSound9313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9313.moment H = canonicalOutput9313.moment H :=
  canonical_of_padded canonicalInput9313 canonicalOutput9313 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9314 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, 3, -3], ![1, -4, 3], ![0, 1, -1], ![1, 0, -1]]⟩

def canonicalOutput9314 : ExponentCode := normalNode4634

theorem canonicalSound9314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9314.moment H = canonicalOutput9314.moment H :=
  canonical_of_padded canonicalInput9314 canonicalOutput9314 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9315 : ExponentCode := ⟨5, 3, ![![-2, 0, 2], ![0, 3, -3], ![1, -4, 3], ![1, 0, -1], ![0, 1, -1]]⟩

def canonicalOutput9315 : ExponentCode := normalNode4634

theorem canonicalSound9315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9315.moment H = canonicalOutput9315.moment H :=
  canonical_of_padded canonicalInput9315 canonicalOutput9315 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9316 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![0, 3, -3], ![1, 1, -2], ![1, -4, 3]]⟩

def canonicalOutput9316 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound9316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9316.moment H = canonicalOutput9316.moment H :=
  canonical_of_padded canonicalInput9316 canonicalOutput9316 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9317 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![0, 5, -5], ![1, -2, 1], ![1, -3, 2]]⟩

def canonicalOutput9317 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1062

theorem canonicalSound9317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9317.moment H = canonicalOutput9317.moment H :=
  canonical_of_padded canonicalInput9317 canonicalOutput9317 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9318 : ExponentCode := ⟨3, 3, ![![-2, 0, 2], ![0, 5, -5], ![2, -5, 3]]⟩

def canonicalOutput9318 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code107

theorem canonicalSound9318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9318.moment H = canonicalOutput9318.moment H :=
  canonical_of_padded canonicalInput9318 canonicalOutput9318 (by decide) (by decide)
    ⟨false, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput9319 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![1, -4, 3], ![0, 2, -2], ![1, 2, -3]]⟩

def canonicalOutput9319 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩

theorem canonicalSound9319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9319.moment H = canonicalOutput9319.moment H :=
  canonical_of_padded canonicalInput9319 canonicalOutput9319 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9320 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![1, -4, 3], ![0, 3, -3], ![1, 1, -2]]⟩

def canonicalOutput9320 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound9320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9320.moment H = canonicalOutput9320.moment H :=
  canonical_of_padded canonicalInput9320 canonicalOutput9320 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9321 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![1, -4, 3], ![0, 5, -5], ![1, -1, 0]]⟩

def canonicalOutput9321 : ExponentCode := normalNode4637

theorem canonicalSound9321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9321.moment H = canonicalOutput9321.moment H :=
  canonical_of_padded canonicalInput9321 canonicalOutput9321 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9322 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![1, -3, 2], ![0, 0, 0], ![1, 3, -4]]⟩

def canonicalOutput9322 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node32⟩

theorem canonicalSound9322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9322.moment H = canonicalOutput9322.moment H :=
  canonical_of_padded canonicalInput9322 canonicalOutput9322 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9323 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![1, -3, 2], ![0, 5, -5], ![1, -2, 1]]⟩

def canonicalOutput9323 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1062

theorem canonicalSound9323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9323.moment H = canonicalOutput9323.moment H :=
  canonical_of_padded canonicalInput9323 canonicalOutput9323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9324 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![1, -3, 2], ![1, -1, 0], ![0, 4, -4]]⟩

def canonicalOutput9324 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node217⟩

theorem canonicalSound9324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9324.moment H = canonicalOutput9324.moment H :=
  canonical_of_padded canonicalInput9324 canonicalOutput9324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9325 : ExponentCode := ⟨4, 3, ![![-2, 0, 2], ![1, 1, -2], ![0, 3, -3], ![1, -4, 3]]⟩

def canonicalOutput9325 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound9325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9325.moment H = canonicalOutput9325.moment H :=
  canonical_of_padded canonicalInput9325 canonicalOutput9325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9326 : ExponentCode := ⟨5, 5, ![![-2, 0, 2, -1, 1], ![0, 0, -1, 0, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput9326 : ExponentCode := normalNode8445

theorem canonicalSound9326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9326.moment H = canonicalOutput9326.moment H :=
  canonical_of_padded canonicalInput9326 canonicalOutput9326 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput9327 : ExponentCode := ⟨5, 5, ![![-2, 0, 2, -1, 1], ![0, 1, -1, -1, 1], ![0, 0, -1, 2, -1], ![1, -1, 0, -1, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput9327 : ExponentCode := normalNode10797

theorem canonicalSound9327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9327.moment H = canonicalOutput9327.moment H :=
  canonical_of_padded canonicalInput9327 canonicalOutput9327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation169⟩ (by decide +kernel) hH

def canonicalInput9328 : ExponentCode := ⟨5, 5, ![![-2, 0, 2, -1, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -2, 0, 0, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput9328 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code377

theorem canonicalSound9328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9328.moment H = canonicalOutput9328.moment H :=
  canonical_of_padded canonicalInput9328 canonicalOutput9328 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9329 : ExponentCode := ⟨5, 5, ![![-2, 0, 2, -1, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 1, -1], ![1, -1, 0, 0, 0], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput9329 : ExponentCode := normalNode8081

theorem canonicalSound9329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9329.moment H = canonicalOutput9329.moment H :=
  canonical_of_padded canonicalInput9329 canonicalOutput9329 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput9330 : ExponentCode := ⟨5, 5, ![![-2, 0, 2, -1, 1], ![0, 1, -1, -1, 1], ![0, 1, -1, 2, -2], ![1, -1, 0, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput9330 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1063

theorem canonicalSound9330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9330.moment H = canonicalOutput9330.moment H :=
  canonical_of_padded canonicalInput9330 canonicalOutput9330 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation73⟩ (by decide +kernel) hH

def canonicalInput9331 : ExponentCode := ⟨5, 5, ![![-2, 0, 2, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1], ![1, -1, 0, 1, -1]]⟩

def canonicalOutput9331 : ExponentCode := normalNode8081

theorem canonicalSound9331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9331.moment H = canonicalOutput9331.moment H :=
  canonical_of_padded canonicalInput9331 canonicalOutput9331 (by decide) (by decide)
    ⟨true, false, canonicalPermutation27, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput9332 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-3, 2, -2, 3], ![5, -2, 0, -3]]⟩

def canonicalOutput9332 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code103

theorem canonicalSound9332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9332.moment H = canonicalOutput9332.moment H :=
  canonical_of_padded canonicalInput9332 canonicalOutput9332 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9333 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-3, 2, 0, 1], ![5, -2, -2, -1]]⟩

def canonicalOutput9333 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node120⟩

theorem canonicalSound9333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9333.moment H = canonicalOutput9333.moment H :=
  canonical_of_padded canonicalInput9333 canonicalOutput9333 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9334 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-3, 3, -2, 2], ![5, -3, 0, -2]]⟩

def canonicalOutput9334 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code103

theorem canonicalSound9334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9334.moment H = canonicalOutput9334.moment H :=
  canonical_of_padded canonicalInput9334 canonicalOutput9334 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9335 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-3, 3, -1, 1], ![5, -3, -1, -1]]⟩

def canonicalOutput9335 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node121⟩

theorem canonicalSound9335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9335.moment H = canonicalOutput9335.moment H :=
  canonical_of_padded canonicalInput9335 canonicalOutput9335 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9336 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-2, -2, 2, 2], ![4, 2, -4, -2]]⟩

def canonicalOutput9336 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code233

theorem canonicalSound9336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9336.moment H = canonicalOutput9336.moment H :=
  canonical_of_padded canonicalInput9336 canonicalOutput9336 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9337 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-2, 2, -3, 3], ![4, -2, 1, -3]]⟩

def canonicalOutput9337 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code239

theorem canonicalSound9337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9337.moment H = canonicalOutput9337.moment H :=
  canonical_of_padded canonicalInput9337 canonicalOutput9337 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9338 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-2, 3, -3, 2], ![4, -3, 1, -2]]⟩

def canonicalOutput9338 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code239

theorem canonicalSound9338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9338.moment H = canonicalOutput9338.moment H :=
  canonical_of_padded canonicalInput9338 canonicalOutput9338 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9339 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-2, 3, -2, 1], ![4, -3, 0, -1]]⟩

def canonicalOutput9339 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node147⟩

theorem canonicalSound9339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9339.moment H = canonicalOutput9339.moment H :=
  canonical_of_padded canonicalInput9339 canonicalOutput9339 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9340 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-2, 4, -1, -1], ![4, -4, -1, 1]]⟩

def canonicalOutput9340 : ExponentCode := normalNode1002

theorem canonicalSound9340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9340.moment H = canonicalOutput9340.moment H :=
  canonical_of_padded canonicalInput9340 canonicalOutput9340 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9341 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-1, -2, -1, 4], ![3, 2, -1, -4]]⟩

def canonicalOutput9341 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node164⟩

theorem canonicalSound9341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9341.moment H = canonicalOutput9341.moment H :=
  canonical_of_padded canonicalInput9341 canonicalOutput9341 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9342 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-1, -2, 2, 1], ![3, 2, -4, -1]]⟩

def canonicalOutput9342 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node140⟩

theorem canonicalSound9342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9342.moment H = canonicalOutput9342.moment H :=
  canonical_of_padded canonicalInput9342 canonicalOutput9342 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput9343 : ExponentCode := ⟨3, 4, ![![-2, 0, 2, 0], ![-1, 2, -3, 2], ![3, -2, 1, -2]]⟩

def canonicalOutput9343 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node182⟩

theorem canonicalSound9343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9343.moment H = canonicalOutput9343.moment H :=
  canonical_of_padded canonicalInput9343 canonicalOutput9343 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
