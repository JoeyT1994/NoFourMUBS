import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17216 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![2, -1, -1, 0], ![-2, 2, 2, -2]]⟩

def canonicalOutput17216 : ExponentCode := normalNode728

theorem canonicalSound17216 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17216.moment H = canonicalOutput17216.moment H :=
  canonical_of_padded canonicalInput17216 canonicalOutput17216 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation388, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput17217 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![1, 2, 1, -4]]⟩

def canonicalOutput17217 : ExponentCode := normalNode6389

theorem canonicalSound17217 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17217.moment H = canonicalOutput17217.moment H :=
  canonical_of_padded canonicalInput17217 canonicalOutput17217 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17218 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 0, 2], ![1, 1, 3, -5]]⟩

def canonicalOutput17218 : ExponentCode := normalNode7152

theorem canonicalSound17218 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17218.moment H = canonicalOutput17218.moment H :=
  canonical_of_padded canonicalInput17218 canonicalOutput17218 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation385, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17219 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -1, 1, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput17219 : ExponentCode := normalNode7290

theorem canonicalSound17219 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17219.moment H = canonicalOutput17219.moment H :=
  canonical_of_padded canonicalInput17219 canonicalOutput17219 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation386, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17220 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-1, 1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput17220 : ExponentCode := normalNode8845

theorem canonicalSound17220 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17220.moment H = canonicalOutput17220.moment H :=
  canonical_of_padded canonicalInput17220 canonicalOutput17220 (by decide) (by decide)
    ⟨false, false, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17221 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput17221 : ExponentCode := normalNode8846

theorem canonicalSound17221 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17221.moment H = canonicalOutput17221.moment H :=
  canonical_of_padded canonicalInput17221 canonicalOutput17221 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17222 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -3, 1], ![-1, -1, 4, -2]]⟩

def canonicalOutput17222 : ExponentCode := normalNode7260

theorem canonicalSound17222 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17222.moment H = canonicalOutput17222.moment H :=
  canonical_of_padded canonicalInput17222 canonicalOutput17222 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17223 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![0, -1, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput17223 : ExponentCode := normalNode8964

theorem canonicalSound17223 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17223.moment H = canonicalOutput17223.moment H :=
  canonical_of_padded canonicalInput17223 canonicalOutput17223 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17224 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![0, 1, -1, 0]]⟩

def canonicalOutput17224 : ExponentCode := normalNode9084

theorem canonicalSound17224 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17224.moment H = canonicalOutput17224.moment H :=
  canonical_of_padded canonicalInput17224 canonicalOutput17224 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17225 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, 2, -3], ![0, -1, 1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput17225 : ExponentCode := normalNode8965

theorem canonicalSound17225 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17225.moment H = canonicalOutput17225.moment H :=
  canonical_of_padded canonicalInput17225 canonicalOutput17225 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17226 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, 1, -1, 0]]⟩

def canonicalOutput17226 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2605⟩

theorem canonicalSound17226 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17226.moment H = canonicalOutput17226.moment H :=
  canonical_of_padded canonicalInput17226 canonicalOutput17226 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17227 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 2, -3, 1], ![1, -1, 4, -4]]⟩

def canonicalOutput17227 : ExponentCode := normalNode6519

theorem canonicalSound17227 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17227.moment H = canonicalOutput17227.moment H :=
  canonical_of_padded canonicalInput17227 canonicalOutput17227 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17228 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 2, -1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput17228 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node845⟩

theorem canonicalSound17228 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17228.moment H = canonicalOutput17228.moment H :=
  canonical_of_padded canonicalInput17228 canonicalOutput17228 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17229 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -1, -2, 2]]⟩

def canonicalOutput17229 : ExponentCode := normalNode6333

theorem canonicalSound17229 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17229.moment H = canonicalOutput17229.moment H :=
  canonical_of_padded canonicalInput17229 canonicalOutput17229 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17230 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -1, 2], ![0, 2, 3, -5]]⟩

def canonicalOutput17230 : ExponentCode := normalNode3056

theorem canonicalSound17230 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17230.moment H = canonicalOutput17230.moment H :=
  canonical_of_padded canonicalInput17230 canonicalOutput17230 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17231 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 2, -2, 1], ![0, 0, 4, -4]]⟩

def canonicalOutput17231 : ExponentCode := normalNode5055

theorem canonicalSound17231 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17231.moment H = canonicalOutput17231.moment H :=
  canonical_of_padded canonicalInput17231 canonicalOutput17231 (by decide) (by decide)
    ⟨false, true, canonicalPermutation131, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17232 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, 1, 3, -4]]⟩

def canonicalOutput17232 : ExponentCode := normalNode8847

theorem canonicalSound17232 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17232.moment H = canonicalOutput17232.moment H :=
  canonical_of_padded canonicalInput17232 canonicalOutput17232 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17233 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -3, 1], ![-1, 0, 4, -3]]⟩

def canonicalOutput17233 : ExponentCode := normalNode3463

theorem canonicalSound17233 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17233.moment H = canonicalOutput17233.moment H :=
  canonical_of_padded canonicalInput17233 canonicalOutput17233 (by decide) (by decide)
    ⟨false, true, canonicalPermutation131, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17234 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![1, -1, 3, -3], ![0, 2, -2, 0]]⟩

def canonicalOutput17234 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node799⟩

theorem canonicalSound17234 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17234.moment H = canonicalOutput17234.moment H :=
  canonical_of_padded canonicalInput17234 canonicalOutput17234 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput17235 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![0, 3, 1, -4]]⟩

def canonicalOutput17235 : ExponentCode := normalNode7092

theorem canonicalSound17235 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17235.moment H = canonicalOutput17235.moment H :=
  canonical_of_padded canonicalInput17235 canonicalOutput17235 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17236 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput17236 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node287⟩

theorem canonicalSound17236 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17236.moment H = canonicalOutput17236.moment H :=
  canonical_of_padded canonicalInput17236 canonicalOutput17236 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput17237 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput17237 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node294⟩

theorem canonicalSound17237 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17237.moment H = canonicalOutput17237.moment H :=
  canonical_of_padded canonicalInput17237 canonicalOutput17237 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17238 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput17238 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound17238 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17238.moment H = canonicalOutput17238.moment H :=
  canonical_of_padded canonicalInput17238 canonicalOutput17238 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17239 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput17239 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node185⟩

theorem canonicalSound17239 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17239.moment H = canonicalOutput17239.moment H :=
  canonical_of_padded canonicalInput17239 canonicalOutput17239 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17240 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 0, 0], ![0, 2, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput17240 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound17240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17240.moment H = canonicalOutput17240.moment H :=
  canonical_of_padded canonicalInput17240 canonicalOutput17240 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput17241 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 0, 0], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput17241 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node230⟩

theorem canonicalSound17241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17241.moment H = canonicalOutput17241.moment H :=
  canonical_of_padded canonicalInput17241 canonicalOutput17241 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17242 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 0, 0], ![0, 2, 2, -4], ![1, -1, -2, 2]]⟩

def canonicalOutput17242 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node153⟩

theorem canonicalSound17242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17242.moment H = canonicalOutput17242.moment H :=
  canonical_of_padded canonicalInput17242 canonicalOutput17242 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17243 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![-1, 1, -2, 2], ![1, -1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput17243 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1732⟩

theorem canonicalSound17243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17243.moment H = canonicalOutput17243.moment H :=
  canonical_of_padded canonicalInput17243 canonicalOutput17243 (by decide) (by decide)
    ⟨false, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17244 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput17244 : ExponentCode := normalNode8863

theorem canonicalSound17244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17244.moment H = canonicalOutput17244.moment H :=
  canonical_of_padded canonicalInput17244 canonicalOutput17244 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17245 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput17245 : ExponentCode := normalNode8864

theorem canonicalSound17245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17245.moment H = canonicalOutput17245.moment H :=
  canonical_of_padded canonicalInput17245 canonicalOutput17245 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17246 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, 1, -3, 1]]⟩

def canonicalOutput17246 : ExponentCode := normalNode7798

theorem canonicalSound17246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17246.moment H = canonicalOutput17246.moment H :=
  canonical_of_padded canonicalInput17246 canonicalOutput17246 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17247 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![-1, 2, -3, 2], ![1, -1, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput17247 : ExponentCode := normalNode4847

theorem canonicalSound17247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17247.moment H = canonicalOutput17247.moment H :=
  canonical_of_padded canonicalInput17247 canonicalOutput17247 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17248 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![-1, 2, -1, 0], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput17248 : ExponentCode := normalNode5269

theorem canonicalSound17248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17248.moment H = canonicalOutput17248.moment H :=
  canonical_of_padded canonicalInput17248 canonicalOutput17248 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17249 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 2, -3, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput17249 : ExponentCode := normalNode8997

theorem canonicalSound17249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17249.moment H = canonicalOutput17249.moment H :=
  canonical_of_padded canonicalInput17249 canonicalOutput17249 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17250 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 0, -1, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput17250 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1039⟩

theorem canonicalSound17250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17250.moment H = canonicalOutput17250.moment H :=
  canonical_of_padded canonicalInput17250 canonicalOutput17250 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17251 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, 1, -3, 1]]⟩

def canonicalOutput17251 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node967⟩

theorem canonicalSound17251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17251.moment H = canonicalOutput17251.moment H :=
  canonical_of_padded canonicalInput17251 canonicalOutput17251 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17252 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![0, -1, 2, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput17252 : ExponentCode := normalNode8995

theorem canonicalSound17252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17252.moment H = canonicalOutput17252.moment H :=
  canonical_of_padded canonicalInput17252 canonicalOutput17252 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17253 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![0, 0, 3, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput17253 : ExponentCode := normalNode9090

theorem canonicalSound17253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17253.moment H = canonicalOutput17253.moment H :=
  canonical_of_padded canonicalInput17253 canonicalOutput17253 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17254 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, -1, 1, -1], ![0, 1, 1, -2]]⟩

def canonicalOutput17254 : ExponentCode := normalNode9095

theorem canonicalSound17254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17254.moment H = canonicalOutput17254.moment H :=
  canonical_of_padded canonicalInput17254 canonicalOutput17254 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17255 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, -1, 3, -3], ![0, 1, -1, 0]]⟩

def canonicalOutput17255 : ExponentCode := normalNode9093

theorem canonicalSound17255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17255.moment H = canonicalOutput17255.moment H :=
  canonical_of_padded canonicalInput17255 canonicalOutput17255 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17256 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![0, -1, 2, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput17256 : ExponentCode := normalNode8996

theorem canonicalSound17256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17256.moment H = canonicalOutput17256.moment H :=
  canonical_of_padded canonicalInput17256 canonicalOutput17256 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17257 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![0, 1, 0, -1]]⟩

def canonicalOutput17257 : ExponentCode := normalNode9098

theorem canonicalSound17257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17257.moment H = canonicalOutput17257.moment H :=
  canonical_of_padded canonicalInput17257 canonicalOutput17257 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17258 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 0, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput17258 : ExponentCode := normalNode9090

theorem canonicalSound17258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17258.moment H = canonicalOutput17258.moment H :=
  canonical_of_padded canonicalInput17258 canonicalOutput17258 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17259 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput17259 : ExponentCode := normalNode4821

theorem canonicalSound17259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17259.moment H = canonicalOutput17259.moment H :=
  canonical_of_padded canonicalInput17259 canonicalOutput17259 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation365, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17260 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, 0, -2, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput17260 : ExponentCode := normalNode7299

theorem canonicalSound17260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17260.moment H = canonicalOutput17260.moment H :=
  canonical_of_padded canonicalInput17260 canonicalOutput17260 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17261 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput17261 : ExponentCode := normalNode8870

theorem canonicalSound17261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17261.moment H = canonicalOutput17261.moment H :=
  canonical_of_padded canonicalInput17261 canonicalOutput17261 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17262 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![0, 1, -3, 2]]⟩

def canonicalOutput17262 : ExponentCode := normalNode9093

theorem canonicalSound17262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17262.moment H = canonicalOutput17262.moment H :=
  canonical_of_padded canonicalInput17262 canonicalOutput17262 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17263 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![-1, -1, 3, -1], ![2, 0, -4, 2]]⟩

def canonicalOutput17263 : ExponentCode := normalNode3180

theorem canonicalSound17263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17263.moment H = canonicalOutput17263.moment H :=
  canonical_of_padded canonicalInput17263 canonicalOutput17263 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation364, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17264 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, -1, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput17264 : ExponentCode := normalNode8941

theorem canonicalSound17264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17264.moment H = canonicalOutput17264.moment H :=
  canonical_of_padded canonicalInput17264 canonicalOutput17264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17265 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![0, 1, -1, 0]]⟩

def canonicalOutput17265 : ExponentCode := normalNode9100

theorem canonicalSound17265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17265.moment H = canonicalOutput17265.moment H :=
  canonical_of_padded canonicalInput17265 canonicalOutput17265 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17266 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput17266 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1047⟩

theorem canonicalSound17266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17266.moment H = canonicalOutput17266.moment H :=
  canonical_of_padded canonicalInput17266 canonicalOutput17266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17267 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, 2, -3], ![0, -1, 0, 1], ![1, 1, -3, 1]]⟩

def canonicalOutput17267 : ExponentCode := normalNode8942

theorem canonicalSound17267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17267.moment H = canonicalOutput17267.moment H :=
  canonical_of_padded canonicalInput17267 canonicalOutput17267 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17268 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![0, 1, -3, 2]]⟩

def canonicalOutput17268 : ExponentCode := normalNode9096

theorem canonicalSound17268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17268.moment H = canonicalOutput17268.moment H :=
  canonical_of_padded canonicalInput17268 canonicalOutput17268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17269 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput17269 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1046⟩

theorem canonicalSound17269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17269.moment H = canonicalOutput17269.moment H :=
  canonical_of_padded canonicalInput17269 canonicalOutput17269 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17270 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![0, 2, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput17270 : ExponentCode := normalNode7710

theorem canonicalSound17270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17270.moment H = canonicalOutput17270.moment H :=
  canonical_of_padded canonicalInput17270 canonicalOutput17270 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation362, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput17271 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, 0, -2, 3], ![0, 2, 2, -4]]⟩

def canonicalOutput17271 : ExponentCode := normalNode3200

theorem canonicalSound17271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17271.moment H = canonicalOutput17271.moment H :=
  canonical_of_padded canonicalInput17271 canonicalOutput17271 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17272 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![0, 1, -3, 2], ![-1, 1, 3, -3]]⟩

def canonicalOutput17272 : ExponentCode := normalNode8871

theorem canonicalSound17272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17272.moment H = canonicalOutput17272.moment H :=
  canonical_of_padded canonicalInput17272 canonicalOutput17272 (by decide) (by decide)
    ⟨false, false, canonicalPermutation41, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17273 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, 0, 3, -2], ![0, 2, -4, 2]]⟩

def canonicalOutput17273 : ExponentCode := normalNode3207

theorem canonicalSound17273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17273.moment H = canonicalOutput17273.moment H :=
  canonical_of_padded canonicalInput17273 canonicalOutput17273 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput17274 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 0, -3, 3], ![-1, 2, 2, -3]]⟩

def canonicalOutput17274 : ExponentCode := normalNode4834

theorem canonicalSound17274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17274.moment H = canonicalOutput17274.moment H :=
  canonical_of_padded canonicalInput17274 canonicalOutput17274 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation382, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput17275 : ExponentCode := ⟨6, 4, ![![-1, -1, 0, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 1, 2, -3], ![-1, 1, -3, 3]]⟩

def canonicalOutput17275 : ExponentCode := normalNode8838

theorem canonicalSound17275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17275.moment H = canonicalOutput17275.moment H :=
  canonical_of_padded canonicalInput17275 canonicalOutput17275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation198, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17276 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![-1, 1, -2, 2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput17276 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1726⟩

theorem canonicalSound17276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17276.moment H = canonicalOutput17276.moment H :=
  canonical_of_padded canonicalInput17276 canonicalOutput17276 (by decide) (by decide)
    ⟨false, false, canonicalPermutation25, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17277 : ExponentCode := ⟨5, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput17277 : ExponentCode := normalNode3956

theorem canonicalSound17277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17277.moment H = canonicalOutput17277.moment H :=
  canonical_of_padded canonicalInput17277 canonicalOutput17277 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput17278 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 0, -2, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput17278 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1027⟩

theorem canonicalSound17278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17278.moment H = canonicalOutput17278.moment H :=
  canonical_of_padded canonicalInput17278 canonicalOutput17278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17279 : ExponentCode := ⟨4, 4, ![![-1, -1, 0, 2], ![0, 0, 2, -2], ![0, 0, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput17279 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1040⟩

theorem canonicalSound17279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17279.moment H = canonicalOutput17279.moment H :=
  canonical_of_padded canonicalInput17279 canonicalOutput17279 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
