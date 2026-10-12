import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes23
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes40
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput15936 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, -2, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15936 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2013⟩

theorem canonicalSound15936 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15936.moment H = canonicalOutput15936.moment H :=
  canonical_of_padded canonicalInput15936 canonicalOutput15936 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation182, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15937 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, -1, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15937 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2087⟩

theorem canonicalSound15937 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15937.moment H = canonicalOutput15937.moment H :=
  canonical_of_padded canonicalInput15937 canonicalOutput15937 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15938 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 2, 0, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput15938 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1846⟩

theorem canonicalSound15938 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15938.moment H = canonicalOutput15938.moment H :=
  canonical_of_padded canonicalInput15938 canonicalOutput15938 (by decide) (by decide)
    ⟨true, false, canonicalPermutation31, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15939 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, -1, -1, 1], ![1, 0, 2, -1, -2]]⟩

def canonicalOutput15939 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound15939 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15939.moment H = canonicalOutput15939.moment H :=
  canonical_of_padded canonicalInput15939 canonicalOutput15939 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15940 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -3, 2], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput15940 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1980⟩

theorem canonicalSound15940 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15940.moment H = canonicalOutput15940.moment H :=
  canonical_of_padded canonicalInput15940 canonicalOutput15940 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation182, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15941 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -2, 1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15941 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1800⟩

theorem canonicalSound15941 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15941.moment H = canonicalOutput15941.moment H :=
  canonical_of_padded canonicalInput15941 canonicalOutput15941 (by decide) (by decide)
    ⟨true, false, canonicalPermutation13, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15942 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15942 : ExponentCode := normalNode8350

theorem canonicalSound15942 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15942.moment H = canonicalOutput15942.moment H :=
  canonical_of_padded canonicalInput15942 canonicalOutput15942 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput15943 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15943 : ExponentCode := normalNode8738

theorem canonicalSound15943 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15943.moment H = canonicalOutput15943.moment H :=
  canonical_of_padded canonicalInput15943 canonicalOutput15943 (by decide) (by decide)
    ⟨false, true, canonicalPermutation30, canonicalPermutation18⟩ (by decide +kernel) hH

def canonicalInput15944 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![0, 1, 1, -1, -1], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput15944 : ExponentCode := normalNode10073

theorem canonicalSound15944 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15944.moment H = canonicalOutput15944.moment H :=
  canonical_of_padded canonicalInput15944 canonicalOutput15944 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15945 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15945 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound15945 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15945.moment H = canonicalOutput15945.moment H :=
  canonical_of_padded canonicalInput15945 canonicalOutput15945 (by decide) (by decide)
    ⟨true, false, canonicalPermutation58, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15946 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0]]⟩

def canonicalOutput15946 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound15946 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15946.moment H = canonicalOutput15946.moment H :=
  canonical_of_padded canonicalInput15946 canonicalOutput15946 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15947 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -3, 1]]⟩

def canonicalOutput15947 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound15947 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15947.moment H = canonicalOutput15947.moment H :=
  canonical_of_padded canonicalInput15947 canonicalOutput15947 (by decide) (by decide)
    ⟨true, true, canonicalPermutation72, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15948 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 1, -3, 1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15948 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound15948 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15948.moment H = canonicalOutput15948.moment H :=
  canonical_of_padded canonicalInput15948 canonicalOutput15948 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput15949 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 1, -2, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15949 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2583⟩

theorem canonicalSound15949 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15949.moment H = canonicalOutput15949.moment H :=
  canonical_of_padded canonicalInput15949 canonicalOutput15949 (by decide) (by decide)
    ⟨true, false, canonicalPermutation33, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput15950 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, -1, 0]]⟩

def canonicalOutput15950 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2588⟩

theorem canonicalSound15950 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15950.moment H = canonicalOutput15950.moment H :=
  canonical_of_padded canonicalInput15950 canonicalOutput15950 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation196, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput15951 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 1, 0, -2], ![1, 0, 0, -2, 1]]⟩

def canonicalOutput15951 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1800⟩

theorem canonicalSound15951 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15951.moment H = canonicalOutput15951.moment H :=
  canonical_of_padded canonicalInput15951 canonicalOutput15951 (by decide) (by decide)
    ⟨true, false, canonicalPermutation21, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15952 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 2, -2, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput15952 : ExponentCode := normalNode8992

theorem canonicalSound15952 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15952.moment H = canonicalOutput15952.moment H :=
  canonical_of_padded canonicalInput15952 canonicalOutput15952 (by decide) (by decide)
    ⟨true, false, canonicalPermutation17, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15953 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 2, -1, -2], ![1, 0, -1, -1, 1]]⟩

def canonicalOutput15953 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound15953 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15953.moment H = canonicalOutput15953.moment H :=
  canonical_of_padded canonicalInput15953 canonicalOutput15953 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15954 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 2, -1, -1, 0], ![1, -1, 2, -1, -1]]⟩

def canonicalOutput15954 : ExponentCode := normalNode4498

theorem canonicalSound15954 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15954.moment H = canonicalOutput15954.moment H :=
  canonical_of_padded canonicalInput15954 canonicalOutput15954 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15955 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 2, 0, -2, 0], ![1, -1, 1, 0, -1]]⟩

def canonicalOutput15955 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2015⟩

theorem canonicalSound15955 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15955.moment H = canonicalOutput15955.moment H :=
  canonical_of_padded canonicalInput15955 canonicalOutput15955 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15956 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 2, 0, -1, -1], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15956 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2073⟩

theorem canonicalSound15956 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15956.moment H = canonicalOutput15956.moment H :=
  canonical_of_padded canonicalInput15956 canonicalOutput15956 (by decide) (by decide)
    ⟨true, true, canonicalPermutation30, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput15957 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 2, 0, 0, -2], ![1, -1, 1, -2, 1]]⟩

def canonicalOutput15957 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1840⟩

theorem canonicalSound15957 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15957.moment H = canonicalOutput15957.moment H :=
  canonical_of_padded canonicalInput15957 canonicalOutput15957 (by decide) (by decide)
    ⟨true, false, canonicalPermutation43, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput15958 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 2, 2, -2, -2], ![1, -1, -1, 0, 1]]⟩

def canonicalOutput15958 : ExponentCode := normalNode2613

theorem canonicalSound15958 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15958.moment H = canonicalOutput15958.moment H :=
  canonical_of_padded canonicalInput15958 canonicalOutput15958 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15959 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![1, -1, 2, -1, -1], ![0, 2, -1, -1, 0]]⟩

def canonicalOutput15959 : ExponentCode := normalNode4498

theorem canonicalSound15959 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15959.moment H = canonicalOutput15959.moment H :=
  canonical_of_padded canonicalInput15959 canonicalOutput15959 (by decide) (by decide)
    ⟨true, true, canonicalPermutation39, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput15960 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![1, 0, -1, -1, 1], ![0, 1, 2, -1, -2]]⟩

def canonicalOutput15960 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound15960 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15960.moment H = canonicalOutput15960.moment H :=
  canonical_of_padded canonicalInput15960 canonicalOutput15960 (by decide) (by decide)
    ⟨true, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15961 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![1, 0, 2, -1, -2], ![0, 1, -1, -1, 1]]⟩

def canonicalOutput15961 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound15961 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15961.moment H = canonicalOutput15961.moment H :=
  canonical_of_padded canonicalInput15961 canonicalOutput15961 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput15962 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 3, -2], ![0, 0, 0, -2, 2], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15962 : ExponentCode := normalNode8407

theorem canonicalSound15962 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15962.moment H = canonicalOutput15962.moment H :=
  canonical_of_padded canonicalInput15962 canonicalOutput15962 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput15963 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 3, -2], ![0, 0, 0, -2, 2], ![1, 1, 1, -1, -2]]⟩

def canonicalOutput15963 : ExponentCode := normalNode874

theorem canonicalSound15963 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15963.moment H = canonicalOutput15963.moment H :=
  canonical_of_padded canonicalInput15963 canonicalOutput15963 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15964 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 3, -2], ![0, 0, 1, -3, 2], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15964 : ExponentCode := normalNode5819

theorem canonicalSound15964 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15964.moment H = canonicalOutput15964.moment H :=
  canonical_of_padded canonicalInput15964 canonicalOutput15964 (by decide) (by decide)
    ⟨true, false, canonicalPermutation30, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput15965 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 3, -2], ![0, 0, 2, -1, -1], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput15965 : ExponentCode := normalNode4543

theorem canonicalSound15965 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15965.moment H = canonicalOutput15965.moment H :=
  canonical_of_padded canonicalInput15965 canonicalOutput15965 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation177, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput15966 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 3, -2], ![0, 1, 0, -2, 1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15966 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩

theorem canonicalSound15966 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15966.moment H = canonicalOutput15966.moment H :=
  canonical_of_padded canonicalInput15966 canonicalOutput15966 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput15967 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, -1, 3, -2], ![0, 1, 1, -3, 1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15967 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2848⟩

theorem canonicalSound15967 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15967.moment H = canonicalOutput15967.moment H :=
  canonical_of_padded canonicalInput15967 canonicalOutput15967 (by decide) (by decide)
    ⟨true, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput15968 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -2, 2], ![0, 0, 0, 2, -2], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15968 : ExponentCode := normalNode9060

theorem canonicalSound15968 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15968.moment H = canonicalOutput15968.moment H :=
  canonical_of_padded canonicalInput15968 canonicalOutput15968 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15969 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]⟩

def canonicalOutput15969 : ExponentCode := normalNode8412

theorem canonicalSound15969 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15969.moment H = canonicalOutput15969.moment H :=
  canonical_of_padded canonicalInput15969 canonicalOutput15969 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation166⟩ (by decide +kernel) hH

def canonicalInput15970 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -2, 2], ![0, 0, 1, 1, -2], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput15970 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1521⟩

theorem canonicalSound15970 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15970.moment H = canonicalOutput15970.moment H :=
  canonical_of_padded canonicalInput15970 canonicalOutput15970 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15971 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, 1, 1, -3]]⟩

def canonicalOutput15971 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1504⟩

theorem canonicalSound15971 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15971.moment H = canonicalOutput15971.moment H :=
  canonical_of_padded canonicalInput15971 canonicalOutput15971 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15972 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -2, 2], ![0, 1, -1, 2, -2], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15972 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1518⟩

theorem canonicalSound15972 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15972.moment H = canonicalOutput15972.moment H :=
  canonical_of_padded canonicalInput15972 canonicalOutput15972 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15973 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -2, 2], ![0, 1, 0, 1, -2], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15973 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1033⟩

theorem canonicalSound15973 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15973.moment H = canonicalOutput15973.moment H :=
  canonical_of_padded canonicalInput15973 canonicalOutput15973 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15974 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -2, 2], ![1, 0, 1, 1, -3], ![0, 1, -1, 1, -1]]⟩

def canonicalOutput15974 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1504⟩

theorem canonicalSound15974 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15974.moment H = canonicalOutput15974.moment H :=
  canonical_of_padded canonicalInput15974 canonicalOutput15974 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15975 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -1, 1], ![0, 1, -1, 1, -1], ![1, 0, 1, 0, -2]]⟩

def canonicalOutput15975 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩

theorem canonicalSound15975 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15975.moment H = canonicalOutput15975.moment H :=
  canonical_of_padded canonicalInput15975 canonicalOutput15975 (by decide) (by decide)
    ⟨true, true, canonicalPermutation80, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15976 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -1, 1], ![0, 1, -1, 2, -2], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15976 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2442⟩

theorem canonicalSound15976 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15976.moment H = canonicalOutput15976.moment H :=
  canonical_of_padded canonicalInput15976 canonicalOutput15976 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation200, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput15977 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15977 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1044⟩

theorem canonicalSound15977 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15977.moment H = canonicalOutput15977.moment H :=
  canonical_of_padded canonicalInput15977 canonicalOutput15977 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15978 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, -1, 1], ![0, 1, 0, 1, -2], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15978 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1044⟩

theorem canonicalSound15978 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15978.moment H = canonicalOutput15978.moment H :=
  canonical_of_padded canonicalInput15978 canonicalOutput15978 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation50⟩ (by decide +kernel) hH

def canonicalInput15979 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 0, 0], ![0, 0, 1, 1, -2], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15979 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node668⟩

theorem canonicalSound15979 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15979.moment H = canonicalOutput15979.moment H :=
  canonical_of_padded canonicalInput15979 canonicalOutput15979 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15980 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 0, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, 1, -2], ![1, -1, 1, -1, 0]]⟩

def canonicalOutput15980 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2629⟩

theorem canonicalSound15980 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15980.moment H = canonicalOutput15980.moment H :=
  canonical_of_padded canonicalInput15980 canonicalOutput15980 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation173, OAI.MUB6.Certificate.PairSemantics.permutation171⟩ (by decide +kernel) hH

def canonicalInput15981 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 0, 0], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]⟩

def canonicalOutput15981 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node711⟩

theorem canonicalSound15981 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15981.moment H = canonicalOutput15981.moment H :=
  canonical_of_padded canonicalInput15981 canonicalOutput15981 (by decide) (by decide)
    ⟨true, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15982 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 0, 1, -2]]⟩

def canonicalOutput15982 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node294⟩

theorem canonicalSound15982 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15982.moment H = canonicalOutput15982.moment H :=
  canonical_of_padded canonicalInput15982 canonicalOutput15982 (by decide) (by decide)
    ⟨true, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15983 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15983 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound15983 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15983.moment H = canonicalOutput15983.moment H :=
  canonical_of_padded canonicalInput15983 canonicalOutput15983 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation178⟩ (by decide +kernel) hH

def canonicalInput15984 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 0, -1, 1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15984 : ExponentCode := normalNode9074

theorem canonicalSound15984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15984.moment H = canonicalOutput15984.moment H :=
  canonical_of_padded canonicalInput15984 canonicalOutput15984 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15985 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 0, -1, 1], ![1, 1, 0, 0, -2]]⟩

def canonicalOutput15985 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1039⟩

theorem canonicalSound15985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15985.moment H = canonicalOutput15985.moment H :=
  canonical_of_padded canonicalInput15985 canonicalOutput15985 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15986 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 0, 0, 0], ![1, 1, 0, -1, -1]]⟩

def canonicalOutput15986 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node287⟩

theorem canonicalSound15986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15986.moment H = canonicalOutput15986.moment H :=
  canonical_of_padded canonicalInput15986 canonicalOutput15986 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput15987 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 0, 1, -1], ![0, 1, 2, -2, -1], ![1, 0, -2, 0, 1]]⟩

def canonicalOutput15987 : ExponentCode := normalNode8351

theorem canonicalSound15987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15987.moment H = canonicalOutput15987.moment H :=
  canonical_of_padded canonicalInput15987 canonicalOutput15987 (by decide) (by decide)
    ⟨true, true, canonicalPermutation34, canonicalPermutation48⟩ (by decide +kernel) hH

def canonicalInput15988 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 0, 1, -1], ![1, 1, 0, -2, 0]]⟩

def canonicalOutput15988 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1045⟩

theorem canonicalSound15988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15988.moment H = canonicalOutput15988.moment H :=
  canonical_of_padded canonicalInput15988 canonicalOutput15988 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation176⟩ (by decide +kernel) hH

def canonicalInput15989 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -2, 1], ![1, 1, -1, 1, -2]]⟩

def canonicalOutput15989 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2831⟩

theorem canonicalSound15989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15989.moment H = canonicalOutput15989.moment H :=
  canonical_of_padded canonicalInput15989 canonicalOutput15989 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation192, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput15990 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]⟩

def canonicalOutput15990 : ExponentCode := normalNode8365

theorem canonicalSound15990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15990.moment H = canonicalOutput15990.moment H :=
  canonical_of_padded canonicalInput15990 canonicalOutput15990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput15991 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 0, 0]]⟩

def canonicalOutput15991 : ExponentCode := normalNode8365

theorem canonicalSound15991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15991.moment H = canonicalOutput15991.moment H :=
  canonical_of_padded canonicalInput15991 canonicalOutput15991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation167⟩ (by decide +kernel) hH

def canonicalInput15992 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![1, 1, -1, 0, -1]]⟩

def canonicalOutput15992 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2734⟩

theorem canonicalSound15992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15992.moment H = canonicalOutput15992.moment H :=
  canonical_of_padded canonicalInput15992 canonicalOutput15992 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15993 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-1, -1, 1, 1, 0], ![0, 2, 0, -2, 0], ![2, 0, -2, 0, 0]]⟩

def canonicalOutput15993 : ExponentCode := normalNode3658

theorem canonicalSound15993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15993.moment H = canonicalOutput15993.moment H :=
  canonical_of_padded canonicalInput15993 canonicalOutput15993 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation400, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput15994 : ExponentCode := ⟨6, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![-1, 1, -1, 1, 0], ![1, -1, 1, -1, 0], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15994 : ExponentCode := normalNode3694

theorem canonicalSound15994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15994.moment H = canonicalOutput15994.moment H :=
  canonical_of_padded canonicalInput15994 canonicalOutput15994 (by decide) (by decide)
    ⟨false, true, canonicalPermutation23, canonicalPermutation30⟩ (by decide +kernel) hH

def canonicalInput15995 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput15995 : ExponentCode := normalNode8389

theorem canonicalSound15995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15995.moment H = canonicalOutput15995.moment H :=
  canonical_of_padded canonicalInput15995 canonicalOutput15995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, canonicalPermutation36⟩ (by decide +kernel) hH

def canonicalInput15996 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0]]⟩

def canonicalOutput15996 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2607⟩

theorem canonicalSound15996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15996.moment H = canonicalOutput15996.moment H :=
  canonical_of_padded canonicalInput15996 canonicalOutput15996 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput15997 : ExponentCode := ⟨4, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, 1, -2], ![1, 1, -1, -2, 1]]⟩

def canonicalOutput15997 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2454⟩

theorem canonicalSound15997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15997.moment H = canonicalOutput15997.moment H :=
  canonical_of_padded canonicalInput15997 canonicalOutput15997 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation197, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput15998 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![0, 2, -2, 0, 0], ![1, -1, 0, 0, 0]]⟩

def canonicalOutput15998 : ExponentCode := normalNode10079

theorem canonicalSound15998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15998.moment H = canonicalOutput15998.moment H :=
  canonical_of_padded canonicalInput15998 canonicalOutput15998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput15999 : ExponentCode := ⟨5, 5, ![![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![0, 2, -1, -1, 0], ![1, -1, -1, 1, 0]]⟩

def canonicalOutput15999 : ExponentCode := normalNode8390

theorem canonicalSound15999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput15999.moment H = canonicalOutput15999.moment H :=
  canonical_of_padded canonicalInput15999 canonicalOutput15999 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
