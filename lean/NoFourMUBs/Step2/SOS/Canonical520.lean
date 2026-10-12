import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes6
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput33280 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33280 : ExponentCode := normalNode10453

theorem canonicalSound33280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33280.moment H = canonicalOutput33280.moment H :=
  canonical_of_padded canonicalInput33280 canonicalOutput33280 (by decide) (by decide)
    ⟨false, false, canonicalPermutation144, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput33281 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput33281 : ExponentCode := normalNode8067

theorem canonicalSound33281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33281.moment H = canonicalOutput33281.moment H :=
  canonical_of_padded canonicalInput33281 canonicalOutput33281 (by decide) (by decide)
    ⟨false, false, canonicalPermutation119, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33282 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput33282 : ExponentCode := normalNode10435

theorem canonicalSound33282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33282.moment H = canonicalOutput33282.moment H :=
  canonical_of_padded canonicalInput33282 canonicalOutput33282 (by decide) (by decide)
    ⟨false, false, canonicalPermutation317, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput33283 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33283 : ExponentCode := normalNode10453

theorem canonicalSound33283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33283.moment H = canonicalOutput33283.moment H :=
  canonical_of_padded canonicalInput33283 canonicalOutput33283 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33284 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33284 : ExponentCode := normalNode10453

theorem canonicalSound33284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33284.moment H = canonicalOutput33284.moment H :=
  canonical_of_padded canonicalInput33284 canonicalOutput33284 (by decide) (by decide)
    ⟨false, false, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33285 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33285 : ExponentCode := normalNode10435

theorem canonicalSound33285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33285.moment H = canonicalOutput33285.moment H :=
  canonical_of_padded canonicalInput33285 canonicalOutput33285 (by decide) (by decide)
    ⟨false, false, canonicalPermutation275, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput33286 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33286 : ExponentCode := normalNode8067

theorem canonicalSound33286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33286.moment H = canonicalOutput33286.moment H :=
  canonical_of_padded canonicalInput33286 canonicalOutput33286 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33287 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33287 : ExponentCode := normalNode10435

theorem canonicalSound33287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33287.moment H = canonicalOutput33287.moment H :=
  canonical_of_padded canonicalInput33287 canonicalOutput33287 (by decide) (by decide)
    ⟨false, false, canonicalPermutation272, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput33288 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33288 : ExponentCode := normalNode10453

theorem canonicalSound33288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33288.moment H = canonicalOutput33288.moment H :=
  canonical_of_padded canonicalInput33288 canonicalOutput33288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput33289 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33289 : ExponentCode := normalNode8067

theorem canonicalSound33289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33289.moment H = canonicalOutput33289.moment H :=
  canonical_of_padded canonicalInput33289 canonicalOutput33289 (by decide) (by decide)
    ⟨false, false, canonicalPermutation140, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput33290 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33290 : ExponentCode := normalNode8067

theorem canonicalSound33290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33290.moment H = canonicalOutput33290.moment H :=
  canonical_of_padded canonicalInput33290 canonicalOutput33290 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, canonicalPermutation142⟩ (by decide +kernel) hH

def canonicalInput33291 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33291 : ExponentCode := normalNode10453

theorem canonicalSound33291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33291.moment H = canonicalOutput33291.moment H :=
  canonical_of_padded canonicalInput33291 canonicalOutput33291 (by decide) (by decide)
    ⟨false, false, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation373⟩ (by decide +kernel) hH

def canonicalInput33292 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33292 : ExponentCode := normalNode10435

theorem canonicalSound33292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33292.moment H = canonicalOutput33292.moment H :=
  canonical_of_padded canonicalInput33292 canonicalOutput33292 (by decide) (by decide)
    ⟨false, false, canonicalPermutation396, canonicalPermutation25⟩ (by decide +kernel) hH

def canonicalInput33293 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput33293 : ExponentCode := normalNode8067

theorem canonicalSound33293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33293.moment H = canonicalOutput33293.moment H :=
  canonical_of_padded canonicalInput33293 canonicalOutput33293 (by decide) (by decide)
    ⟨false, false, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33294 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33294 : ExponentCode := normalNode10453

theorem canonicalSound33294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33294.moment H = canonicalOutput33294.moment H :=
  canonical_of_padded canonicalInput33294 canonicalOutput33294 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation403, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput33295 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput33295 : ExponentCode := normalNode10435

theorem canonicalSound33295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33295.moment H = canonicalOutput33295.moment H :=
  canonical_of_padded canonicalInput33295 canonicalOutput33295 (by decide) (by decide)
    ⟨false, false, canonicalPermutation272, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput33296 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33296 : ExponentCode := normalNode10435

theorem canonicalSound33296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33296.moment H = canonicalOutput33296.moment H :=
  canonical_of_padded canonicalInput33296 canonicalOutput33296 (by decide) (by decide)
    ⟨false, false, canonicalPermutation396, canonicalPermutation55⟩ (by decide +kernel) hH

def canonicalInput33297 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33297 : ExponentCode := normalNode10453

theorem canonicalSound33297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33297.moment H = canonicalOutput33297.moment H :=
  canonical_of_padded canonicalInput33297 canonicalOutput33297 (by decide) (by decide)
    ⟨false, false, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation288⟩ (by decide +kernel) hH

def canonicalInput33298 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33298 : ExponentCode := normalNode8067

theorem canonicalSound33298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33298.moment H = canonicalOutput33298.moment H :=
  canonical_of_padded canonicalInput33298 canonicalOutput33298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation248⟩ (by decide +kernel) hH

def canonicalInput33299 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput33299 : ExponentCode := normalNode10869

theorem canonicalSound33299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33299.moment H = canonicalOutput33299.moment H :=
  canonical_of_padded canonicalInput33299 canonicalOutput33299 (by decide) (by decide)
    ⟨false, true, canonicalPermutation26, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput33300 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput33300 : ExponentCode := normalNode8067

theorem canonicalSound33300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33300.moment H = canonicalOutput33300.moment H :=
  canonical_of_padded canonicalInput33300 canonicalOutput33300 (by decide) (by decide)
    ⟨false, false, canonicalPermutation146, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput33301 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput33301 : ExponentCode := normalNode8067

theorem canonicalSound33301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33301.moment H = canonicalOutput33301.moment H :=
  canonical_of_padded canonicalInput33301 canonicalOutput33301 (by decide) (by decide)
    ⟨false, false, canonicalPermutation145, OAI.MUB6.Certificate.PairSemantics.permutation294⟩ (by decide +kernel) hH

def canonicalInput33302 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput33302 : ExponentCode := normalNode10869

theorem canonicalSound33302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33302.moment H = canonicalOutput33302.moment H :=
  canonical_of_padded canonicalInput33302 canonicalOutput33302 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation180, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput33303 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput33303 : ExponentCode := normalNode10434

theorem canonicalSound33303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33303.moment H = canonicalOutput33303.moment H :=
  canonical_of_padded canonicalInput33303 canonicalOutput33303 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation265⟩ (by decide +kernel) hH

def canonicalInput33304 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput33304 : ExponentCode := normalNode10433

theorem canonicalSound33304 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33304.moment H = canonicalOutput33304.moment H :=
  canonical_of_padded canonicalInput33304 canonicalOutput33304 (by decide) (by decide)
    ⟨false, false, canonicalPermutation333, OAI.MUB6.Certificate.PairSemantics.permutation259⟩ (by decide +kernel) hH

def canonicalInput33305 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-1, 0, 1, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput33305 : ExponentCode := normalNode10396

theorem canonicalSound33305 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33305.moment H = canonicalOutput33305.moment H :=
  canonical_of_padded canonicalInput33305 canonicalOutput33305 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation363, OAI.MUB6.Certificate.PairSemantics.permutation386⟩ (by decide +kernel) hH

def canonicalInput33306 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![-1, -1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33306 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33306 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33306.moment H = canonicalOutput33306.moment H :=
  canonical_of_padded canonicalInput33306 canonicalOutput33306 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33307 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![0, 3, -3, 0, 0, 0], ![-1, -2, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33307 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound33307 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33307.moment H = canonicalOutput33307.moment H :=
  canonical_of_padded canonicalInput33307 canonicalOutput33307 (by decide) (by decide)
    ⟨false, false, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput33308 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![-2, 3, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33308 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33308 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33308.moment H = canonicalOutput33308.moment H :=
  canonical_of_padded canonicalInput33308 canonicalOutput33308 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, canonicalPermutation60⟩ (by decide +kernel) hH

def canonicalInput33309 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 2, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33309 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node11⟩

theorem canonicalSound33309 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33309.moment H = canonicalOutput33309.moment H :=
  canonical_of_padded canonicalInput33309 canonicalOutput33309 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33310 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 1, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33310 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound33310 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33310.moment H = canonicalOutput33310.moment H :=
  canonical_of_padded canonicalInput33310 canonicalOutput33310 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33311 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![-2, 0, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33311 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node62⟩

theorem canonicalSound33311 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33311.moment H = canonicalOutput33311.moment H :=
  canonical_of_padded canonicalInput33311 canonicalOutput33311 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33312 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![1, 2, -3, 0, 0, 0], ![-2, -1, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33312 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node63⟩

theorem canonicalSound33312 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33312.moment H = canonicalOutput33312.moment H :=
  canonical_of_padded canonicalInput33312 canonicalOutput33312 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput33313 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![2, -2, 0, 0, 0, 0], ![-3, 3, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33313 : ExponentCode := ⟨3, 2, OAI.MUB6.Certificate.PairSemantics.node10⟩

theorem canonicalSound33313 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33313.moment H = canonicalOutput33313.moment H :=
  canonical_of_padded canonicalInput33313 canonicalOutput33313 (by decide) (by decide)
    ⟨false, false, canonicalPermutation60, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput33314 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![2, -1, -1, 0, 0, 0], ![-3, 2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33314 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node56⟩

theorem canonicalSound33314 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33314.moment H = canonicalOutput33314.moment H :=
  canonical_of_padded canonicalInput33314 canonicalOutput33314 (by decide) (by decide)
    ⟨false, true, canonicalPermutation60, canonicalPermutation63⟩ (by decide +kernel) hH

def canonicalInput33315 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![2, 0, -2, 0, 0, 0], ![-3, 1, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33315 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound33315 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33315.moment H = canonicalOutput33315.moment H :=
  canonical_of_padded canonicalInput33315 canonicalOutput33315 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65⟩ (by decide +kernel) hH

def canonicalInput33316 : ExponentCode := ⟨6, 6, ![![1, -1, 0, 0, 0, 0], ![2, 1, -3, 0, 0, 0], ![-3, 0, 3, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33316 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node58⟩

theorem canonicalSound33316 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33316.moment H = canonicalOutput33316.moment H :=
  canonical_of_padded canonicalInput33316 canonicalOutput33316 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput33317 : ExponentCode := ⟨4, 5, ![![1, -1, 0, 1, -1], ![-4, 1, 1, 1, 1], ![1, 1, 1, -2, -1], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput33317 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1296

theorem canonicalSound33317 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33317.moment H = canonicalOutput33317.moment H :=
  canonical_of_padded canonicalInput33317 canonicalOutput33317 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput33318 : ExponentCode := ⟨4, 5, ![![1, -1, 0, 1, -1], ![-3, 1, 1, 1, 0], ![0, 1, 1, -2, 0], ![2, -1, -2, 0, 1]]⟩

def canonicalOutput33318 : ExponentCode := normalNode5412

theorem canonicalSound33318 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33318.moment H = canonicalOutput33318.moment H :=
  canonical_of_padded canonicalInput33318 canonicalOutput33318 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation195, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput33319 : ExponentCode := ⟨4, 5, ![![1, -1, 0, 1, -1], ![-3, 1, 1, 1, 0], ![1, 1, 1, -2, -1], ![1, -1, -2, 0, 2]]⟩

def canonicalOutput33319 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1345

theorem canonicalSound33319 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33319.moment H = canonicalOutput33319.moment H :=
  canonical_of_padded canonicalInput33319 canonicalOutput33319 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput33320 : ExponentCode := ⟨3, 5, ![![1, -1, 0, 1, -1], ![-2, -1, 2, 1, 0], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput33320 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1136⟩

theorem canonicalSound33320 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33320.moment H = canonicalOutput33320.moment H :=
  canonical_of_padded canonicalInput33320 canonicalOutput33320 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33321 : ExponentCode := ⟨3, 5, ![![1, -1, 0, 1, -1], ![-1, -1, 2, 1, -1], ![0, 2, -2, -2, 2]]⟩

def canonicalOutput33321 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1131⟩

theorem canonicalSound33321 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33321.moment H = canonicalOutput33321.moment H :=
  canonical_of_padded canonicalInput33321 canonicalOutput33321 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33322 : ExponentCode := ⟨6, 5, ![![1, -1, 0, 1, -1], ![1, 0, 1, -1, -1], ![1, 1, -1, 0, -1], ![-1, -1, 0, 1, 1], ![-1, 0, 1, -1, 1], ![-1, 1, -1, 0, 1]]⟩

def canonicalOutput33322 : ExponentCode := normalNode10785

theorem canonicalSound33322 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33322.moment H = canonicalOutput33322.moment H :=
  canonical_of_padded canonicalInput33322 canonicalOutput33322 (by decide) (by decide)
    ⟨false, false, canonicalPermutation199, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput33323 : ExponentCode := ⟨6, 5, ![![1, -1, 0, 1, -1], ![1, 0, 1, 0, -2], ![1, 1, -1, -1, 0], ![-1, -1, 0, 1, 1], ![-1, 0, 1, -1, 1], ![-1, 1, -1, 0, 1]]⟩

def canonicalOutput33323 : ExponentCode := normalNode9196

theorem canonicalSound33323 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33323.moment H = canonicalOutput33323.moment H :=
  canonical_of_padded canonicalInput33323 canonicalOutput33323 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput33324 : ExponentCode := ⟨3, 5, ![![1, -1, 0, 2, -2], ![-2, 2, 2, -1, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput33324 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code681

theorem canonicalSound33324 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33324.moment H = canonicalOutput33324.moment H :=
  canonical_of_padded canonicalInput33324 canonicalOutput33324 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33325 : ExponentCode := ⟨3, 5, ![![1, -1, 0, 2, -2], ![-1, 2, 2, -1, -2], ![0, -1, -2, -1, 4]]⟩

def canonicalOutput33325 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node423⟩

theorem canonicalSound33325 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33325.moment H = canonicalOutput33325.moment H :=
  canonical_of_padded canonicalInput33325 canonicalOutput33325 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33326 : ExponentCode := ⟨6, 6, ![![1, -1, 1, -2, 1, 0], ![-1, 1, 0, 0, 0, 0], ![1, 0, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33326 : ExponentCode := normalNode9509

theorem canonicalSound33326 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33326.moment H = canonicalOutput33326.moment H :=
  canonical_of_padded canonicalInput33326 canonicalOutput33326 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation311, OAI.MUB6.Certificate.PairSemantics.permutation370⟩ (by decide +kernel) hH

def canonicalInput33327 : ExponentCode := ⟨6, 6, ![![1, -1, 1, -2, 1, 0], ![-1, 2, -1, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33327 : ExponentCode := normalNode9512

theorem canonicalSound33327 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33327.moment H = canonicalOutput33327.moment H :=
  canonical_of_padded canonicalInput33327 canonicalOutput33327 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation322, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput33328 : ExponentCode := ⟨6, 6, ![![1, -1, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33328 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33328 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33328.moment H = canonicalOutput33328.moment H :=
  canonical_of_padded canonicalInput33328 canonicalOutput33328 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation371, canonicalPermutation223⟩ (by decide +kernel) hH

def canonicalInput33329 : ExponentCode := ⟨6, 6, ![![1, -1, 1, -2, 1, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33329 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound33329 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33329.moment H = canonicalOutput33329.moment H :=
  canonical_of_padded canonicalInput33329 canonicalOutput33329 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation371, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput33330 : ExponentCode := ⟨6, 6, ![![1, -1, 1, -2, 1, 0], ![1, -1, 0, 0, 0, 0], ![-1, 2, -1, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33330 : ExponentCode := normalNode9512

theorem canonicalSound33330 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33330.moment H = canonicalOutput33330.moment H :=
  canonical_of_padded canonicalInput33330 canonicalOutput33330 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation320, canonicalPermutation85⟩ (by decide +kernel) hH

def canonicalInput33331 : ExponentCode := ⟨6, 6, ![![1, -1, 1, -2, 1, 0], ![1, 0, -1, 0, 0, 0], ![-1, 1, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput33331 : ExponentCode := normalNode9509

theorem canonicalSound33331 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33331.moment H = canonicalOutput33331.moment H :=
  canonical_of_padded canonicalInput33331 canonicalOutput33331 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation317, OAI.MUB6.Certificate.PairSemantics.permutation370⟩ (by decide +kernel) hH

def canonicalInput33332 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-4, -1, 1, 4], ![3, 2, -2, -3]]⟩

def canonicalOutput33332 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1292

theorem canonicalSound33332 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33332.moment H = canonicalOutput33332.moment H :=
  canonical_of_padded canonicalInput33332 canonicalOutput33332 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33333 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-4, -1, 3, 2], ![3, 2, -4, -1]]⟩

def canonicalOutput33333 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1294

theorem canonicalSound33333 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33333.moment H = canonicalOutput33333.moment H :=
  canonical_of_padded canonicalInput33333 canonicalOutput33333 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33334 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-4, 2, 2, 0], ![3, -1, -3, 1]]⟩

def canonicalOutput33334 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩

theorem canonicalSound33334 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33334.moment H = canonicalOutput33334.moment H :=
  canonical_of_padded canonicalInput33334 canonicalOutput33334 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput33335 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-3, -2, 2, 3], ![2, 3, -3, -2]]⟩

def canonicalOutput33335 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1322

theorem canonicalSound33335 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33335.moment H = canonicalOutput33335.moment H :=
  canonical_of_padded canonicalInput33335 canonicalOutput33335 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33336 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-3, -2, 3, 2], ![2, 3, -4, -1]]⟩

def canonicalOutput33336 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1293

theorem canonicalSound33336 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33336.moment H = canonicalOutput33336.moment H :=
  canonical_of_padded canonicalInput33336 canonicalOutput33336 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33337 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-3, -1, 3, 1], ![2, 2, -4, 0]]⟩

def canonicalOutput33337 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩

theorem canonicalSound33337 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33337.moment H = canonicalOutput33337.moment H :=
  canonical_of_padded canonicalInput33337 canonicalOutput33337 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33338 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-3, 2, 2, -1], ![2, -1, -3, 2]]⟩

def canonicalOutput33338 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node262⟩

theorem canonicalSound33338 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33338.moment H = canonicalOutput33338.moment H :=
  canonical_of_padded canonicalInput33338 canonicalOutput33338 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33339 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-2, -3, 3, 2], ![1, 4, -4, -1]]⟩

def canonicalOutput33339 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1292

theorem canonicalSound33339 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33339.moment H = canonicalOutput33339.moment H :=
  canonical_of_padded canonicalInput33339 canonicalOutput33339 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33340 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-2, -2, 3, 1], ![1, 3, -4, 0]]⟩

def canonicalOutput33340 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound33340 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33340.moment H = canonicalOutput33340.moment H :=
  canonical_of_padded canonicalInput33340 canonicalOutput33340 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33341 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-2, -2, 4, 0], ![1, 3, -5, 1]]⟩

def canonicalOutput33341 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node233⟩

theorem canonicalSound33341 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33341.moment H = canonicalOutput33341.moment H :=
  canonical_of_padded canonicalInput33341 canonicalOutput33341 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33342 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-2, -1, 4, -1], ![1, 2, -5, 2]]⟩

def canonicalOutput33342 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node234⟩

theorem canonicalSound33342 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33342.moment H = canonicalOutput33342.moment H :=
  canonical_of_padded canonicalInput33342 canonicalOutput33342 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput33343 : ExponentCode := ⟨3, 4, ![![1, -1, 1, -1], ![-2, 2, 2, -2], ![1, -1, -3, 3]]⟩

def canonicalOutput33343 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node260⟩

theorem canonicalSound33343 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput33343.moment H = canonicalOutput33343.moment H :=
  canonical_of_padded canonicalInput33343 canonicalOutput33343 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
