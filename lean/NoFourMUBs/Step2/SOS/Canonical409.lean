import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput26176 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, -1, 1, 1, 1], ![0, 1, -2, 0, 1], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput26176 : ExponentCode := normalNode10257

theorem canonicalSound26176 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26176.moment H = canonicalOutput26176.moment H :=
  canonical_of_padded canonicalInput26176 canonicalOutput26176 (by decide) (by decide)
    ⟨true, true, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26177 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, -1, 2, 0, 1], ![0, 1, 0, -2, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput26177 : ExponentCode := normalNode11117

theorem canonicalSound26177 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26177.moment H = canonicalOutput26177.moment H :=
  canonical_of_padded canonicalInput26177 canonicalOutput26177 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26178 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, -1, 2, 0, 1], ![0, 1, 0, 1, -2], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput26178 : ExponentCode := normalNode9061

theorem canonicalSound26178 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26178.moment H = canonicalOutput26178.moment H :=
  canonical_of_padded canonicalInput26178 canonicalOutput26178 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26179 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, -1, 2, 0, 1], ![0, 2, -1, 1, -2], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput26179 : ExponentCode := normalNode8904

theorem canonicalSound26179 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26179.moment H = canonicalOutput26179.moment H :=
  canonical_of_padded canonicalInput26179 canonicalOutput26179 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26180 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, -1, 2, 0, 1], ![1, 1, -1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput26180 : ExponentCode := normalNode9002

theorem canonicalSound26180 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26180.moment H = canonicalOutput26180.moment H :=
  canonical_of_padded canonicalInput26180 canonicalOutput26180 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26181 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, -1, 2, 0, 1], ![1, 1, 0, -3, 1], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput26181 : ExponentCode := normalNode9354

theorem canonicalSound26181 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26181.moment H = canonicalOutput26181.moment H :=
  canonical_of_padded canonicalInput26181 canonicalOutput26181 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26182 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, -1, 2, 1, 0], ![-1, 2, -2, 0, 1], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput26182 : ExponentCode := normalNode8901

theorem canonicalSound26182 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26182.moment H = canonicalOutput26182.moment H :=
  canonical_of_padded canonicalInput26182 canonicalOutput26182 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26183 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, -1, 3, 0, 0], ![-1, 2, -1, 1, -1], ![3, 0, -2, -2, 1]]⟩

def canonicalOutput26183 : ExponentCode := normalNode9125

theorem canonicalSound26183 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26183.moment H = canonicalOutput26183.moment H :=
  canonical_of_padded canonicalInput26183 canonicalOutput26183 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26184 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 0, 1, -1, 2], ![-1, 2, 1, -1, -1], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput26184 : ExponentCode := normalNode10879

theorem canonicalSound26184 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26184.moment H = canonicalOutput26184.moment H :=
  canonical_of_padded canonicalInput26184 canonicalOutput26184 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26185 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 0, 1, -1, 2], ![-1, 3, -2, 1, -1], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput26185 : ExponentCode := normalNode9858

theorem canonicalSound26185 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26185.moment H = canonicalOutput26185.moment H :=
  canonical_of_padded canonicalInput26185 canonicalOutput26185 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26186 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 0, 2, -2, 2], ![-1, 2, -1, 1, -1], ![3, -1, -1, 0, -1]]⟩

def canonicalOutput26186 : ExponentCode := normalNode9126

theorem canonicalSound26186 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26186.moment H = canonicalOutput26186.moment H :=
  canonical_of_padded canonicalInput26186 canonicalOutput26186 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26187 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 0, 2, -1, 1], ![0, 2, -1, 1, -2], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput26187 : ExponentCode := normalNode9006

theorem canonicalSound26187 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26187.moment H = canonicalOutput26187.moment H :=
  canonical_of_padded canonicalInput26187 canonicalOutput26187 (by decide) (by decide)
    ⟨true, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26188 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 0, 2, 0, 0], ![-1, 3, -1, -2, 1], ![3, -2, -1, 1, -1]]⟩

def canonicalOutput26188 : ExponentCode := normalNode9857

theorem canonicalSound26188 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26188.moment H = canonicalOutput26188.moment H :=
  canonical_of_padded canonicalInput26188 canonicalOutput26188 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26189 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 0, 2, 0, 0], ![1, -1, -2, 1, 1], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput26189 : ExponentCode := normalNode10220

theorem canonicalSound26189 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26189.moment H = canonicalOutput26189.moment H :=
  canonical_of_padded canonicalInput26189 canonicalOutput26189 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26190 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, -1, 1, 1], ![0, -1, 2, 0, -1], ![2, 1, -1, -2, 0]]⟩

def canonicalOutput26190 : ExponentCode := normalNode9417

theorem canonicalSound26190 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26190.moment H = canonicalOutput26190.moment H :=
  canonical_of_padded canonicalInput26190 canonicalOutput26190 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26191 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, -1, 1, 1], ![1, -1, 2, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput26191 : ExponentCode := normalNode9002

theorem canonicalSound26191 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26191.moment H = canonicalOutput26191.moment H :=
  canonical_of_padded canonicalInput26191 canonicalOutput26191 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26192 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, 0, -1, 2], ![0, -1, 2, -1, 0], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput26192 : ExponentCode := normalNode9450

theorem canonicalSound26192 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26192.moment H = canonicalOutput26192.moment H :=
  canonical_of_padded canonicalInput26192 canonicalOutput26192 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26193 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, 0, 1, 0], ![-1, -1, 3, 0, -1], ![3, 1, -3, -2, 1]]⟩

def canonicalOutput26193 : ExponentCode := normalNode9044

theorem canonicalSound26193 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26193.moment H = canonicalOutput26193.moment H :=
  canonical_of_padded canonicalInput26193 canonicalOutput26193 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26194 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, 0, 1, 0], ![0, -1, 2, 0, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput26194 : ExponentCode := normalNode9059

theorem canonicalSound26194 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26194.moment H = canonicalOutput26194.moment H :=
  canonical_of_padded canonicalInput26194 canonicalOutput26194 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26195 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, 0, 1, 0], ![0, 1, -2, -1, 2], ![2, -1, 2, -1, -2]]⟩

def canonicalOutput26195 : ExponentCode := normalNode9450

theorem canonicalSound26195 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26195.moment H = canonicalOutput26195.moment H :=
  canonical_of_padded canonicalInput26195 canonicalOutput26195 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26196 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, 0, 1, 0], ![1, -1, -2, 0, 2], ![1, 1, 2, -2, -2]]⟩

def canonicalOutput26196 : ExponentCode := normalNode9061

theorem canonicalSound26196 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26196.moment H = canonicalOutput26196.moment H :=
  canonical_of_padded canonicalInput26196 canonicalOutput26196 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26197 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, 0, 1, 0], ![1, 1, -2, -1, 1], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput26197 : ExponentCode := normalNode9448

theorem canonicalSound26197 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26197.moment H = canonicalOutput26197.moment H :=
  canonical_of_padded canonicalInput26197 canonicalOutput26197 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26198 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, 0, 1, 0], ![2, -1, -2, 0, 1], ![0, 1, 2, -2, -1]]⟩

def canonicalOutput26198 : ExponentCode := normalNode9078

theorem canonicalSound26198 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26198.moment H = canonicalOutput26198.moment H :=
  canonical_of_padded canonicalInput26198 canonicalOutput26198 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26199 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, 1, -1, 1], ![1, -1, -2, 1, 1], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput26199 : ExponentCode := normalNode9351

theorem canonicalSound26199 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26199.moment H = canonicalOutput26199.moment H :=
  canonical_of_padded canonicalInput26199 canonicalOutput26199 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26200 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, 1, 0, 0], ![0, 1, -3, 1, 1], ![2, -1, 2, -2, -1]]⟩

def canonicalOutput26200 : ExponentCode := normalNode10305

theorem canonicalSound26200 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26200.moment H = canonicalOutput26200.moment H :=
  canonical_of_padded canonicalInput26200 canonicalOutput26200 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26201 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 1, 1, 0, 0], ![1, -1, 1, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput26201 : ExponentCode := normalNode10297

theorem canonicalSound26201 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26201.moment H = canonicalOutput26201.moment H :=
  canonical_of_padded canonicalInput26201 canonicalOutput26201 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26202 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 2, 0, -1, 1], ![1, -1, -2, 1, 1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput26202 : ExponentCode := normalNode8902

theorem canonicalSound26202 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26202.moment H = canonicalOutput26202.moment H :=
  canonical_of_padded canonicalInput26202 canonicalOutput26202 (by decide) (by decide)
    ⟨true, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput26203 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-2, 2, 0, 0, 0], ![1, -1, -2, 1, 1], ![1, 0, 2, -2, -1]]⟩

def canonicalOutput26203 : ExponentCode := normalNode10332

theorem canonicalSound26203 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26203.moment H = canonicalOutput26203.moment H :=
  canonical_of_padded canonicalInput26203 canonicalOutput26203 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26204 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 1, 0, 1], ![-2, 2, 1, -2, 1], ![3, 0, -2, 1, -2]]⟩

def canonicalOutput26204 : ExponentCode := normalNode9025

theorem canonicalSound26204 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26204.moment H = canonicalOutput26204.moment H :=
  canonical_of_padded canonicalInput26204 canonicalOutput26204 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26205 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 1, 0, 1], ![-1, 2, 1, -2, 0], ![2, 0, -2, 1, -1]]⟩

def canonicalOutput26205 : ExponentCode := normalNode8999

theorem canonicalSound26205 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26205.moment H = canonicalOutput26205.moment H :=
  canonical_of_padded canonicalInput26205 canonicalOutput26205 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26206 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 1, 1, 0], ![-1, 1, -2, 0, 2], ![2, 1, 1, -2, -2]]⟩

def canonicalOutput26206 : ExponentCode := normalNode8984

theorem canonicalSound26206 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26206.moment H = canonicalOutput26206.moment H :=
  canonical_of_padded canonicalInput26206 canonicalOutput26206 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26207 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 1, 1, 0], ![0, 1, -2, 0, 1], ![1, 1, 1, -2, -1]]⟩

def canonicalOutput26207 : ExponentCode := normalNode8989

theorem canonicalSound26207 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26207.moment H = canonicalOutput26207.moment H :=
  canonical_of_padded canonicalInput26207 canonicalOutput26207 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26208 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 0, 0], ![-1, 1, 0, -2, 2], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput26208 : ExponentCode := normalNode9389

theorem canonicalSound26208 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26208.moment H = canonicalOutput26208.moment H :=
  canonical_of_padded canonicalInput26208 canonicalOutput26208 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26209 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 0, 0], ![-1, 1, 0, 1, -1], ![2, 1, -2, -2, 1]]⟩

def canonicalOutput26209 : ExponentCode := normalNode9064

theorem canonicalSound26209 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26209.moment H = canonicalOutput26209.moment H :=
  canonical_of_padded canonicalInput26209 canonicalOutput26209 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26210 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 0, 0], ![-1, 2, -1, 1, -1], ![2, 0, -1, -2, 1]]⟩

def canonicalOutput26210 : ExponentCode := normalNode8998

theorem canonicalSound26210 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26210.moment H = canonicalOutput26210.moment H :=
  canonical_of_padded canonicalInput26210 canonicalOutput26210 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26211 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 0, 0], ![0, 1, -1, -2, 2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput26211 : ExponentCode := normalNode9417

theorem canonicalSound26211 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26211.moment H = canonicalOutput26211.moment H :=
  canonical_of_padded canonicalInput26211 canonicalOutput26211 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26212 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 0, 0], ![0, 1, 0, -3, 2], ![1, 1, -2, 2, -2]]⟩

def canonicalOutput26212 : ExponentCode := normalNode9418

theorem canonicalSound26212 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26212.moment H = canonicalOutput26212.moment H :=
  canonical_of_padded canonicalInput26212 canonicalOutput26212 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26213 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 0, 0], ![0, 1, 0, -2, 1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput26213 : ExponentCode := normalNode9414

theorem canonicalSound26213 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26213.moment H = canonicalOutput26213.moment H :=
  canonical_of_padded canonicalInput26213 canonicalOutput26213 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26214 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 0, 0], ![0, 1, 0, 1, -2], ![1, 1, -2, -2, 2]]⟩

def canonicalOutput26214 : ExponentCode := normalNode9059

theorem canonicalSound26214 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26214.moment H = canonicalOutput26214.moment H :=
  canonical_of_padded canonicalInput26214 canonicalOutput26214 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26215 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 0, 0], ![0, 2, -1, 1, -2], ![1, 0, -1, -2, 2]]⟩

def canonicalOutput26215 : ExponentCode := normalNode8974

theorem canonicalSound26215 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26215.moment H = canonicalOutput26215.moment H :=
  canonical_of_padded canonicalInput26215 canonicalOutput26215 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26216 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 0, 0], ![1, 1, -1, -2, 1], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput26216 : ExponentCode := normalNode9098

theorem canonicalSound26216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26216.moment H = canonicalOutput26216.moment H :=
  canonical_of_padded canonicalInput26216 canonicalOutput26216 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26217 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 0, 0], ![1, 1, 0, -3, 1], ![0, 1, -2, 2, -1]]⟩

def canonicalOutput26217 : ExponentCode := normalNode9408

theorem canonicalSound26217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26217.moment H = canonicalOutput26217.moment H :=
  canonical_of_padded canonicalInput26217 canonicalOutput26217 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26218 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 1, -1], ![-2, 2, -2, 0, 2], ![3, 0, 0, -2, -1]]⟩

def canonicalOutput26218 : ExponentCode := normalNode8923

theorem canonicalSound26218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26218.moment H = canonicalOutput26218.moment H :=
  canonical_of_padded canonicalInput26218 canonicalOutput26218 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26219 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 1, -1], ![-1, 2, -2, 0, 1], ![2, 0, 0, -2, 0]]⟩

def canonicalOutput26219 : ExponentCode := normalNode10332

theorem canonicalSound26219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26219.moment H = canonicalOutput26219.moment H :=
  canonical_of_padded canonicalInput26219 canonicalOutput26219 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26220 : ExponentCode := ⟨3, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 2, 1, -1], ![1, 2, -2, -2, 1]]⟩

def canonicalOutput26220 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1146⟩

theorem canonicalSound26220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26220.moment H = canonicalOutput26220.moment H :=
  canonical_of_padded canonicalInput26220 canonicalOutput26220 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26221 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 3, 0, -1], ![-2, 2, -1, 1, 0], ![3, 0, -2, -2, 1]]⟩

def canonicalOutput26221 : ExponentCode := normalNode9097

theorem canonicalSound26221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26221.moment H = canonicalOutput26221.moment H :=
  canonical_of_padded canonicalInput26221 canonicalOutput26221 (by decide) (by decide)
    ⟨true, true, canonicalPermutation76, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26222 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, -1, 3, 0, -1], ![-1, 2, -1, 1, -1], ![2, 0, -2, -2, 2]]⟩

def canonicalOutput26222 : ExponentCode := normalNode9126

theorem canonicalSound26222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26222.moment H = canonicalOutput26222.moment H :=
  canonical_of_padded canonicalInput26222 canonicalOutput26222 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput26223 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 1, -1, 1], ![-2, 2, 1, -1, 0], ![3, -1, -2, 1, -1]]⟩

def canonicalOutput26223 : ExponentCode := normalNode10891

theorem canonicalSound26223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26223.moment H = canonicalOutput26223.moment H :=
  canonical_of_padded canonicalInput26223 canonicalOutput26223 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26224 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 1, -1, 1], ![-2, 3, -2, 1, 0], ![3, -2, 1, -1, -1]]⟩

def canonicalOutput26224 : ExponentCode := normalNode9941

theorem canonicalSound26224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26224.moment H = canonicalOutput26224.moment H :=
  canonical_of_padded canonicalInput26224 canonicalOutput26224 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26225 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 1, -1, 1], ![-1, 2, 1, -1, -1], ![2, -1, -2, 1, 0]]⟩

def canonicalOutput26225 : ExponentCode := normalNode10300

theorem canonicalSound26225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26225.moment H = canonicalOutput26225.moment H :=
  canonical_of_padded canonicalInput26225 canonicalOutput26225 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26226 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 1, -1, 1], ![-1, 3, -2, 1, -1], ![2, -2, 1, -1, 0]]⟩

def canonicalOutput26226 : ExponentCode := normalNode9934

theorem canonicalSound26226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26226.moment H = canonicalOutput26226.moment H :=
  canonical_of_padded canonicalInput26226 canonicalOutput26226 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26227 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 1, -1, 1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput26227 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2756⟩

theorem canonicalSound26227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26227.moment H = canonicalOutput26227.moment H :=
  canonical_of_padded canonicalInput26227 canonicalOutput26227 (by decide) (by decide)
    ⟨true, false, canonicalPermutation20, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput26228 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 1, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput26228 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2756⟩

theorem canonicalSound26228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26228.moment H = canonicalOutput26228.moment H :=
  canonical_of_padded canonicalInput26228 canonicalOutput26228 (by decide) (by decide)
    ⟨true, false, canonicalPermutation22, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput26229 : ExponentCode := ⟨5, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 1, 1, -1], ![0, 1, 0, 0, -1], ![0, 1, 1, -1, -1], ![1, -1, -2, -1, 3]]⟩

def canonicalOutput26229 : ExponentCode := normalNode10009

theorem canonicalSound26229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26229.moment H = canonicalOutput26229.moment H :=
  canonical_of_padded canonicalInput26229 canonicalOutput26229 (by decide) (by decide)
    ⟨true, false, canonicalPermutation14, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput26230 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 2, -2, 1], ![-2, 2, -1, 1, 0], ![3, -1, -1, 0, -1]]⟩

def canonicalOutput26230 : ExponentCode := normalNode8960

theorem canonicalSound26230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26230.moment H = canonicalOutput26230.moment H :=
  canonical_of_padded canonicalInput26230 canonicalOutput26230 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26231 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 2, -2, 1], ![-1, 2, -1, 1, -1], ![2, -1, -1, 0, 0]]⟩

def canonicalOutput26231 : ExponentCode := normalNode8998

theorem canonicalSound26231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26231.moment H = canonicalOutput26231.moment H :=
  canonical_of_padded canonicalInput26231 canonicalOutput26231 (by decide) (by decide)
    ⟨true, false, canonicalPermutation48, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput26232 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 2, -1, 0], ![-1, 2, -1, 1, -1], ![2, -1, -1, -1, 1]]⟩

def canonicalOutput26232 : ExponentCode := normalNode10297

theorem canonicalSound26232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26232.moment H = canonicalOutput26232.moment H :=
  canonical_of_padded canonicalInput26232 canonicalOutput26232 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26233 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 2, -1, 0], ![0, 2, -1, 1, -2], ![1, -1, -1, -1, 2]]⟩

def canonicalOutput26233 : ExponentCode := normalNode10288

theorem canonicalSound26233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26233.moment H = canonicalOutput26233.moment H :=
  canonical_of_padded canonicalInput26233 canonicalOutput26233 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26234 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 2, 0, -1], ![-2, 3, -1, -2, 2], ![3, -2, -1, 1, -1]]⟩

def canonicalOutput26234 : ExponentCode := normalNode9864

theorem canonicalSound26234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26234.moment H = canonicalOutput26234.moment H :=
  canonical_of_padded canonicalInput26234 canonicalOutput26234 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26235 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 2, 0, -1], ![-1, 3, -1, -2, 1], ![2, -2, -1, 1, 0]]⟩

def canonicalOutput26235 : ExponentCode := normalNode9882

theorem canonicalSound26235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26235.moment H = canonicalOutput26235.moment H :=
  canonical_of_padded canonicalInput26235 canonicalOutput26235 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation175, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26236 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 2, 0, -1], ![0, -1, -2, 1, 2], ![1, 2, 0, -2, -1]]⟩

def canonicalOutput26236 : ExponentCode := normalNode10234

theorem canonicalSound26236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26236.moment H = canonicalOutput26236.moment H :=
  canonical_of_padded canonicalInput26236 canonicalOutput26236 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation194, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26237 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 0, 2, 0, -1], ![1, -1, -2, 1, 1], ![0, 2, 0, -2, 0]]⟩

def canonicalOutput26237 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2824⟩

theorem canonicalSound26237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26237.moment H = canonicalOutput26237.moment H :=
  canonical_of_padded canonicalInput26237 canonicalOutput26237 (by decide) (by decide)
    ⟨true, true, canonicalPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput26238 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 0, -1, 1], ![-1, -1, 2, -1, 1], ![2, 1, -2, 1, -2]]⟩

def canonicalOutput26238 : ExponentCode := normalNode11089

theorem canonicalSound26238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26238.moment H = canonicalOutput26238.moment H :=
  canonical_of_padded canonicalInput26238 canonicalOutput26238 (by decide) (by decide)
    ⟨true, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput26239 : ExponentCode := ⟨4, 5, ![![0, -1, 0, 1, 0], ![-1, 1, 0, -1, 1], ![0, -1, 2, -1, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput26239 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2643⟩

theorem canonicalSound26239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput26239.moment H = canonicalOutput26239.moment H :=
  canonical_of_padded canonicalInput26239 canonicalOutput26239 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation168, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
