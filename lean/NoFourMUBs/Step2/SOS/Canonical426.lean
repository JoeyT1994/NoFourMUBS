import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27264 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput27264 : ExponentCode := normalNode10452

theorem canonicalSound27264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27264.moment H = canonicalOutput27264.moment H :=
  canonical_of_padded canonicalInput27264 canonicalOutput27264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation281, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput27265 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput27265 : ExponentCode := normalNode10367

theorem canonicalSound27265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27265.moment H = canonicalOutput27265.moment H :=
  canonical_of_padded canonicalInput27265 canonicalOutput27265 (by decide) (by decide)
    ⟨false, false, canonicalPermutation339, OAI.MUB6.Certificate.PairSemantics.permutation403⟩ (by decide +kernel) hH

def canonicalInput27266 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27266 : ExponentCode := normalNode10869

theorem canonicalSound27266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27266.moment H = canonicalOutput27266.moment H :=
  canonical_of_padded canonicalInput27266 canonicalOutput27266 (by decide) (by decide)
    ⟨false, true, canonicalPermutation92, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27267 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27267 : ExponentCode := normalNode8067

theorem canonicalSound27267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27267.moment H = canonicalOutput27267.moment H :=
  canonical_of_padded canonicalInput27267 canonicalOutput27267 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27268 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27268 : ExponentCode := normalNode8067

theorem canonicalSound27268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27268.moment H = canonicalOutput27268.moment H :=
  canonical_of_padded canonicalInput27268 canonicalOutput27268 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27269 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27269 : ExponentCode := normalNode10869

theorem canonicalSound27269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27269.moment H = canonicalOutput27269.moment H :=
  canonical_of_padded canonicalInput27269 canonicalOutput27269 (by decide) (by decide)
    ⟨false, true, canonicalPermutation57, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27270 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27270 : ExponentCode := normalNode8067

theorem canonicalSound27270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27270.moment H = canonicalOutput27270.moment H :=
  canonical_of_padded canonicalInput27270 canonicalOutput27270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput27271 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27271 : ExponentCode := normalNode10453

theorem canonicalSound27271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27271.moment H = canonicalOutput27271.moment H :=
  canonical_of_padded canonicalInput27271 canonicalOutput27271 (by decide) (by decide)
    ⟨false, false, canonicalPermutation123, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput27272 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27272 : ExponentCode := normalNode10435

theorem canonicalSound27272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27272.moment H = canonicalOutput27272.moment H :=
  canonical_of_padded canonicalInput27272 canonicalOutput27272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation230, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput27273 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27273 : ExponentCode := normalNode10435

theorem canonicalSound27273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27273.moment H = canonicalOutput27273.moment H :=
  canonical_of_padded canonicalInput27273 canonicalOutput27273 (by decide) (by decide)
    ⟨false, false, canonicalPermutation340, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput27274 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27274 : ExponentCode := normalNode10453

theorem canonicalSound27274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27274.moment H = canonicalOutput27274.moment H :=
  canonical_of_padded canonicalInput27274 canonicalOutput27274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput27275 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27275 : ExponentCode := normalNode8067

theorem canonicalSound27275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27275.moment H = canonicalOutput27275.moment H :=
  canonical_of_padded canonicalInput27275 canonicalOutput27275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput27276 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27276 : ExponentCode := normalNode8067

theorem canonicalSound27276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27276.moment H = canonicalOutput27276.moment H :=
  canonical_of_padded canonicalInput27276 canonicalOutput27276 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput27277 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27277 : ExponentCode := normalNode10435

theorem canonicalSound27277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27277.moment H = canonicalOutput27277.moment H :=
  canonical_of_padded canonicalInput27277 canonicalOutput27277 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation230, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput27278 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27278 : ExponentCode := normalNode10453

theorem canonicalSound27278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27278.moment H = canonicalOutput27278.moment H :=
  canonical_of_padded canonicalInput27278 canonicalOutput27278 (by decide) (by decide)
    ⟨false, false, canonicalPermutation123, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput27279 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27279 : ExponentCode := normalNode10453

theorem canonicalSound27279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27279.moment H = canonicalOutput27279.moment H :=
  canonical_of_padded canonicalInput27279 canonicalOutput27279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput27280 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27280 : ExponentCode := normalNode10435

theorem canonicalSound27280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27280.moment H = canonicalOutput27280.moment H :=
  canonical_of_padded canonicalInput27280 canonicalOutput27280 (by decide) (by decide)
    ⟨false, false, canonicalPermutation340, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput27281 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27281 : ExponentCode := normalNode8067

theorem canonicalSound27281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27281.moment H = canonicalOutput27281.moment H :=
  canonical_of_padded canonicalInput27281 canonicalOutput27281 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput27282 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput27282 : ExponentCode := normalNode10869

theorem canonicalSound27282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27282.moment H = canonicalOutput27282.moment H :=
  canonical_of_padded canonicalInput27282 canonicalOutput27282 (by decide) (by decide)
    ⟨false, true, canonicalPermutation90, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27283 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27283 : ExponentCode := normalNode8067

theorem canonicalSound27283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27283.moment H = canonicalOutput27283.moment H :=
  canonical_of_padded canonicalInput27283 canonicalOutput27283 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput27284 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27284 : ExponentCode := normalNode8067

theorem canonicalSound27284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27284.moment H = canonicalOutput27284.moment H :=
  canonical_of_padded canonicalInput27284 canonicalOutput27284 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput27285 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27285 : ExponentCode := normalNode10869

theorem canonicalSound27285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27285.moment H = canonicalOutput27285.moment H :=
  canonical_of_padded canonicalInput27285 canonicalOutput27285 (by decide) (by decide)
    ⟨false, true, canonicalPermutation98, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27286 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27286 : ExponentCode := normalNode10435

theorem canonicalSound27286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27286.moment H = canonicalOutput27286.moment H :=
  canonical_of_padded canonicalInput27286 canonicalOutput27286 (by decide) (by decide)
    ⟨false, false, canonicalPermutation341, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput27287 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27287 : ExponentCode := normalNode8067

theorem canonicalSound27287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27287.moment H = canonicalOutput27287.moment H :=
  canonical_of_padded canonicalInput27287 canonicalOutput27287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput27288 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27288 : ExponentCode := normalNode10453

theorem canonicalSound27288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27288.moment H = canonicalOutput27288.moment H :=
  canonical_of_padded canonicalInput27288 canonicalOutput27288 (by decide) (by decide)
    ⟨false, false, canonicalPermutation123, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27289 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27289 : ExponentCode := normalNode10453

theorem canonicalSound27289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27289.moment H = canonicalOutput27289.moment H :=
  canonical_of_padded canonicalInput27289 canonicalOutput27289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation383, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27290 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27290 : ExponentCode := normalNode8067

theorem canonicalSound27290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27290.moment H = canonicalOutput27290.moment H :=
  canonical_of_padded canonicalInput27290 canonicalOutput27290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput27291 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27291 : ExponentCode := normalNode10435

theorem canonicalSound27291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27291.moment H = canonicalOutput27291.moment H :=
  canonical_of_padded canonicalInput27291 canonicalOutput27291 (by decide) (by decide)
    ⟨false, false, canonicalPermutation342, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput27292 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27292 : ExponentCode := normalNode10453

theorem canonicalSound27292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27292.moment H = canonicalOutput27292.moment H :=
  canonical_of_padded canonicalInput27292 canonicalOutput27292 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput27293 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27293 : ExponentCode := normalNode10453

theorem canonicalSound27293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27293.moment H = canonicalOutput27293.moment H :=
  canonical_of_padded canonicalInput27293 canonicalOutput27293 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput27294 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27294 : ExponentCode := normalNode10453

theorem canonicalSound27294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27294.moment H = canonicalOutput27294.moment H :=
  canonical_of_padded canonicalInput27294 canonicalOutput27294 (by decide) (by decide)
    ⟨false, false, canonicalPermutation280, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27295 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27295 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node64⟩

theorem canonicalSound27295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27295.moment H = canonicalOutput27295.moment H :=
  canonical_of_padded canonicalInput27295 canonicalOutput27295 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput27296 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27296 : ExponentCode := normalNode10453

theorem canonicalSound27296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27296.moment H = canonicalOutput27296.moment H :=
  canonical_of_padded canonicalInput27296 canonicalOutput27296 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27297 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27297 : ExponentCode := normalNode10453

theorem canonicalSound27297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27297.moment H = canonicalOutput27297.moment H :=
  canonical_of_padded canonicalInput27297 canonicalOutput27297 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput27298 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27298 : ExponentCode := normalNode10453

theorem canonicalSound27298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27298.moment H = canonicalOutput27298.moment H :=
  canonical_of_padded canonicalInput27298 canonicalOutput27298 (by decide) (by decide)
    ⟨false, false, canonicalPermutation279, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput27299 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput27299 : ExponentCode := normalNode8067

theorem canonicalSound27299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27299.moment H = canonicalOutput27299.moment H :=
  canonical_of_padded canonicalInput27299 canonicalOutput27299 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27300 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput27300 : ExponentCode := normalNode10435

theorem canonicalSound27300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27300.moment H = canonicalOutput27300.moment H :=
  canonical_of_padded canonicalInput27300 canonicalOutput27300 (by decide) (by decide)
    ⟨false, false, canonicalPermutation341, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput27301 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27301 : ExponentCode := normalNode10453

theorem canonicalSound27301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27301.moment H = canonicalOutput27301.moment H :=
  canonical_of_padded canonicalInput27301 canonicalOutput27301 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27302 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27302 : ExponentCode := normalNode10453

theorem canonicalSound27302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27302.moment H = canonicalOutput27302.moment H :=
  canonical_of_padded canonicalInput27302 canonicalOutput27302 (by decide) (by decide)
    ⟨false, false, canonicalPermutation67, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27303 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27303 : ExponentCode := normalNode10435

theorem canonicalSound27303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27303.moment H = canonicalOutput27303.moment H :=
  canonical_of_padded canonicalInput27303 canonicalOutput27303 (by decide) (by decide)
    ⟨false, false, canonicalPermutation342, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput27304 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27304 : ExponentCode := normalNode8067

theorem canonicalSound27304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27304.moment H = canonicalOutput27304.moment H :=
  canonical_of_padded canonicalInput27304 canonicalOutput27304 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation355, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27305 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27305 : ExponentCode := normalNode10435

theorem canonicalSound27305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27305.moment H = canonicalOutput27305.moment H :=
  canonical_of_padded canonicalInput27305 canonicalOutput27305 (by decide) (by decide)
    ⟨false, false, canonicalPermutation175, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput27306 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27306 : ExponentCode := normalNode10453

theorem canonicalSound27306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27306.moment H = canonicalOutput27306.moment H :=
  canonical_of_padded canonicalInput27306 canonicalOutput27306 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput27307 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27307 : ExponentCode := normalNode8067

theorem canonicalSound27307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27307.moment H = canonicalOutput27307.moment H :=
  canonical_of_padded canonicalInput27307 canonicalOutput27307 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput27308 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27308 : ExponentCode := normalNode8067

theorem canonicalSound27308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27308.moment H = canonicalOutput27308.moment H :=
  canonical_of_padded canonicalInput27308 canonicalOutput27308 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput27309 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27309 : ExponentCode := normalNode10453

theorem canonicalSound27309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27309.moment H = canonicalOutput27309.moment H :=
  canonical_of_padded canonicalInput27309 canonicalOutput27309 (by decide) (by decide)
    ⟨false, false, canonicalPermutation67, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput27310 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27310 : ExponentCode := normalNode10435

theorem canonicalSound27310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27310.moment H = canonicalOutput27310.moment H :=
  canonical_of_padded canonicalInput27310 canonicalOutput27310 (by decide) (by decide)
    ⟨false, false, canonicalPermutation214, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput27311 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput27311 : ExponentCode := normalNode8067

theorem canonicalSound27311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27311.moment H = canonicalOutput27311.moment H :=
  canonical_of_padded canonicalInput27311 canonicalOutput27311 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation284, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27312 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27312 : ExponentCode := normalNode10453

theorem canonicalSound27312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27312.moment H = canonicalOutput27312.moment H :=
  canonical_of_padded canonicalInput27312 canonicalOutput27312 (by decide) (by decide)
    ⟨false, false, canonicalPermutation107, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput27313 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput27313 : ExponentCode := normalNode10435

theorem canonicalSound27313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27313.moment H = canonicalOutput27313.moment H :=
  canonical_of_padded canonicalInput27313 canonicalOutput27313 (by decide) (by decide)
    ⟨false, false, canonicalPermutation175, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput27314 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27314 : ExponentCode := normalNode10435

theorem canonicalSound27314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27314.moment H = canonicalOutput27314.moment H :=
  canonical_of_padded canonicalInput27314 canonicalOutput27314 (by decide) (by decide)
    ⟨false, false, canonicalPermutation214, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput27315 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27315 : ExponentCode := normalNode10453

theorem canonicalSound27315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27315.moment H = canonicalOutput27315.moment H :=
  canonical_of_padded canonicalInput27315 canonicalOutput27315 (by decide) (by decide)
    ⟨false, false, canonicalPermutation67, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput27316 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27316 : ExponentCode := normalNode8067

theorem canonicalSound27316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27316.moment H = canonicalOutput27316.moment H :=
  canonical_of_padded canonicalInput27316 canonicalOutput27316 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation356, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput27317 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput27317 : ExponentCode := normalNode10869

theorem canonicalSound27317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27317.moment H = canonicalOutput27317.moment H :=
  canonical_of_padded canonicalInput27317 canonicalOutput27317 (by decide) (by decide)
    ⟨false, true, canonicalPermutation100, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27318 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput27318 : ExponentCode := normalNode8067

theorem canonicalSound27318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27318.moment H = canonicalOutput27318.moment H :=
  canonical_of_padded canonicalInput27318 canonicalOutput27318 (by decide) (by decide)
    ⟨false, false, canonicalPermutation160, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput27319 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput27319 : ExponentCode := normalNode8067

theorem canonicalSound27319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27319.moment H = canonicalOutput27319.moment H :=
  canonical_of_padded canonicalInput27319 canonicalOutput27319 (by decide) (by decide)
    ⟨false, false, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput27320 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput27320 : ExponentCode := normalNode10869

theorem canonicalSound27320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27320.moment H = canonicalOutput27320.moment H :=
  canonical_of_padded canonicalInput27320 canonicalOutput27320 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation213, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27321 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput27321 : ExponentCode := normalNode10434

theorem canonicalSound27321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27321.moment H = canonicalOutput27321.moment H :=
  canonical_of_padded canonicalInput27321 canonicalOutput27321 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput27322 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput27322 : ExponentCode := normalNode10433

theorem canonicalSound27322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27322.moment H = canonicalOutput27322.moment H :=
  canonical_of_padded canonicalInput27322 canonicalOutput27322 (by decide) (by decide)
    ⟨false, false, canonicalPermutation240, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput27323 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput27323 : ExponentCode := normalNode10396

theorem canonicalSound27323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27323.moment H = canonicalOutput27323.moment H :=
  canonical_of_padded canonicalInput27323 canonicalOutput27323 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput27324 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27324 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound27324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27324.moment H = canonicalOutput27324.moment H :=
  canonical_of_padded canonicalInput27324 canonicalOutput27324 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput27325 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27325 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound27325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27325.moment H = canonicalOutput27325.moment H :=
  canonical_of_padded canonicalInput27325 canonicalOutput27325 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput27326 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27326 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound27326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27326.moment H = canonicalOutput27326.moment H :=
  canonical_of_padded canonicalInput27326 canonicalOutput27326 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput27327 : ExponentCode := ⟨6, 6, ![![0, -1, 1, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput27327 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound27327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27327.moment H = canonicalOutput27327.moment H :=
  canonical_of_padded canonicalInput27327 canonicalOutput27327 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, canonicalPermutation63⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
