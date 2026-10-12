import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes14
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput10944 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -2, 1, 1], ![1, -2, 1, 1, -2, 1], ![1, 1, -2, 1, 1, -2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10944 : ExponentCode := normalNode5550

theorem canonicalSound10944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10944.moment H = canonicalOutput10944.moment H :=
  canonical_of_padded canonicalInput10944 canonicalOutput10944 (by decide) (by decide)
    ⟨true, false, canonicalPermutation42, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput10945 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -2, 1, 1], ![1, -2, 1, 1, 1, -2], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 1, -2, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10945 : ExponentCode := normalNode4210

theorem canonicalSound10945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10945.moment H = canonicalOutput10945.moment H :=
  canonical_of_padded canonicalInput10945 canonicalOutput10945 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation234, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput10946 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -2, 1, 1], ![1, -2, 1, 1, 1, -2], ![1, 1, -2, 1, -2, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10946 : ExponentCode := normalNode5550

theorem canonicalSound10946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10946.moment H = canonicalOutput10946.moment H :=
  canonical_of_padded canonicalInput10946 canonicalOutput10946 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput10947 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, -2, 2], ![0, -2, 0, 1, 1], ![0, 0, 0, 1, -1], ![1, 0, 1, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput10947 : ExponentCode := normalNode9175

theorem canonicalSound10947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10947.moment H = canonicalOutput10947.moment H :=
  canonical_of_padded canonicalInput10947 canonicalOutput10947 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput10948 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, -2, 2], ![0, -1, 0, 1, 0], ![0, -1, 0, 1, 0], ![1, 0, 1, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput10948 : ExponentCode := normalNode8655

theorem canonicalSound10948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10948.moment H = canonicalOutput10948.moment H :=
  canonical_of_padded canonicalInput10948 canonicalOutput10948 (by decide) (by decide)
    ⟨true, false, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput10949 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, -2, 2], ![0, -1, 0, 1, 0], ![0, 0, 0, 1, -1], ![1, -1, 1, -1, 0], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput10949 : ExponentCode := normalNode9183

theorem canonicalSound10949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10949.moment H = canonicalOutput10949.moment H :=
  canonical_of_padded canonicalInput10949 canonicalOutput10949 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation172⟩ (by decide +kernel) hH

def canonicalInput10950 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, -2, 2], ![0, -1, 0, 1, 0], ![0, 0, 0, 1, -1], ![1, 0, 1, -1, -1], ![1, 0, -2, 1, 0]]⟩

def canonicalOutput10950 : ExponentCode := normalNode7588

theorem canonicalSound10950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10950.moment H = canonicalOutput10950.moment H :=
  canonical_of_padded canonicalInput10950 canonicalOutput10950 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation183, canonicalPermutation49⟩ (by decide +kernel) hH

def canonicalInput10951 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, -1, 2], ![1, -2, 1, -1, 2, -1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10951 : ExponentCode := normalNode4257

theorem canonicalSound10951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10951.moment H = canonicalOutput10951.moment H :=
  canonical_of_padded canonicalInput10951 canonicalOutput10951 (by decide) (by decide)
    ⟨true, false, canonicalPermutation62, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput10952 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, -1, 2], ![1, -2, 1, -1, 2, -1], ![1, 1, -2, 2, -1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10952 : ExponentCode := normalNode5557

theorem canonicalSound10952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10952.moment H = canonicalOutput10952.moment H :=
  canonical_of_padded canonicalInput10952 canonicalOutput10952 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation178, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput10953 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, -1, 2], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10953 : ExponentCode := normalNode4257

theorem canonicalSound10953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10953.moment H = canonicalOutput10953.moment H :=
  canonical_of_padded canonicalInput10953 canonicalOutput10953 (by decide) (by decide)
    ⟨true, false, canonicalPermutation57, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput10954 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, -1, 2], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10954 : ExponentCode := normalNode3682

theorem canonicalSound10954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10954.moment H = canonicalOutput10954.moment H :=
  canonical_of_padded canonicalInput10954 canonicalOutput10954 (by decide) (by decide)
    ⟨true, false, canonicalPermutation99, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput10955 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, -1, 2], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10955 : ExponentCode := normalNode4257

theorem canonicalSound10955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10955.moment H = canonicalOutput10955.moment H :=
  canonical_of_padded canonicalInput10955 canonicalOutput10955 (by decide) (by decide)
    ⟨true, false, canonicalPermutation100, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput10956 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, -1, 2], ![1, -2, 1, 2, -1, -1], ![1, 1, -2, -1, 2, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10956 : ExponentCode := normalNode5557

theorem canonicalSound10956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10956.moment H = canonicalOutput10956.moment H :=
  canonical_of_padded canonicalInput10956 canonicalOutput10956 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput10957 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, -1, 2], ![1, -2, 1, 2, -1, -1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10957 : ExponentCode := normalNode4257

theorem canonicalSound10957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10957.moment H = canonicalOutput10957.moment H :=
  canonical_of_padded canonicalInput10957 canonicalOutput10957 (by decide) (by decide)
    ⟨true, false, canonicalPermutation101, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput10958 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, -1, 1], ![0, -2, 0, 0, 2], ![0, 0, 0, 1, -1], ![1, 0, 1, -1, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput10958 : ExponentCode := normalNode9535

theorem canonicalSound10958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10958.moment H = canonicalOutput10958.moment H :=
  canonical_of_padded canonicalInput10958 canonicalOutput10958 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput10959 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, -1, 1], ![0, -1, 0, -1, 2], ![0, -1, 0, 2, -1], ![1, 0, -2, 1, 0], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput10959 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code518

theorem canonicalSound10959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10959.moment H = canonicalOutput10959.moment H :=
  canonical_of_padded canonicalInput10959 canonicalOutput10959 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput10960 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, -1, 1], ![0, -1, 0, -1, 2], ![0, 0, 0, 1, -1], ![1, -1, 1, 0, -1], ![1, 1, -2, 1, -1]]⟩

def canonicalOutput10960 : ExponentCode := normalNode9532

theorem canonicalSound10960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10960.moment H = canonicalOutput10960.moment H :=
  canonical_of_padded canonicalInput10960 canonicalOutput10960 (by decide) (by decide)
    ⟨true, false, canonicalPermutation81, canonicalPermutation35⟩ (by decide +kernel) hH

def canonicalInput10961 : ExponentCode := ⟨5, 5, ![![-2, 1, 1, -1, 1], ![0, -1, 0, -1, 2], ![0, 0, 0, 1, -1], ![1, 0, 1, -1, -1], ![1, 0, -2, 2, -1]]⟩

def canonicalOutput10961 : ExponentCode := normalNode9529

theorem canonicalSound10961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10961.moment H = canonicalOutput10961.moment H :=
  canonical_of_padded canonicalInput10961 canonicalOutput10961 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation170⟩ (by decide +kernel) hH

def canonicalInput10962 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, 2, -1], ![1, -2, 1, -1, -1, 2], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10962 : ExponentCode := normalNode4257

theorem canonicalSound10962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10962.moment H = canonicalOutput10962.moment H :=
  canonical_of_padded canonicalInput10962 canonicalOutput10962 (by decide) (by decide)
    ⟨true, false, canonicalPermutation96, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput10963 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, 2, -1], ![1, -2, 1, -1, -1, 2], ![1, 1, -2, 2, -1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10963 : ExponentCode := normalNode5557

theorem canonicalSound10963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10963.moment H = canonicalOutput10963.moment H :=
  canonical_of_padded canonicalInput10963 canonicalOutput10963 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput10964 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, 2, -1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10964 : ExponentCode := normalNode4257

theorem canonicalSound10964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10964.moment H = canonicalOutput10964.moment H :=
  canonical_of_padded canonicalInput10964 canonicalOutput10964 (by decide) (by decide)
    ⟨true, false, canonicalPermutation92, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput10965 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, 2, -1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10965 : ExponentCode := normalNode3682

theorem canonicalSound10965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10965.moment H = canonicalOutput10965.moment H :=
  canonical_of_padded canonicalInput10965 canonicalOutput10965 (by decide) (by decide)
    ⟨true, false, canonicalPermutation94, OAI.MUB6.Certificate.PairSemantics.permutation348⟩ (by decide +kernel) hH

def canonicalInput10966 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, 2, -1], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10966 : ExponentCode := normalNode4257

theorem canonicalSound10966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10966.moment H = canonicalOutput10966.moment H :=
  canonical_of_padded canonicalInput10966 canonicalOutput10966 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation213, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput10967 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, 2, -1], ![1, -2, 1, 2, -1, -1], ![1, 1, -2, -1, -1, 2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10967 : ExponentCode := normalNode5557

theorem canonicalSound10967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10967.moment H = canonicalOutput10967.moment H :=
  canonical_of_padded canonicalInput10967 canonicalOutput10967 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation252⟩ (by decide +kernel) hH

def canonicalInput10968 : ExponentCode := ⟨6, 6, ![![-2, 1, 1, -1, 2, -1], ![1, -2, 1, 2, -1, -1], ![1, 1, -2, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput10968 : ExponentCode := normalNode4257

theorem canonicalSound10968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10968.moment H = canonicalOutput10968.moment H :=
  canonical_of_padded canonicalInput10968 canonicalOutput10968 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation302⟩ (by decide +kernel) hH

def canonicalInput10969 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![-3, 1, 1, 1], ![5, -2, -2, -1]]⟩

def canonicalOutput10969 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node124⟩

theorem canonicalSound10969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10969.moment H = canonicalOutput10969.moment H :=
  canonical_of_padded canonicalInput10969 canonicalOutput10969 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10970 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![-2, -2, 3, 1], ![4, 1, -4, -1]]⟩

def canonicalOutput10970 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node148⟩

theorem canonicalSound10970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10970.moment H = canonicalOutput10970.moment H :=
  canonical_of_padded canonicalInput10970 canonicalOutput10970 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10971 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![-1, -3, 1, 3], ![3, 2, -2, -3]]⟩

def canonicalOutput10971 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node186⟩

theorem canonicalSound10971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10971.moment H = canonicalOutput10971.moment H :=
  canonical_of_padded canonicalInput10971 canonicalOutput10971 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10972 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![-1, -3, 2, 2], ![3, 2, -3, -2]]⟩

def canonicalOutput10972 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node183⟩

theorem canonicalSound10972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10972.moment H = canonicalOutput10972.moment H :=
  canonical_of_padded canonicalInput10972 canonicalOutput10972 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10973 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![-1, -3, 3, 1], ![3, 2, -4, -1]]⟩

def canonicalOutput10973 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node179⟩

theorem canonicalSound10973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10973.moment H = canonicalOutput10973.moment H :=
  canonical_of_padded canonicalInput10973 canonicalOutput10973 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10974 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![-1, -2, 4, -1], ![3, 1, -5, 1]]⟩

def canonicalOutput10974 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node172⟩

theorem canonicalSound10974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10974.moment H = canonicalOutput10974.moment H :=
  canonical_of_padded canonicalInput10974 canonicalOutput10974 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10975 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![0, -4, 1, 3], ![2, 3, -2, -3]]⟩

def canonicalOutput10975 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩

theorem canonicalSound10975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10975.moment H = canonicalOutput10975.moment H :=
  canonical_of_padded canonicalInput10975 canonicalOutput10975 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10976 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![0, -4, 2, 2], ![2, 3, -3, -2]]⟩

def canonicalOutput10976 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node211⟩

theorem canonicalSound10976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10976.moment H = canonicalOutput10976.moment H :=
  canonical_of_padded canonicalInput10976 canonicalOutput10976 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10977 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![0, -4, 3, 1], ![2, 3, -4, -1]]⟩

def canonicalOutput10977 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node208⟩

theorem canonicalSound10977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10977.moment H = canonicalOutput10977.moment H :=
  canonical_of_padded canonicalInput10977 canonicalOutput10977 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10978 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -3, 0, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput10978 : ExponentCode := normalNode5355

theorem canonicalSound10978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10978.moment H = canonicalOutput10978.moment H :=
  canonical_of_padded canonicalInput10978 canonicalOutput10978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10979 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -3, 0, 3], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10979 : ExponentCode := normalNode5446

theorem canonicalSound10979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10979.moment H = canonicalOutput10979.moment H :=
  canonical_of_padded canonicalInput10979 canonicalOutput10979 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation188, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10980 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -3, 1, 2], ![0, 0, -2, 2], ![2, 2, 0, -4]]⟩

def canonicalOutput10980 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code733

theorem canonicalSound10980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10980.moment H = canonicalOutput10980.moment H :=
  canonical_of_padded canonicalInput10980 canonicalOutput10980 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10981 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -3, 1, 2], ![0, 1, -2, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput10981 : ExponentCode := normalNode4538

theorem canonicalSound10981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10981.moment H = canonicalOutput10981.moment H :=
  canonical_of_padded canonicalInput10981 canonicalOutput10981 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput10982 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -3, 1, 2], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10982 : ExponentCode := normalNode4491

theorem canonicalSound10982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10982.moment H = canonicalOutput10982.moment H :=
  canonical_of_padded canonicalInput10982 canonicalOutput10982 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput10983 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -3, 1, 2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput10983 : ExponentCode := normalNode5508

theorem canonicalSound10983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10983.moment H = canonicalOutput10983.moment H :=
  canonical_of_padded canonicalInput10983 canonicalOutput10983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10984 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -3, 1, 2], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput10984 : ExponentCode := normalNode3453

theorem canonicalSound10984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10984.moment H = canonicalOutput10984.moment H :=
  canonical_of_padded canonicalInput10984 canonicalOutput10984 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation174, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10985 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -3, 1, 2], ![1, 0, -3, 2], ![1, 2, 1, -4]]⟩

def canonicalOutput10985 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1028

theorem canonicalSound10985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10985.moment H = canonicalOutput10985.moment H :=
  canonical_of_padded canonicalInput10985 canonicalOutput10985 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10986 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -3, 1, 2], ![1, 0, 1, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput10986 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node590⟩

theorem canonicalSound10986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10986.moment H = canonicalOutput10986.moment H :=
  canonical_of_padded canonicalInput10986 canonicalOutput10986 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10987 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -3, 1, 2], ![1, 1, -3, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10987 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1024

theorem canonicalSound10987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10987.moment H = canonicalOutput10987.moment H :=
  canonical_of_padded canonicalInput10987 canonicalOutput10987 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput10988 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![0, -3, 4, -1], ![2, 2, -5, 1]]⟩

def canonicalOutput10988 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node205⟩

theorem canonicalSound10988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10988.moment H = canonicalOutput10988.moment H :=
  canonical_of_padded canonicalInput10988 canonicalOutput10988 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10989 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -2, -1, 3], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10989 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1686⟩

theorem canonicalSound10989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10989.moment H = canonicalOutput10989.moment H :=
  canonical_of_padded canonicalInput10989 canonicalOutput10989 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10990 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -2, -1, 3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10990 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1641⟩

theorem canonicalSound10990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10990.moment H = canonicalOutput10990.moment H :=
  canonical_of_padded canonicalInput10990 canonicalOutput10990 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10991 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -2, -1, 3], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10991 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1636⟩

theorem canonicalSound10991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10991.moment H = canonicalOutput10991.moment H :=
  canonical_of_padded canonicalInput10991 canonicalOutput10991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10992 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -2, -1, 3], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput10992 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node490⟩

theorem canonicalSound10992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10992.moment H = canonicalOutput10992.moment H :=
  canonical_of_padded canonicalInput10992 canonicalOutput10992 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput10993 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -2, 0, 2], ![0, -1, 2, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]⟩

def canonicalOutput10993 : ExponentCode := normalNode4020

theorem canonicalSound10993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10993.moment H = canonicalOutput10993.moment H :=
  canonical_of_padded canonicalInput10993 canonicalOutput10993 (by decide) (by decide)
    ⟨false, true, canonicalPermutation44, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10994 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput10994 : ExponentCode := normalNode4081

theorem canonicalSound10994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10994.moment H = canonicalOutput10994.moment H :=
  canonical_of_padded canonicalInput10994 canonicalOutput10994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10995 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -2, 0, 2], ![0, 0, 2, -2], ![1, 0, -3, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput10995 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code902

theorem canonicalSound10995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10995.moment H = canonicalOutput10995.moment H :=
  canonical_of_padded canonicalInput10995 canonicalOutput10995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10996 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10996 : ExponentCode := normalNode5351

theorem canonicalSound10996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10996.moment H = canonicalOutput10996.moment H :=
  canonical_of_padded canonicalInput10996 canonicalOutput10996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput10997 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -2, 0, 2], ![0, 1, 1, -2], ![1, 0, -3, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput10997 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code909

theorem canonicalSound10997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10997.moment H = canonicalOutput10997.moment H :=
  canonical_of_padded canonicalInput10997 canonicalOutput10997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10998 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -2, 0, 2], ![1, -1, 2, -2], ![1, 2, -3, 0]]⟩

def canonicalOutput10998 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code895

theorem canonicalSound10998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10998.moment H = canonicalOutput10998.moment H :=
  canonical_of_padded canonicalInput10998 canonicalOutput10998 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput10999 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -2, 0, 2], ![1, 0, -3, 2], ![1, 1, 2, -4]]⟩

def canonicalOutput10999 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node581⟩

theorem canonicalSound10999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10999.moment H = canonicalOutput10999.moment H :=
  canonical_of_padded canonicalInput10999 canonicalOutput10999 (by decide) (by decide)
    ⟨true, true, canonicalPermutation2, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11000 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -2, 1, 1], ![0, 0, -2, 2], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput11000 : ExponentCode := normalNode4436

theorem canonicalSound11000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11000.moment H = canonicalOutput11000.moment H :=
  canonical_of_padded canonicalInput11000 canonicalOutput11000 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11001 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -2, 1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -1, -3, 2]]⟩

def canonicalOutput11001 : ExponentCode := normalNode541

theorem canonicalSound11001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11001.moment H = canonicalOutput11001.moment H :=
  canonical_of_padded canonicalInput11001 canonicalOutput11001 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation199, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput11002 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -2, 1, 1], ![0, 2, 1, -3], ![2, -1, -3, 2]]⟩

def canonicalOutput11002 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code913

theorem canonicalSound11002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11002.moment H = canonicalOutput11002.moment H :=
  canonical_of_padded canonicalInput11002 canonicalOutput11002 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11003 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 0, -3, 2], ![1, 1, 1, -3]]⟩

def canonicalOutput11003 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node616⟩

theorem canonicalSound11003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11003.moment H = canonicalOutput11003.moment H :=
  canonical_of_padded canonicalInput11003 canonicalOutput11003 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11004 : ExponentCode := ⟨3, 4, ![![-2, 1, 1, 0], ![0, -2, 4, -2], ![2, 1, -5, 2]]⟩

def canonicalOutput11004 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node200⟩

theorem canonicalSound11004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11004.moment H = canonicalOutput11004.moment H :=
  canonical_of_padded canonicalInput11004 canonicalOutput11004 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation155, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11005 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -3, 4], ![0, 0, 3, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11005 : ExponentCode := normalNode9747

theorem canonicalSound11005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11005.moment H = canonicalOutput11005.moment H :=
  canonical_of_padded canonicalInput11005 canonicalOutput11005 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11006 : ExponentCode := ⟨4, 4, ![![-2, 1, 1, 0], ![0, -1, -3, 4], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput11006 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1185⟩

theorem canonicalSound11006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11006.moment H = canonicalOutput11006.moment H :=
  canonical_of_padded canonicalInput11006 canonicalOutput11006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11007 : ExponentCode := ⟨5, 4, ![![-2, 1, 1, 0], ![0, -1, -2, 3], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11007 : ExponentCode := normalNode9967

theorem canonicalSound11007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11007.moment H = canonicalOutput11007.moment H :=
  canonical_of_padded canonicalInput11007 canonicalOutput11007 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
