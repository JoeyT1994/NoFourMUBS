import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput21248 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -1, 1], ![0, 0, 0, -1, 1], ![0, -2, 1, 0, 1], ![0, 2, -2, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput21248 : ExponentCode := normalNode7500

theorem canonicalSound21248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21248.moment H = canonicalOutput21248.moment H :=
  canonical_of_padded canonicalInput21248 canonicalOutput21248 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation380, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput21249 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![-1, -2, 1, 0, 2], ![0, 1, -2, 0, 1], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput21249 : ExponentCode := normalNode1504

theorem canonicalSound21249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21249.moment H = canonicalOutput21249.moment H :=
  canonical_of_padded canonicalInput21249 canonicalOutput21249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation241, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput21250 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![-1, -2, 1, 0, 2], ![0, 2, -2, 0, 0], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput21250 : ExponentCode := normalNode1503

theorem canonicalSound21250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21250.moment H = canonicalOutput21250.moment H :=
  canonical_of_padded canonicalInput21250 canonicalOutput21250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput21251 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![0, -2, 1, 0, 1], ![-1, 1, -2, 0, 2], ![1, 1, 1, 1, -4]]⟩

def canonicalOutput21251 : ExponentCode := normalNode1504

theorem canonicalSound21251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21251.moment H = canonicalOutput21251.moment H :=
  canonical_of_padded canonicalInput21251 canonicalOutput21251 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput21252 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![0, -2, 1, 0, 1], ![-1, 2, -2, 0, 1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput21252 : ExponentCode := normalNode1625

theorem canonicalSound21252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21252.moment H = canonicalOutput21252.moment H :=
  canonical_of_padded canonicalInput21252 canonicalOutput21252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, canonicalPermutation42⟩ (by decide +kernel) hH

def canonicalInput21253 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![0, -2, 1, 0, 1], ![0, 1, -2, 0, 1], ![0, 1, 1, 1, -3]]⟩

def canonicalOutput21253 : ExponentCode := normalNode10741

theorem canonicalSound21253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21253.moment H = canonicalOutput21253.moment H :=
  canonical_of_padded canonicalInput21253 canonicalOutput21253 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21254 : ExponentCode := ⟨6, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 0, -1, 1], ![1, 0, 0, -1, 0], ![0, -2, 1, 0, 1], ![0, 2, -2, 0, 0], ![0, 0, 1, 1, -2]]⟩

def canonicalOutput21254 : ExponentCode := normalNode10439

theorem canonicalSound21254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21254.moment H = canonicalOutput21254.moment H :=
  canonical_of_padded canonicalInput21254 canonicalOutput21254 (by decide) (by decide)
    ⟨false, false, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput21255 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 1, -2, 1], ![-1, 2, -2, 1, 0], ![2, -2, 1, 0, -1]]⟩

def canonicalOutput21255 : ExponentCode := normalNode10345

theorem canonicalSound21255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21255.moment H = canonicalOutput21255.moment H :=
  canonical_of_padded canonicalInput21255 canonicalOutput21255 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21256 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 1, -2, 1], ![0, -2, 1, 0, 1], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21256 : ExponentCode := normalNode10523

theorem canonicalSound21256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21256.moment H = canonicalOutput21256.moment H :=
  canonical_of_padded canonicalInput21256 canonicalOutput21256 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21257 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 1, -2, 1], ![0, -2, 1, 1, 0], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21257 : ExponentCode := normalNode9550

theorem canonicalSound21257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21257.moment H = canonicalOutput21257.moment H :=
  canonical_of_padded canonicalInput21257 canonicalOutput21257 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21258 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 1, -2, 1], ![0, 2, -2, 1, -1], ![1, -2, 1, 0, 0]]⟩

def canonicalOutput21258 : ExponentCode := normalNode10855

theorem canonicalSound21258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21258.moment H = canonicalOutput21258.moment H :=
  canonical_of_padded canonicalInput21258 canonicalOutput21258 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21259 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 1, -2, 1], ![1, -2, 1, -1, 1], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput21259 : ExponentCode := normalNode10856

theorem canonicalSound21259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21259.moment H = canonicalOutput21259.moment H :=
  canonical_of_padded canonicalInput21259 canonicalOutput21259 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21260 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 1, -2, 1], ![1, -2, 1, 0, 0], ![0, 2, -2, 1, -1]]⟩

def canonicalOutput21260 : ExponentCode := normalNode10855

theorem canonicalSound21260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21260.moment H = canonicalOutput21260.moment H :=
  canonical_of_padded canonicalInput21260 canonicalOutput21260 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21261 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 1, -2, 1], ![1, -2, 1, 1, -1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput21261 : ExponentCode := normalNode10526

theorem canonicalSound21261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21261.moment H = canonicalOutput21261.moment H :=
  canonical_of_padded canonicalInput21261 canonicalOutput21261 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21262 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 1, -2, 1], ![2, -2, 1, -1, 0], ![-1, 2, -2, 2, -1]]⟩

def canonicalOutput21262 : ExponentCode := normalNode10901

theorem canonicalSound21262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21262.moment H = canonicalOutput21262.moment H :=
  canonical_of_padded canonicalInput21262 canonicalOutput21262 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21263 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 1, -1, 0], ![0, 2, -2, -1, 1], ![1, -2, 1, 1, -1]]⟩

def canonicalOutput21263 : ExponentCode := normalNode10338

theorem canonicalSound21263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21263.moment H = canonicalOutput21263.moment H :=
  canonical_of_padded canonicalInput21263 canonicalOutput21263 (by decide) (by decide)
    ⟨true, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput21264 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 1, 1, -2], ![0, 1, 0, -2, 1], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput21264 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2584⟩

theorem canonicalSound21264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21264.moment H = canonicalOutput21264.moment H :=
  canonical_of_padded canonicalInput21264 canonicalOutput21264 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21265 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -2, 0], ![-1, 2, 0, 0, -1], ![2, -2, -2, 1, 1]]⟩

def canonicalOutput21265 : ExponentCode := normalNode8950

theorem canonicalSound21265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21265.moment H = canonicalOutput21265.moment H :=
  canonical_of_padded canonicalInput21265 canonicalOutput21265 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21266 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -2, 0], ![0, -2, -1, 1, 2], ![1, 2, -1, 0, -2]]⟩

def canonicalOutput21266 : ExponentCode := normalNode10687

theorem canonicalSound21266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21266.moment H = canonicalOutput21266.moment H :=
  canonical_of_padded canonicalInput21266 canonicalOutput21266 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21267 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -2, 0], ![0, -2, 0, 0, 2], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21267 : ExponentCode := normalNode10521

theorem canonicalSound21267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21267.moment H = canonicalOutput21267.moment H :=
  canonical_of_padded canonicalInput21267 canonicalOutput21267 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21268 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -2, 0], ![0, 2, 0, -1, -1], ![1, -2, -2, 2, 1]]⟩

def canonicalOutput21268 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2762⟩

theorem canonicalSound21268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21268.moment H = canonicalOutput21268.moment H :=
  canonical_of_padded canonicalInput21268 canonicalOutput21268 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21269 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -2, 0], ![0, 2, 0, 0, -2], ![1, -2, -2, 1, 2]]⟩

def canonicalOutput21269 : ExponentCode := normalNode10521

theorem canonicalSound21269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21269.moment H = canonicalOutput21269.moment H :=
  canonical_of_padded canonicalInput21269 canonicalOutput21269 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21270 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -2, 0], ![1, -2, -1, 1, 1], ![0, 2, -1, 0, -1]]⟩

def canonicalOutput21270 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2752⟩

theorem canonicalSound21270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21270.moment H = canonicalOutput21270.moment H :=
  canonical_of_padded canonicalInput21270 canonicalOutput21270 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21271 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -2, 0], ![1, -2, 0, 0, 1], ![0, 2, -2, 1, -1]]⟩

def canonicalOutput21271 : ExponentCode := normalNode10852

theorem canonicalSound21271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21271.moment H = canonicalOutput21271.moment H :=
  canonical_of_padded canonicalInput21271 canonicalOutput21271 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21272 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -2, 0], ![1, 2, 0, -1, -2], ![0, -2, -2, 2, 2]]⟩

def canonicalOutput21272 : ExponentCode := normalNode10854

theorem canonicalSound21272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21272.moment H = canonicalOutput21272.moment H :=
  canonical_of_padded canonicalInput21272 canonicalOutput21272 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21273 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -2, 0], ![1, 2, 0, 0, -3], ![0, -2, -2, 1, 3]]⟩

def canonicalOutput21273 : ExponentCode := normalNode10850

theorem canonicalSound21273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21273.moment H = canonicalOutput21273.moment H :=
  canonical_of_padded canonicalInput21273 canonicalOutput21273 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21274 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -1, -1], ![-1, 2, -1, 1, -1], ![2, -2, -1, -1, 2]]⟩

def canonicalOutput21274 : ExponentCode := normalNode10257

theorem canonicalSound21274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21274.moment H = canonicalOutput21274.moment H :=
  canonical_of_padded canonicalInput21274 canonicalOutput21274 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21275 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -1, -1], ![0, -2, -1, 1, 2], ![1, 2, -1, -1, -1]]⟩

def canonicalOutput21275 : ExponentCode := normalNode10650

theorem canonicalSound21275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21275.moment H = canonicalOutput21275.moment H :=
  canonical_of_padded canonicalInput21275 canonicalOutput21275 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21276 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 0, 2, -1, -1], ![1, -2, -1, 1, 1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput21276 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2761⟩

theorem canonicalSound21276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21276.moment H = canonicalOutput21276.moment H :=
  canonical_of_padded canonicalInput21276 canonicalOutput21276 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21277 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 1, -2, 0], ![0, -2, 1, -1, 2], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput21277 : ExponentCode := normalNode10728

theorem canonicalSound21277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21277.moment H = canonicalOutput21277.moment H :=
  canonical_of_padded canonicalInput21277 canonicalOutput21277 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21278 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 1, -2, 0], ![1, -2, 1, -1, 1], ![0, 1, -2, 2, -1]]⟩

def canonicalOutput21278 : ExponentCode := normalNode10705

theorem canonicalSound21278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21278.moment H = canonicalOutput21278.moment H :=
  canonical_of_padded canonicalInput21278 canonicalOutput21278 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21279 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 1, -1, -1], ![0, -2, 1, -1, 2], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21279 : ExponentCode := normalNode10657

theorem canonicalSound21279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21279.moment H = canonicalOutput21279.moment H :=
  canonical_of_padded canonicalInput21279 canonicalOutput21279 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21280 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 1, -1, -1], ![1, -2, 1, -1, 1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput21280 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2623⟩

theorem canonicalSound21280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21280.moment H = canonicalOutput21280.moment H :=
  canonical_of_padded canonicalInput21280 canonicalOutput21280 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21281 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 2, -3, 0], ![0, -3, 0, 1, 2], ![1, 2, -2, 1, -2]]⟩

def canonicalOutput21281 : ExponentCode := normalNode9579

theorem canonicalSound21281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21281.moment H = canonicalOutput21281.moment H :=
  canonical_of_padded canonicalInput21281 canonicalOutput21281 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21282 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 2, -3, 0], ![0, -2, -1, 1, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput21282 : ExponentCode := normalNode7821

theorem canonicalSound21282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21282.moment H = canonicalOutput21282.moment H :=
  canonical_of_padded canonicalInput21282 canonicalOutput21282 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21283 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 2, -3, 0], ![1, -3, 0, 1, 1], ![0, 2, -2, 1, -1]]⟩

def canonicalOutput21283 : ExponentCode := normalNode7834

theorem canonicalSound21283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21283.moment H = canonicalOutput21283.moment H :=
  canonical_of_padded canonicalInput21283 canonicalOutput21283 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21284 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 2, -3, 0], ![1, -2, -1, 1, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput21284 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2541⟩

theorem canonicalSound21284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21284.moment H = canonicalOutput21284.moment H :=
  canonical_of_padded canonicalInput21284 canonicalOutput21284 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21285 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 2, -2, -1], ![0, -3, 0, 1, 2], ![1, 2, -2, 0, -1]]⟩

def canonicalOutput21285 : ExponentCode := normalNode8896

theorem canonicalSound21285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21285.moment H = canonicalOutput21285.moment H :=
  canonical_of_padded canonicalInput21285 canonicalOutput21285 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21286 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 2, -2, -1], ![0, -2, 1, 1, 0], ![1, 1, -3, 0, 1]]⟩

def canonicalOutput21286 : ExponentCode := normalNode9021

theorem canonicalSound21286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21286.moment H = canonicalOutput21286.moment H :=
  canonical_of_padded canonicalInput21286 canonicalOutput21286 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21287 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 2, -2, -1], ![1, -3, 0, 1, 1], ![0, 2, -2, 0, 0]]⟩

def canonicalOutput21287 : ExponentCode := normalNode10237

theorem canonicalSound21287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21287.moment H = canonicalOutput21287.moment H :=
  canonical_of_padded canonicalInput21287 canonicalOutput21287 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput21288 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![0, 1, 2, -2, -1], ![1, -2, 1, 1, -1], ![0, 1, -3, 0, 2]]⟩

def canonicalOutput21288 : ExponentCode := normalNode9028

theorem canonicalSound21288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21288.moment H = canonicalOutput21288.moment H :=
  canonical_of_padded canonicalInput21288 canonicalOutput21288 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput21289 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -3, 0, 1, 1], ![0, 1, -2, -1, 2], ![0, 2, 2, -1, -3]]⟩

def canonicalOutput21289 : ExponentCode := normalNode9364

theorem canonicalSound21289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21289.moment H = canonicalOutput21289.moment H :=
  canonical_of_padded canonicalInput21289 canonicalOutput21289 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21290 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -3, 0, 1, 1], ![1, 1, -2, -1, 1], ![-1, 2, 2, -1, -2]]⟩

def canonicalOutput21290 : ExponentCode := normalNode9391

theorem canonicalSound21290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21290.moment H = canonicalOutput21290.moment H :=
  canonical_of_padded canonicalInput21290 canonicalOutput21290 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21291 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 0, 0, 1], ![-2, 1, 2, -2, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21291 : ExponentCode := normalNode10299

theorem canonicalSound21291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21291.moment H = canonicalOutput21291.moment H :=
  canonical_of_padded canonicalInput21291 canonicalOutput21291 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21292 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 0, 0, 1], ![-2, 2, -2, 1, 1], ![2, 0, 2, -2, -2]]⟩

def canonicalOutput21292 : ExponentCode := normalNode10256

theorem canonicalSound21292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21292.moment H = canonicalOutput21292.moment H :=
  canonical_of_padded canonicalInput21292 canonicalOutput21292 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21293 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 0, 0, 1], ![-1, 1, 2, -2, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21293 : ExponentCode := normalNode10288

theorem canonicalSound21293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21293.moment H = canonicalOutput21293.moment H :=
  canonical_of_padded canonicalInput21293 canonicalOutput21293 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21294 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 0, 0, 1], ![-1, 2, -2, 1, 0], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput21294 : ExponentCode := normalNode10275

theorem canonicalSound21294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21294.moment H = canonicalOutput21294.moment H :=
  canonical_of_padded canonicalInput21294 canonicalOutput21294 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21295 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 0, 0, 1], ![0, 0, -2, 1, 1], ![0, 2, 2, -2, -2]]⟩

def canonicalOutput21295 : ExponentCode := normalNode8930

theorem canonicalSound21295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21295.moment H = canonicalOutput21295.moment H :=
  canonical_of_padded canonicalInput21295 canonicalOutput21295 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21296 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 0, 0, 1], ![0, 0, 2, -3, 1], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput21296 : ExponentCode := normalNode10916

theorem canonicalSound21296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21296.moment H = canonicalOutput21296.moment H :=
  canonical_of_padded canonicalInput21296 canonicalOutput21296 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21297 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 0, 0, 1], ![0, 1, 2, -2, -1], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput21297 : ExponentCode := normalNode8992

theorem canonicalSound21297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21297.moment H = canonicalOutput21297.moment H :=
  canonical_of_padded canonicalInput21297 canonicalOutput21297 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation191, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21298 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 0, 0, 1], ![0, 2, -2, 1, -1], ![0, 0, 2, -2, 0]]⟩

def canonicalOutput21298 : ExponentCode := normalNode10852

theorem canonicalSound21298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21298.moment H = canonicalOutput21298.moment H :=
  canonical_of_padded canonicalInput21298 canonicalOutput21298 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput21299 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 0, 0, 1], ![1, 0, -2, 1, 0], ![-1, 2, 2, -2, -1]]⟩

def canonicalOutput21299 : ExponentCode := normalNode9080

theorem canonicalSound21299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21299.moment H = canonicalOutput21299.moment H :=
  canonical_of_padded canonicalInput21299 canonicalOutput21299 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput21300 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 0, 0, 1], ![1, 0, 2, -3, 0], ![-1, 2, -2, 2, -1]]⟩

def canonicalOutput21300 : ExponentCode := normalNode10920

theorem canonicalSound21300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21300.moment H = canonicalOutput21300.moment H :=
  canonical_of_padded canonicalInput21300 canonicalOutput21300 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21301 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 1, 0, 0], ![-2, 1, 1, -2, 2], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput21301 : ExponentCode := normalNode10299

theorem canonicalSound21301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21301.moment H = canonicalOutput21301.moment H :=
  canonical_of_padded canonicalInput21301 canonicalOutput21301 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21302 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 1, 0, 0], ![-1, 1, 1, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput21302 : ExponentCode := normalNode10297

theorem canonicalSound21302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21302.moment H = canonicalOutput21302.moment H :=
  canonical_of_padded canonicalInput21302 canonicalOutput21302 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21303 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 1, 0, 0], ![0, 0, 1, -3, 2], ![0, 2, -2, 2, -2]]⟩

def canonicalOutput21303 : ExponentCode := normalNode10916

theorem canonicalSound21303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21303.moment H = canonicalOutput21303.moment H :=
  canonical_of_padded canonicalInput21303 canonicalOutput21303 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21304 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -2, 1, 0, 0], ![1, 0, 1, -3, 1], ![-1, 2, -2, 2, -1]]⟩

def canonicalOutput21304 : ExponentCode := normalNode10917

theorem canonicalSound21304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21304.moment H = canonicalOutput21304.moment H :=
  canonical_of_padded canonicalInput21304 canonicalOutput21304 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21305 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -1, -1, 0, 1], ![-2, -1, 2, 1, 0], ![2, 2, -1, -2, -1]]⟩

def canonicalOutput21305 : ExponentCode := normalNode10279

theorem canonicalSound21305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21305.moment H = canonicalOutput21305.moment H :=
  canonical_of_padded canonicalInput21305 canonicalOutput21305 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21306 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -1, -1, 0, 1], ![-1, -1, 2, 1, -1], ![1, 2, -1, -2, 0]]⟩

def canonicalOutput21306 : ExponentCode := normalNode10291

theorem canonicalSound21306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21306.moment H = canonicalOutput21306.moment H :=
  canonical_of_padded canonicalInput21306 canonicalOutput21306 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21307 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -1, -1, 0, 1], ![0, -1, 2, 1, -2], ![0, 2, -1, -2, 1]]⟩

def canonicalOutput21307 : ExponentCode := normalNode10301

theorem canonicalSound21307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21307.moment H = canonicalOutput21307.moment H :=
  canonical_of_padded canonicalInput21307 canonicalOutput21307 (by decide) (by decide)
    ⟨true, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21308 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -1, 1, -1, 0], ![-1, 2, 1, -1, -1], ![1, -1, -2, 1, 1]]⟩

def canonicalOutput21308 : ExponentCode := normalNode11100

theorem canonicalSound21308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21308.moment H = canonicalOutput21308.moment H :=
  canonical_of_padded canonicalInput21308 canonicalOutput21308 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21309 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, -1, 1, -1, 0], ![0, 2, 1, -1, -2], ![0, -1, -2, 1, 2]]⟩

def canonicalOutput21309 : ExponentCode := normalNode11099

theorem canonicalSound21309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21309.moment H = canonicalOutput21309.moment H :=
  canonical_of_padded canonicalInput21309 canonicalOutput21309 (by decide) (by decide)
    ⟨true, true, canonicalPermutation23, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput21310 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![-2, -2, 2, 1, 1], ![2, 2, -2, 0, -2]]⟩

def canonicalOutput21310 : ExponentCode := normalNode11046

theorem canonicalSound21310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21310.moment H = canonicalOutput21310.moment H :=
  canonical_of_padded canonicalInput21310 canonicalOutput21310 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput21311 : ExponentCode := ⟨4, 5, ![![-1, 0, 0, 1, 0], ![1, 0, 0, -2, 1], ![-1, -3, 2, 0, 2], ![1, 3, -2, 1, -3]]⟩

def canonicalOutput21311 : ExponentCode := normalNode11108

theorem canonicalSound21311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput21311.moment H = canonicalOutput21311.moment H :=
  canonical_of_padded canonicalInput21311 canonicalOutput21311 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
