import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15296 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput15296 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2541⟩

theorem canonicalSound15296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15296.moment H = canonicalOutput15296.moment H :=
  canonical_of_padded canonicalInput15296 canonicalOutput15296 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15297 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput15297 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node942⟩

theorem canonicalSound15297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15297.moment H = canonicalOutput15297.moment H :=
  canonical_of_padded canonicalInput15297 canonicalOutput15297 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15298 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![0, 0, 1, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput15298 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2537⟩

theorem canonicalSound15298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15298.moment H = canonicalOutput15298.moment H :=
  canonical_of_padded canonicalInput15298 canonicalOutput15298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15299 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![0, 1, 0, -1]]⟩

def canonicalOutput15299 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2542⟩

theorem canonicalSound15299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15299.moment H = canonicalOutput15299.moment H :=
  canonical_of_padded canonicalInput15299 canonicalOutput15299 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15300 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput15300 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2532⟩

theorem canonicalSound15300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15300.moment H = canonicalOutput15300.moment H :=
  canonical_of_padded canonicalInput15300 canonicalOutput15300 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15301 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 3, -2, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput15301 : ExponentCode := normalNode7838

theorem canonicalSound15301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15301.moment H = canonicalOutput15301.moment H :=
  canonical_of_padded canonicalInput15301 canonicalOutput15301 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15302 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![0, -1, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15302 : ExponentCode := normalNode7876

theorem canonicalSound15302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15302.moment H = canonicalOutput15302.moment H :=
  canonical_of_padded canonicalInput15302 canonicalOutput15302 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15303 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, -1, 0, 0]]⟩

def canonicalOutput15303 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node952⟩

theorem canonicalSound15303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15303.moment H = canonicalOutput15303.moment H :=
  canonical_of_padded canonicalInput15303 canonicalOutput15303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15304 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![0, 0, 0, 0]]⟩

def canonicalOutput15304 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node952⟩

theorem canonicalSound15304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15304.moment H = canonicalOutput15304.moment H :=
  canonical_of_padded canonicalInput15304 canonicalOutput15304 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15305 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![1, 1, -2, 0], ![0, 1, 1, -2]]⟩

def canonicalOutput15305 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound15305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15305.moment H = canonicalOutput15305.moment H :=
  canonical_of_padded canonicalInput15305 canonicalOutput15305 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15306 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 2, -1], ![1, 1, -1, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput15306 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node942⟩

theorem canonicalSound15306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15306.moment H = canonicalOutput15306.moment H :=
  canonical_of_padded canonicalInput15306 canonicalOutput15306 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15307 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15307 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2545⟩

theorem canonicalSound15307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15307.moment H = canonicalOutput15307.moment H :=
  canonical_of_padded canonicalInput15307 canonicalOutput15307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15308 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput15308 : ExponentCode := normalNode7904

theorem canonicalSound15308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15308.moment H = canonicalOutput15308.moment H :=
  canonical_of_padded canonicalInput15308 canonicalOutput15308 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15309 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 3, -2], ![1, 1, -3, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput15309 : ExponentCode := normalNode7904

theorem canonicalSound15309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15309.moment H = canonicalOutput15309.moment H :=
  canonical_of_padded canonicalInput15309 canonicalOutput15309 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15310 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15310 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2677⟩

theorem canonicalSound15310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15310.moment H = canonicalOutput15310.moment H :=
  canonical_of_padded canonicalInput15310 canonicalOutput15310 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15311 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput15311 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node779⟩

theorem canonicalSound15311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15311.moment H = canonicalOutput15311.moment H :=
  canonical_of_padded canonicalInput15311 canonicalOutput15311 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15312 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, 1, -3, 1]]⟩

def canonicalOutput15312 : ExponentCode := normalNode7893

theorem canonicalSound15312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15312.moment H = canonicalOutput15312.moment H :=
  canonical_of_padded canonicalInput15312 canonicalOutput15312 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput15313 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, -1, 4, -3], ![0, 2, -2, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput15313 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node782⟩

theorem canonicalSound15313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15313.moment H = canonicalOutput15313.moment H :=
  canonical_of_padded canonicalInput15313 canonicalOutput15313 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput15314 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![0, -1, 4, -3], ![1, 2, -3, 0]]⟩

def canonicalOutput15314 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node87⟩

theorem canonicalSound15314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15314.moment H = canonicalOutput15314.moment H :=
  canonical_of_padded canonicalInput15314 canonicalOutput15314 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15315 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![-1, 1, 3, -3], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15315 : ExponentCode := normalNode7790

theorem canonicalSound15315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15315.moment H = canonicalOutput15315.moment H :=
  canonical_of_padded canonicalInput15315 canonicalOutput15315 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15316 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![-1, 2, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput15316 : ExponentCode := normalNode5259

theorem canonicalSound15316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15316.moment H = canonicalOutput15316.moment H :=
  canonical_of_padded canonicalInput15316 canonicalOutput15316 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15317 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![-1, 2, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput15317 : ExponentCode := normalNode5350

theorem canonicalSound15317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15317.moment H = canonicalOutput15317.moment H :=
  canonical_of_padded canonicalInput15317 canonicalOutput15317 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15318 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![-1, 2, 2, -3], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput15318 : ExponentCode := normalNode4848

theorem canonicalSound15318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15318.moment H = canonicalOutput15318.moment H :=
  canonical_of_padded canonicalInput15318 canonicalOutput15318 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15319 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 0, 3, -3], ![0, 0, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput15319 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node956⟩

theorem canonicalSound15319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15319.moment H = canonicalOutput15319.moment H :=
  canonical_of_padded canonicalInput15319 canonicalOutput15319 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15320 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 0, 3, -3], ![1, -1, 0, 0], ![0, 2, 0, -2]]⟩

def canonicalOutput15320 : ExponentCode := normalNode7930

theorem canonicalSound15320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15320.moment H = canonicalOutput15320.moment H :=
  canonical_of_padded canonicalInput15320 canonicalOutput15320 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15321 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 0, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput15321 : ExponentCode := normalNode7936

theorem canonicalSound15321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15321.moment H = canonicalOutput15321.moment H :=
  canonical_of_padded canonicalInput15321 canonicalOutput15321 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15322 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![0, 0, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput15322 : ExponentCode := normalNode7929

theorem canonicalSound15322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15322.moment H = canonicalOutput15322.moment H :=
  canonical_of_padded canonicalInput15322 canonicalOutput15322 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15323 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![0, 1, 3, -4]]⟩

def canonicalOutput15323 : ExponentCode := normalNode7935

theorem canonicalSound15323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15323.moment H = canonicalOutput15323.moment H :=
  canonical_of_padded canonicalInput15323 canonicalOutput15323 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15324 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![0, 1, 0, -1]]⟩

def canonicalOutput15324 : ExponentCode := normalNode7933

theorem canonicalSound15324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15324.moment H = canonicalOutput15324.moment H :=
  canonical_of_padded canonicalInput15324 canonicalOutput15324 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15325 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 1, 2, -3], ![0, 0, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput15325 : ExponentCode := normalNode7926

theorem canonicalSound15325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15325.moment H = canonicalOutput15325.moment H :=
  canonical_of_padded canonicalInput15325 canonicalOutput15325 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15326 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, -1, 1, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput15326 : ExponentCode := normalNode7934

theorem canonicalSound15326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15326.moment H = canonicalOutput15326.moment H :=
  canonical_of_padded canonicalInput15326 canonicalOutput15326 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15327 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 1, 2, -3], ![1, 0, 1, -2]]⟩

def canonicalOutput15327 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node958⟩

theorem canonicalSound15327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15327.moment H = canonicalOutput15327.moment H :=
  canonical_of_padded canonicalInput15327 canonicalOutput15327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15328 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![0, 1, 0, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput15328 : ExponentCode := normalNode7935

theorem canonicalSound15328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15328.moment H = canonicalOutput15328.moment H :=
  canonical_of_padded canonicalInput15328 canonicalOutput15328 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15329 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput15329 : ExponentCode := normalNode7936

theorem canonicalSound15329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15329.moment H = canonicalOutput15329.moment H :=
  canonical_of_padded canonicalInput15329 canonicalOutput15329 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15330 : ExponentCode := ⟨4, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![1, -1, 3, -3], ![0, 2, 0, -2]]⟩

def canonicalOutput15330 : ExponentCode := normalNode7937

theorem canonicalSound15330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15330.moment H = canonicalOutput15330.moment H :=
  canonical_of_padded canonicalInput15330 canonicalOutput15330 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15331 : ExponentCode := ⟨3, 4, ![![-1, -1, -1, 3], ![0, 0, -2, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput15331 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node119⟩

theorem canonicalSound15331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15331.moment H = canonicalOutput15331.moment H :=
  canonical_of_padded canonicalInput15331 canonicalOutput15331 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15332 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![-1, 1, 4, -4], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput15332 : ExponentCode := normalNode7796

theorem canonicalSound15332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15332.moment H = canonicalOutput15332.moment H :=
  canonical_of_padded canonicalInput15332 canonicalOutput15332 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15333 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![-1, 2, -1, 0], ![1, -1, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput15333 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2307⟩

theorem canonicalSound15333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15333.moment H = canonicalOutput15333.moment H :=
  canonical_of_padded canonicalInput15333 canonicalOutput15333 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15334 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![-1, 2, -1, 0], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput15334 : ExponentCode := normalNode5342

theorem canonicalSound15334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15334.moment H = canonicalOutput15334.moment H :=
  canonical_of_padded canonicalInput15334 canonicalOutput15334 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15335 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![-1, 2, 2, -3], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15335 : ExponentCode := normalNode4888

theorem canonicalSound15335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15335.moment H = canonicalOutput15335.moment H :=
  canonical_of_padded canonicalInput15335 canonicalOutput15335 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15336 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, -1, 0, 1], ![0, 2, 2, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput15336 : ExponentCode := normalNode7860

theorem canonicalSound15336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15336.moment H = canonicalOutput15336.moment H :=
  canonical_of_padded canonicalInput15336 canonicalOutput15336 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15337 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, -1, 1, 0], ![0, 2, 2, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput15337 : ExponentCode := normalNode7883

theorem canonicalSound15337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15337.moment H = canonicalOutput15337.moment H :=
  canonical_of_padded canonicalInput15337 canonicalOutput15337 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15338 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 1, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15338 : ExponentCode := normalNode7884

theorem canonicalSound15338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15338.moment H = canonicalOutput15338.moment H :=
  canonical_of_padded canonicalInput15338 canonicalOutput15338 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15339 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, -1, 2, -1], ![0, 2, 1, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput15339 : ExponentCode := normalNode7897

theorem canonicalSound15339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15339.moment H = canonicalOutput15339.moment H :=
  canonical_of_padded canonicalInput15339 canonicalOutput15339 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15340 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 0, -1, 1], ![0, 1, 3, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput15340 : ExponentCode := normalNode7944

theorem canonicalSound15340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15340.moment H = canonicalOutput15340.moment H :=
  canonical_of_padded canonicalInput15340 canonicalOutput15340 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15341 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput15341 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node962⟩

theorem canonicalSound15341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15341.moment H = canonicalOutput15341.moment H :=
  canonical_of_padded canonicalInput15341 canonicalOutput15341 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15342 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput15342 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node963⟩

theorem canonicalSound15342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15342.moment H = canonicalOutput15342.moment H :=
  canonical_of_padded canonicalInput15342 canonicalOutput15342 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation176, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15343 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 1, 3, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput15343 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node962⟩

theorem canonicalSound15343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15343.moment H = canonicalOutput15343.moment H :=
  canonical_of_padded canonicalInput15343 canonicalOutput15343 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation177, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15344 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, -1, 0, 0]]⟩

def canonicalOutput15344 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1168⟩

theorem canonicalSound15344 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15344.moment H = canonicalOutput15344.moment H :=
  canonical_of_padded canonicalInput15344 canonicalOutput15344 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation79⟩ (by decide +kernel) hH

def canonicalInput15345 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput15345 : ExponentCode := normalNode7952

theorem canonicalSound15345 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15345.moment H = canonicalOutput15345.moment H :=
  canonical_of_padded canonicalInput15345 canonicalOutput15345 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15346 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput15346 : ExponentCode := normalNode7950

theorem canonicalSound15346 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15346.moment H = canonicalOutput15346.moment H :=
  canonical_of_padded canonicalInput15346 canonicalOutput15346 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15347 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput15347 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2529⟩

theorem canonicalSound15347 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15347.moment H = canonicalOutput15347.moment H :=
  canonical_of_padded canonicalInput15347 canonicalOutput15347 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15348 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 0, 4, -4], ![0, 0, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput15348 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node961⟩

theorem canonicalSound15348 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15348.moment H = canonicalOutput15348.moment H :=
  canonical_of_padded canonicalInput15348 canonicalOutput15348 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15349 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![0, 2, -2, 0]]⟩

def canonicalOutput15349 : ExponentCode := normalNode7959

theorem canonicalSound15349 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15349.moment H = canonicalOutput15349.moment H :=
  canonical_of_padded canonicalInput15349 canonicalOutput15349 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15350 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 0, 0], ![1, 0, 3, -4]]⟩

def canonicalOutput15350 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node962⟩

theorem canonicalSound15350 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15350.moment H = canonicalOutput15350.moment H :=
  canonical_of_padded canonicalInput15350 canonicalOutput15350 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15351 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 1, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput15351 : ExponentCode := normalNode7950

theorem canonicalSound15351 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15351.moment H = canonicalOutput15351.moment H :=
  canonical_of_padded canonicalInput15351 canonicalOutput15351 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15352 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 0, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput15352 : ExponentCode := normalNode7958

theorem canonicalSound15352 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15352.moment H = canonicalOutput15352.moment H :=
  canonical_of_padded canonicalInput15352 canonicalOutput15352 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15353 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, 1, 3, -4]]⟩

def canonicalOutput15353 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2549⟩

theorem canonicalSound15353 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15353.moment H = canonicalOutput15353.moment H :=
  canonical_of_padded canonicalInput15353 canonicalOutput15353 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15354 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 4, -4], ![0, 1, -1, 0]]⟩

def canonicalOutput15354 : ExponentCode := normalNode7961

theorem canonicalSound15354 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15354.moment H = canonicalOutput15354.moment H :=
  canonical_of_padded canonicalInput15354 canonicalOutput15354 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15355 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput15355 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2548⟩

theorem canonicalSound15355 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15355.moment H = canonicalOutput15355.moment H :=
  canonical_of_padded canonicalInput15355 canonicalOutput15355 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput15356 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput15356 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2434⟩

theorem canonicalSound15356 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15356.moment H = canonicalOutput15356.moment H :=
  canonical_of_padded canonicalInput15356 canonicalOutput15356 (by decide) (by decide)
    ⟨false, true, canonicalPermutation20, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15357 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput15357 : ExponentCode := normalNode7864

theorem canonicalSound15357 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15357.moment H = canonicalOutput15357.moment H :=
  canonical_of_padded canonicalInput15357 canonicalOutput15357 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15358 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, 2, -3], ![0, 0, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput15358 : ExponentCode := normalNode7950

theorem canonicalSound15358 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15358.moment H = canonicalOutput15358.moment H :=
  canonical_of_padded canonicalInput15358 canonicalOutput15358 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15359 : ExponentCode := ⟨5, 4, ![![-1, -1, -1, 3], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 1, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput15359 : ExponentCode := normalNode7962

theorem canonicalSound15359 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15359.moment H = canonicalOutput15359.moment H :=
  canonical_of_padded canonicalInput15359 canonicalOutput15359 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
