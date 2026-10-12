import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23232 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23232 : ExponentCode := normalNode10453

theorem canonicalSound23232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23232.moment H = canonicalOutput23232.moment H :=
  canonical_of_padded canonicalInput23232 canonicalOutput23232 (by decide) (by decide)
    ⟨false, false, canonicalPermutation82, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23233 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23233 : ExponentCode := normalNode8067

theorem canonicalSound23233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23233.moment H = canonicalOutput23233.moment H :=
  canonical_of_padded canonicalInput23233 canonicalOutput23233 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23234 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23234 : ExponentCode := normalNode8067

theorem canonicalSound23234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23234.moment H = canonicalOutput23234.moment H :=
  canonical_of_padded canonicalInput23234 canonicalOutput23234 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, canonicalPermutation120⟩ (by decide +kernel) hH

def canonicalInput23235 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23235 : ExponentCode := normalNode10453

theorem canonicalSound23235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23235.moment H = canonicalOutput23235.moment H :=
  canonical_of_padded canonicalInput23235 canonicalOutput23235 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, OAI.MUB6.Certificate.PairSemantics.permutation375⟩ (by decide +kernel) hH

def canonicalInput23236 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23236 : ExponentCode := normalNode10435

theorem canonicalSound23236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23236.moment H = canonicalOutput23236.moment H :=
  canonical_of_padded canonicalInput23236 canonicalOutput23236 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation28⟩ (by decide +kernel) hH

def canonicalInput23237 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23237 : ExponentCode := normalNode8067

theorem canonicalSound23237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23237.moment H = canonicalOutput23237.moment H :=
  canonical_of_padded canonicalInput23237 canonicalOutput23237 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation265, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23238 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23238 : ExponentCode := normalNode10453

theorem canonicalSound23238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23238.moment H = canonicalOutput23238.moment H :=
  canonical_of_padded canonicalInput23238 canonicalOutput23238 (by decide) (by decide)
    ⟨false, false, canonicalPermutation82, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23239 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23239 : ExponentCode := normalNode10435

theorem canonicalSound23239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23239.moment H = canonicalOutput23239.moment H :=
  canonical_of_padded canonicalInput23239 canonicalOutput23239 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23240 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23240 : ExponentCode := normalNode10435

theorem canonicalSound23240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23240.moment H = canonicalOutput23240.moment H :=
  canonical_of_padded canonicalInput23240 canonicalOutput23240 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation201, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput23241 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23241 : ExponentCode := normalNode10453

theorem canonicalSound23241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23241.moment H = canonicalOutput23241.moment H :=
  canonical_of_padded canonicalInput23241 canonicalOutput23241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation296, canonicalPermutation130⟩ (by decide +kernel) hH

def canonicalInput23242 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23242 : ExponentCode := normalNode8067

theorem canonicalSound23242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23242.moment H = canonicalOutput23242.moment H :=
  canonical_of_padded canonicalInput23242 canonicalOutput23242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation315, canonicalPermutation121⟩ (by decide +kernel) hH

def canonicalInput23243 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23243 : ExponentCode := normalNode10869

theorem canonicalSound23243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23243.moment H = canonicalOutput23243.moment H :=
  canonical_of_padded canonicalInput23243 canonicalOutput23243 (by decide) (by decide)
    ⟨false, true, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23244 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23244 : ExponentCode := normalNode8067

theorem canonicalSound23244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23244.moment H = canonicalOutput23244.moment H :=
  canonical_of_padded canonicalInput23244 canonicalOutput23244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23245 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23245 : ExponentCode := normalNode8067

theorem canonicalSound23245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23245.moment H = canonicalOutput23245.moment H :=
  canonical_of_padded canonicalInput23245 canonicalOutput23245 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation296⟩ (by decide +kernel) hH

def canonicalInput23246 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23246 : ExponentCode := normalNode10869

theorem canonicalSound23246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23246.moment H = canonicalOutput23246.moment H :=
  canonical_of_padded canonicalInput23246 canonicalOutput23246 (by decide) (by decide)
    ⟨false, true, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput23247 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput23247 : ExponentCode := normalNode10434

theorem canonicalSound23247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23247.moment H = canonicalOutput23247.moment H :=
  canonical_of_padded canonicalInput23247 canonicalOutput23247 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation345, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput23248 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput23248 : ExponentCode := normalNode10433

theorem canonicalSound23248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23248.moment H = canonicalOutput23248.moment H :=
  canonical_of_padded canonicalInput23248 canonicalOutput23248 (by decide) (by decide)
    ⟨false, false, canonicalPermutation125, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput23249 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![0, -1, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput23249 : ExponentCode := normalNode10396

theorem canonicalSound23249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23249.moment H = canonicalOutput23249.moment H :=
  canonical_of_padded canonicalInput23249 canonicalOutput23249 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation380⟩ (by decide +kernel) hH

def canonicalInput23250 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, -2, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23250 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound23250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23250.moment H = canonicalOutput23250.moment H :=
  canonical_of_padded canonicalInput23250 canonicalOutput23250 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23251 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![0, -3, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23251 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound23251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23251.moment H = canonicalOutput23251.moment H :=
  canonical_of_padded canonicalInput23251 canonicalOutput23251 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput23252 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -3, 1, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23252 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound23252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23252.moment H = canonicalOutput23252.moment H :=
  canonical_of_padded canonicalInput23252 canonicalOutput23252 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation254, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput23253 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23253 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound23253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23253.moment H = canonicalOutput23253.moment H :=
  canonical_of_padded canonicalInput23253 canonicalOutput23253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation254, OAI.MUB6.Certificate.PairSemantics.permutation232⟩ (by decide +kernel) hH

def canonicalInput23254 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput23254 : ExponentCode := normalNode9068

theorem canonicalSound23254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23254.moment H = canonicalOutput23254.moment H :=
  canonical_of_padded canonicalInput23254 canonicalOutput23254 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation300⟩ (by decide +kernel) hH

def canonicalInput23255 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput23255 : ExponentCode := normalNode8330

theorem canonicalSound23255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23255.moment H = canonicalOutput23255.moment H :=
  canonical_of_padded canonicalInput23255 canonicalOutput23255 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput23256 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput23256 : ExponentCode := normalNode8406

theorem canonicalSound23256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23256.moment H = canonicalOutput23256.moment H :=
  canonical_of_padded canonicalInput23256 canonicalOutput23256 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation342⟩ (by decide +kernel) hH

def canonicalInput23257 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23257 : ExponentCode := normalNode8064

theorem canonicalSound23257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23257.moment H = canonicalOutput23257.moment H :=
  canonical_of_padded canonicalInput23257 canonicalOutput23257 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23258 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23258 : ExponentCode := normalNode8066

theorem canonicalSound23258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23258.moment H = canonicalOutput23258.moment H :=
  canonical_of_padded canonicalInput23258 canonicalOutput23258 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23259 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23259 : ExponentCode := normalNode8066

theorem canonicalSound23259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23259.moment H = canonicalOutput23259.moment H :=
  canonical_of_padded canonicalInput23259 canonicalOutput23259 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23260 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23260 : ExponentCode := normalNode8064

theorem canonicalSound23260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23260.moment H = canonicalOutput23260.moment H :=
  canonical_of_padded canonicalInput23260 canonicalOutput23260 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23261 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23261 : ExponentCode := normalNode8066

theorem canonicalSound23261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23261.moment H = canonicalOutput23261.moment H :=
  canonical_of_padded canonicalInput23261 canonicalOutput23261 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput23262 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23262 : ExponentCode := normalNode8361

theorem canonicalSound23262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23262.moment H = canonicalOutput23262.moment H :=
  canonical_of_padded canonicalInput23262 canonicalOutput23262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation282, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput23263 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23263 : ExponentCode := normalNode8067

theorem canonicalSound23263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23263.moment H = canonicalOutput23263.moment H :=
  canonical_of_padded canonicalInput23263 canonicalOutput23263 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23264 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23264 : ExponentCode := normalNode8067

theorem canonicalSound23264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23264.moment H = canonicalOutput23264.moment H :=
  canonical_of_padded canonicalInput23264 canonicalOutput23264 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23265 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23265 : ExponentCode := normalNode8361

theorem canonicalSound23265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23265.moment H = canonicalOutput23265.moment H :=
  canonical_of_padded canonicalInput23265 canonicalOutput23265 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput23266 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23266 : ExponentCode := normalNode8066

theorem canonicalSound23266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23266.moment H = canonicalOutput23266.moment H :=
  canonical_of_padded canonicalInput23266 canonicalOutput23266 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput23267 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23267 : ExponentCode := normalNode8066

theorem canonicalSound23267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23267.moment H = canonicalOutput23267.moment H :=
  canonical_of_padded canonicalInput23267 canonicalOutput23267 (by decide) (by decide)
    ⟨false, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput23268 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23268 : ExponentCode := normalNode8067

theorem canonicalSound23268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23268.moment H = canonicalOutput23268.moment H :=
  canonical_of_padded canonicalInput23268 canonicalOutput23268 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23269 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23269 : ExponentCode := normalNode8361

theorem canonicalSound23269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23269.moment H = canonicalOutput23269.moment H :=
  canonical_of_padded canonicalInput23269 canonicalOutput23269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation282, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput23270 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23270 : ExponentCode := normalNode8361

theorem canonicalSound23270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23270.moment H = canonicalOutput23270.moment H :=
  canonical_of_padded canonicalInput23270 canonicalOutput23270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput23271 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23271 : ExponentCode := normalNode8067

theorem canonicalSound23271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23271.moment H = canonicalOutput23271.moment H :=
  canonical_of_padded canonicalInput23271 canonicalOutput23271 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23272 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23272 : ExponentCode := normalNode8066

theorem canonicalSound23272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23272.moment H = canonicalOutput23272.moment H :=
  canonical_of_padded canonicalInput23272 canonicalOutput23272 (by decide) (by decide)
    ⟨false, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation210⟩ (by decide +kernel) hH

def canonicalInput23273 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23273 : ExponentCode := normalNode8064

theorem canonicalSound23273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23273.moment H = canonicalOutput23273.moment H :=
  canonical_of_padded canonicalInput23273 canonicalOutput23273 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23274 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23274 : ExponentCode := normalNode8066

theorem canonicalSound23274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23274.moment H = canonicalOutput23274.moment H :=
  canonical_of_padded canonicalInput23274 canonicalOutput23274 (by decide) (by decide)
    ⟨false, false, canonicalPermutation84, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23275 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23275 : ExponentCode := normalNode8066

theorem canonicalSound23275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23275.moment H = canonicalOutput23275.moment H :=
  canonical_of_padded canonicalInput23275 canonicalOutput23275 (by decide) (by decide)
    ⟨false, false, canonicalPermutation104, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23276 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23276 : ExponentCode := normalNode8064

theorem canonicalSound23276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23276.moment H = canonicalOutput23276.moment H :=
  canonical_of_padded canonicalInput23276 canonicalOutput23276 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23277 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23277 : ExponentCode := normalNode8067

theorem canonicalSound23277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23277.moment H = canonicalOutput23277.moment H :=
  canonical_of_padded canonicalInput23277 canonicalOutput23277 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23278 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23278 : ExponentCode := normalNode8066

theorem canonicalSound23278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23278.moment H = canonicalOutput23278.moment H :=
  canonical_of_padded canonicalInput23278 canonicalOutput23278 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23279 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23279 : ExponentCode := normalNode8361

theorem canonicalSound23279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23279.moment H = canonicalOutput23279.moment H :=
  canonical_of_padded canonicalInput23279 canonicalOutput23279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation282, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput23280 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23280 : ExponentCode := normalNode8361

theorem canonicalSound23280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23280.moment H = canonicalOutput23280.moment H :=
  canonical_of_padded canonicalInput23280 canonicalOutput23280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput23281 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23281 : ExponentCode := normalNode8066

theorem canonicalSound23281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23281.moment H = canonicalOutput23281.moment H :=
  canonical_of_padded canonicalInput23281 canonicalOutput23281 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23282 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23282 : ExponentCode := normalNode8067

theorem canonicalSound23282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23282.moment H = canonicalOutput23282.moment H :=
  canonical_of_padded canonicalInput23282 canonicalOutput23282 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairSemantics.permutation208⟩ (by decide +kernel) hH

def canonicalInput23283 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23283 : ExponentCode := normalNode8361

theorem canonicalSound23283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23283.moment H = canonicalOutput23283.moment H :=
  canonical_of_padded canonicalInput23283 canonicalOutput23283 (by decide) (by decide)
    ⟨false, false, canonicalPermutation276, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput23284 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23284 : ExponentCode := normalNode8361

theorem canonicalSound23284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23284.moment H = canonicalOutput23284.moment H :=
  canonical_of_padded canonicalInput23284 canonicalOutput23284 (by decide) (by decide)
    ⟨false, false, canonicalPermutation276, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput23285 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23285 : ExponentCode := normalNode8361

theorem canonicalSound23285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23285.moment H = canonicalOutput23285.moment H :=
  canonical_of_padded canonicalInput23285 canonicalOutput23285 (by decide) (by decide)
    ⟨false, false, canonicalPermutation276, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput23286 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23286 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound23286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23286.moment H = canonicalOutput23286.moment H :=
  canonical_of_padded canonicalInput23286 canonicalOutput23286 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput23287 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23287 : ExponentCode := normalNode8361

theorem canonicalSound23287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23287.moment H = canonicalOutput23287.moment H :=
  canonical_of_padded canonicalInput23287 canonicalOutput23287 (by decide) (by decide)
    ⟨false, false, canonicalPermutation277, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput23288 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23288 : ExponentCode := normalNode8361

theorem canonicalSound23288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23288.moment H = canonicalOutput23288.moment H :=
  canonical_of_padded canonicalInput23288 canonicalOutput23288 (by decide) (by decide)
    ⟨false, false, canonicalPermutation277, OAI.MUB6.Certificate.PairSemantics.permutation340⟩ (by decide +kernel) hH

def canonicalInput23289 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23289 : ExponentCode := normalNode8361

theorem canonicalSound23289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23289.moment H = canonicalOutput23289.moment H :=
  canonical_of_padded canonicalInput23289 canonicalOutput23289 (by decide) (by decide)
    ⟨false, false, canonicalPermutation277, canonicalPermutation93⟩ (by decide +kernel) hH

def canonicalInput23290 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23290 : ExponentCode := normalNode8066

theorem canonicalSound23290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23290.moment H = canonicalOutput23290.moment H :=
  canonical_of_padded canonicalInput23290 canonicalOutput23290 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23291 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23291 : ExponentCode := normalNode8067

theorem canonicalSound23291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23291.moment H = canonicalOutput23291.moment H :=
  canonical_of_padded canonicalInput23291 canonicalOutput23291 (by decide) (by decide)
    ⟨false, false, canonicalPermutation166, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23292 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23292 : ExponentCode := normalNode8361

theorem canonicalSound23292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23292.moment H = canonicalOutput23292.moment H :=
  canonical_of_padded canonicalInput23292 canonicalOutput23292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput23293 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23293 : ExponentCode := normalNode8361

theorem canonicalSound23293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23293.moment H = canonicalOutput23293.moment H :=
  canonical_of_padded canonicalInput23293 canonicalOutput23293 (by decide) (by decide)
    ⟨false, false, canonicalPermutation278, canonicalPermutation217⟩ (by decide +kernel) hH

def canonicalInput23294 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23294 : ExponentCode := normalNode8067

theorem canonicalSound23294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23294.moment H = canonicalOutput23294.moment H :=
  canonical_of_padded canonicalInput23294 canonicalOutput23294 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

def canonicalInput23295 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23295 : ExponentCode := normalNode8066

theorem canonicalSound23295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23295.moment H = canonicalOutput23295.moment H :=
  canonical_of_padded canonicalInput23295 canonicalOutput23295 (by decide) (by decide)
    ⟨false, false, canonicalPermutation165, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
