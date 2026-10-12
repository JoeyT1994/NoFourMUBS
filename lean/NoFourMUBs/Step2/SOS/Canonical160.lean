import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes34
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10240 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput10240 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound10240 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10240.moment H = canonicalOutput10240.moment H :=
  canonical_of_padded canonicalInput10240 canonicalOutput10240 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput10241 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 0, 2, -2], ![0, 1, -2, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput10241 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node683⟩

theorem canonicalSound10241 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10241.moment H = canonicalOutput10241.moment H :=
  canonical_of_padded canonicalInput10241 canonicalOutput10241 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10242 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, -2, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10242 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node684⟩

theorem canonicalSound10242 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10242.moment H = canonicalOutput10242.moment H :=
  canonical_of_padded canonicalInput10242 canonicalOutput10242 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation166, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10243 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput10243 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1308⟩

theorem canonicalSound10243 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10243.moment H = canonicalOutput10243.moment H :=
  canonical_of_padded canonicalInput10243 canonicalOutput10243 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation64⟩ (by decide +kernel) hH

def canonicalInput10244 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 1, -2, 1], ![2, -2, 3, -3]]⟩

def canonicalOutput10244 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node167⟩

theorem canonicalSound10244 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10244.moment H = canonicalOutput10244.moment H :=
  canonical_of_padded canonicalInput10244 canonicalOutput10244 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10245 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10245 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1309⟩

theorem canonicalSound10245 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10245.moment H = canonicalOutput10245.moment H :=
  canonical_of_padded canonicalInput10245 canonicalOutput10245 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation47⟩ (by decide +kernel) hH

def canonicalInput10246 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput10246 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node984⟩

theorem canonicalSound10246 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10246.moment H = canonicalOutput10246.moment H :=
  canonical_of_padded canonicalInput10246 canonicalOutput10246 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput10247 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput10247 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1263⟩

theorem canonicalSound10247 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10247.moment H = canonicalOutput10247.moment H :=
  canonical_of_padded canonicalInput10247 canonicalOutput10247 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput10248 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput10248 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound10248 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10248.moment H = canonicalOutput10248.moment H :=
  canonical_of_padded canonicalInput10248 canonicalOutput10248 (by decide) (by decide)
    ⟨true, false, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput10249 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput10249 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1013⟩

theorem canonicalSound10249 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10249.moment H = canonicalOutput10249.moment H :=
  canonical_of_padded canonicalInput10249 canonicalOutput10249 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation24⟩ (by decide +kernel) hH

def canonicalInput10250 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![0, 1, 2, -3], ![2, -2, -1, 1]]⟩

def canonicalOutput10250 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node111⟩

theorem canonicalSound10250 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10250.moment H = canonicalOutput10250.moment H :=
  canonical_of_padded canonicalInput10250 canonicalOutput10250 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput10251 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![1, -1, -2, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput10251 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node132⟩

theorem canonicalSound10251 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10251.moment H = canonicalOutput10251.moment H :=
  canonical_of_padded canonicalInput10251 canonicalOutput10251 (by decide) (by decide)
    ⟨true, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10252 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput10252 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node261⟩

theorem canonicalSound10252 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10252.moment H = canonicalOutput10252.moment H :=
  canonical_of_padded canonicalInput10252 canonicalOutput10252 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10253 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, -1, 2, -1], ![0, 1, 0, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput10253 : ExponentCode := normalNode5101

theorem canonicalSound10253 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10253.moment H = canonicalOutput10253.moment H :=
  canonical_of_padded canonicalInput10253 canonicalOutput10253 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation201, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10254 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput10254 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2208⟩

theorem canonicalSound10254 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10254.moment H = canonicalOutput10254.moment H :=
  canonical_of_padded canonicalInput10254 canonicalOutput10254 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10255 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, -1, 1], ![2, -1, 1, -2]]⟩

def canonicalOutput10255 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1335⟩

theorem canonicalSound10255 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10255.moment H = canonicalOutput10255.moment H :=
  canonical_of_padded canonicalInput10255 canonicalOutput10255 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput10256 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![0, 1, -2, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput10256 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1370⟩

theorem canonicalSound10256 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10256.moment H = canonicalOutput10256.moment H :=
  canonical_of_padded canonicalInput10256 canonicalOutput10256 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, canonicalPermutation32⟩ (by decide +kernel) hH

def canonicalInput10257 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput10257 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1078⟩

theorem canonicalSound10257 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10257.moment H = canonicalOutput10257.moment H :=
  canonical_of_padded canonicalInput10257 canonicalOutput10257 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput10258 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10258 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound10258 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10258.moment H = canonicalOutput10258.moment H :=
  canonical_of_padded canonicalInput10258 canonicalOutput10258 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput10259 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput10259 : ExponentCode := normalNode11211

theorem canonicalSound10259 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10259.moment H = canonicalOutput10259.moment H :=
  canonical_of_padded canonicalInput10259 canonicalOutput10259 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10260 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput10260 : ExponentCode := normalNode2835

theorem canonicalSound10260 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10260.moment H = canonicalOutput10260.moment H :=
  canonical_of_padded canonicalInput10260 canonicalOutput10260 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10261 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput10261 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1829⟩

theorem canonicalSound10261 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10261.moment H = canonicalOutput10261.moment H :=
  canonical_of_padded canonicalInput10261 canonicalOutput10261 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10262 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput10262 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1837⟩

theorem canonicalSound10262 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10262.moment H = canonicalOutput10262.moment H :=
  canonical_of_padded canonicalInput10262 canonicalOutput10262 (by decide) (by decide)
    ⟨false, true, canonicalPermutation2, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10263 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10263 : ExponentCode := normalNode11067

theorem canonicalSound10263 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10263.moment H = canonicalOutput10263.moment H :=
  canonical_of_padded canonicalInput10263 canonicalOutput10263 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10264 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10264 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2647⟩

theorem canonicalSound10264 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10264.moment H = canonicalOutput10264.moment H :=
  canonical_of_padded canonicalInput10264 canonicalOutput10264 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation196, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10265 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput10265 : ExponentCode := normalNode11120

theorem canonicalSound10265 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10265.moment H = canonicalOutput10265.moment H :=
  canonical_of_padded canonicalInput10265 canonicalOutput10265 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10266 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput10266 : ExponentCode := normalNode11157

theorem canonicalSound10266 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10266.moment H = canonicalOutput10266.moment H :=
  canonical_of_padded canonicalInput10266 canonicalOutput10266 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10267 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -1, -2, 1]]⟩

def canonicalOutput10267 : ExponentCode := normalNode7001

theorem canonicalSound10267 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10267.moment H = canonicalOutput10267.moment H :=
  canonical_of_padded canonicalInput10267 canonicalOutput10267 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput10268 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![1, -2, 2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10268 : ExponentCode := normalNode5219

theorem canonicalSound10268 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10268.moment H = canonicalOutput10268.moment H :=
  canonical_of_padded canonicalInput10268 canonicalOutput10268 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10269 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 1, -3, 2], ![2, -2, 3, -3]]⟩

def canonicalOutput10269 : ExponentCode := normalNode11189

theorem canonicalSound10269 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10269.moment H = canonicalOutput10269.moment H :=
  canonical_of_padded canonicalInput10269 canonicalOutput10269 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10270 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10270 : ExponentCode := normalNode2507

theorem canonicalSound10270 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10270.moment H = canonicalOutput10270.moment H :=
  canonical_of_padded canonicalInput10270 canonicalOutput10270 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10271 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10271 : ExponentCode := normalNode2753

theorem canonicalSound10271 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10271.moment H = canonicalOutput10271.moment H :=
  canonical_of_padded canonicalInput10271 canonicalOutput10271 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10272 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput10272 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1792⟩

theorem canonicalSound10272 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10272.moment H = canonicalOutput10272.moment H :=
  canonical_of_padded canonicalInput10272 canonicalOutput10272 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10273 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput10273 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1830⟩

theorem canonicalSound10273 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10273.moment H = canonicalOutput10273.moment H :=
  canonical_of_padded canonicalInput10273 canonicalOutput10273 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10274 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput10274 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1830⟩

theorem canonicalSound10274 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10274.moment H = canonicalOutput10274.moment H :=
  canonical_of_padded canonicalInput10274 canonicalOutput10274 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10275 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, -1, -2, 2]]⟩

def canonicalOutput10275 : ExponentCode := normalNode5242

theorem canonicalSound10275 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10275.moment H = canonicalOutput10275.moment H :=
  canonical_of_padded canonicalInput10275 canonicalOutput10275 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10276 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput10276 : ExponentCode := normalNode5244

theorem canonicalSound10276 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10276.moment H = canonicalOutput10276.moment H :=
  canonical_of_padded canonicalInput10276 canonicalOutput10276 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10277 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput10277 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node730⟩

theorem canonicalSound10277 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10277.moment H = canonicalOutput10277.moment H :=
  canonical_of_padded canonicalInput10277 canonicalOutput10277 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10278 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![1, -1, -2, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput10278 : ExponentCode := normalNode11070

theorem canonicalSound10278 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10278.moment H = canonicalOutput10278.moment H :=
  canonical_of_padded canonicalInput10278 canonicalOutput10278 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10279 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput10279 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound10279 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10279.moment H = canonicalOutput10279.moment H :=
  canonical_of_padded canonicalInput10279 canonicalOutput10279 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput10280 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput10280 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1336⟩

theorem canonicalSound10280 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10280.moment H = canonicalOutput10280.moment H :=
  canonical_of_padded canonicalInput10280 canonicalOutput10280 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10281 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![0, 0, -2, 2], ![2, -1, 1, -2]]⟩

def canonicalOutput10281 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1377⟩

theorem canonicalSound10281 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10281.moment H = canonicalOutput10281.moment H :=
  canonical_of_padded canonicalInput10281 canonicalOutput10281 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10282 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![0, 0, -1, 1], ![2, -1, 0, -1]]⟩

def canonicalOutput10282 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1311⟩

theorem canonicalSound10282 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10282.moment H = canonicalOutput10282.moment H :=
  canonical_of_padded canonicalInput10282 canonicalOutput10282 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10283 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![0, 0, 0, 0], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10283 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound10283 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10283.moment H = canonicalOutput10283.moment H :=
  canonical_of_padded canonicalInput10283 canonicalOutput10283 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation17⟩ (by decide +kernel) hH

def canonicalInput10284 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -2, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput10284 : ExponentCode := normalNode5233

theorem canonicalSound10284 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10284.moment H = canonicalOutput10284.moment H :=
  canonical_of_padded canonicalInput10284 canonicalOutput10284 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10285 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput10285 : ExponentCode := normalNode11157

theorem canonicalSound10285 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10285.moment H = canonicalOutput10285.moment H :=
  canonical_of_padded canonicalInput10285 canonicalOutput10285 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10286 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![0, 0, 1, -1], ![2, -1, -2, 1]]⟩

def canonicalOutput10286 : ExponentCode := normalNode7001

theorem canonicalSound10286 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10286.moment H = canonicalOutput10286.moment H :=
  canonical_of_padded canonicalInput10286 canonicalOutput10286 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput10287 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput10287 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1802⟩

theorem canonicalSound10287 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10287.moment H = canonicalOutput10287.moment H :=
  canonical_of_padded canonicalInput10287 canonicalOutput10287 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10288 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, -1, 1]]⟩

def canonicalOutput10288 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1803⟩

theorem canonicalSound10288 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10288.moment H = canonicalOutput10288.moment H :=
  canonical_of_padded canonicalInput10288 canonicalOutput10288 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10289 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, -2, 2]]⟩

def canonicalOutput10289 : ExponentCode := normalNode5248

theorem canonicalSound10289 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10289.moment H = canonicalOutput10289.moment H :=
  canonical_of_padded canonicalInput10289 canonicalOutput10289 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10290 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![1, -2, -2, 3], ![1, 1, 1, -3]]⟩

def canonicalOutput10290 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1092

theorem canonicalSound10290 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10290.moment H = canonicalOutput10290.moment H :=
  canonical_of_padded canonicalInput10290 canonicalOutput10290 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10291 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![1, -2, -1, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput10291 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node518⟩

theorem canonicalSound10291 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10291.moment H = canonicalOutput10291.moment H :=
  canonical_of_padded canonicalInput10291 canonicalOutput10291 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10292 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10292 : ExponentCode := normalNode11072

theorem canonicalSound10292 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10292.moment H = canonicalOutput10292.moment H :=
  canonical_of_padded canonicalInput10292 canonicalOutput10292 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10293 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![1, 0, 1, -2], ![1, -1, -2, 2]]⟩

def canonicalOutput10293 : ExponentCode := normalNode11072

theorem canonicalSound10293 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10293.moment H = canonicalOutput10293.moment H :=
  canonical_of_padded canonicalInput10293 canonicalOutput10293 (by decide) (by decide)
    ⟨false, false, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10294 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 2, -2], ![1, 1, -2, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput10294 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node520⟩

theorem canonicalSound10294 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10294.moment H = canonicalOutput10294.moment H :=
  canonical_of_padded canonicalInput10294 canonicalOutput10294 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10295 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 3, -3], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10295 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2852⟩

theorem canonicalSound10295 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10295.moment H = canonicalOutput10295.moment H :=
  canonical_of_padded canonicalInput10295 canonicalOutput10295 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10296 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 3, -3], ![0, 0, -2, 2], ![2, -1, 0, -1]]⟩

def canonicalOutput10296 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1376⟩

theorem canonicalSound10296 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10296.moment H = canonicalOutput10296.moment H :=
  canonical_of_padded canonicalInput10296 canonicalOutput10296 (by decide) (by decide)
    ⟨false, false, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10297 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 3, -3], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10297 : ExponentCode := normalNode5455

theorem canonicalSound10297 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10297.moment H = canonicalOutput10297.moment H :=
  canonical_of_padded canonicalInput10297 canonicalOutput10297 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10298 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, -2, 3], ![1, 0, 0, -1]]⟩

def canonicalOutput10298 : ExponentCode := normalNode4996

theorem canonicalSound10298 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10298.moment H = canonicalOutput10298.moment H :=
  canonical_of_padded canonicalInput10298 canonicalOutput10298 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10299 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput10299 : ExponentCode := normalNode5251

theorem canonicalSound10299 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10299.moment H = canonicalOutput10299.moment H :=
  canonical_of_padded canonicalInput10299 canonicalOutput10299 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation190, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10300 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 3, -3], ![1, -2, -2, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput10300 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1094

theorem canonicalSound10300 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10300.moment H = canonicalOutput10300.moment H :=
  canonical_of_padded canonicalInput10300 canonicalOutput10300 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10301 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 3, -3], ![1, 1, -3, 1], ![1, -2, 1, 0]]⟩

def canonicalOutput10301 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1187

theorem canonicalSound10301 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10301.moment H = canonicalOutput10301.moment H :=
  canonical_of_padded canonicalInput10301 canonicalOutput10301 (by decide) (by decide)
    ⟨false, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10302 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, 0, 3, -3], ![1, 1, -2, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput10302 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node599⟩

theorem canonicalSound10302 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10302.moment H = canonicalOutput10302.moment H :=
  canonical_of_padded canonicalInput10302 canonicalOutput10302 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10303 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, 0, 4, -4], ![0, 0, -2, 2], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10303 : ExponentCode := normalNode11147

theorem canonicalSound10303 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10303.moment H = canonicalOutput10303.moment H :=
  canonical_of_padded canonicalInput10303 canonicalOutput10303 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
