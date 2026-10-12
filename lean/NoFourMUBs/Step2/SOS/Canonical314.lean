import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes08
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput20096 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 0, 4, -3], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput20096 : ExponentCode := normalNode10281

theorem canonicalSound20096 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20096.moment H = canonicalOutput20096.moment H :=
  canonical_of_padded canonicalInput20096 canonicalOutput20096 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation181, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20097 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 0, 4, -3], ![1, -1, -1, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput20097 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1080⟩

theorem canonicalSound20097 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20097.moment H = canonicalOutput20097.moment H :=
  canonical_of_padded canonicalInput20097 canonicalOutput20097 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20098 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, -2, 2], ![0, 0, 0, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput20098 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1367⟩

theorem canonicalSound20098 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20098.moment H = canonicalOutput20098.moment H :=
  canonical_of_padded canonicalInput20098 canonicalOutput20098 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation181⟩ (by decide +kernel) hH

def canonicalInput20099 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, -2, 2], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput20099 : ExponentCode := normalNode11035

theorem canonicalSound20099 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20099.moment H = canonicalOutput20099.moment H :=
  canonical_of_padded canonicalInput20099 canonicalOutput20099 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20100 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, -2, 3, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput20100 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2327⟩

theorem canonicalSound20100 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20100.moment H = canonicalOutput20100.moment H :=
  canonical_of_padded canonicalInput20100 canonicalOutput20100 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20101 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, -1, 0, 0]]⟩

def canonicalOutput20101 : ExponentCode := normalNode10185

theorem canonicalSound20101 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20101.moment H = canonicalOutput20101.moment H :=
  canonical_of_padded canonicalInput20101 canonicalOutput20101 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20102 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, -2, 2], ![0, 1, 1, -2], ![2, -2, 2, -2]]⟩

def canonicalOutput20102 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node718⟩

theorem canonicalSound20102 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20102.moment H = canonicalOutput20102.moment H :=
  canonical_of_padded canonicalInput20102 canonicalOutput20102 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20103 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, -2, 2], ![1, -1, 4, -4], ![1, 0, -1, 0]]⟩

def canonicalOutput20103 : ExponentCode := normalNode7468

theorem canonicalSound20103 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20103.moment H = canonicalOutput20103.moment H :=
  canonical_of_padded canonicalInput20103 canonicalOutput20103 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput20104 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, -2, 2], ![1, 0, 0, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput20104 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1367⟩

theorem canonicalSound20104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20104.moment H = canonicalOutput20104.moment H :=
  canonical_of_padded canonicalInput20104 canonicalOutput20104 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20105 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, -2, 2], ![1, 0, 1, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput20105 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1368⟩

theorem canonicalSound20105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20105.moment H = canonicalOutput20105.moment H :=
  canonical_of_padded canonicalInput20105 canonicalOutput20105 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20106 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput20106 : ExponentCode := normalNode8786

theorem canonicalSound20106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20106.moment H = canonicalOutput20106.moment H :=
  canonical_of_padded canonicalInput20106 canonicalOutput20106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20107 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput20107 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1299⟩

theorem canonicalSound20107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20107.moment H = canonicalOutput20107.moment H :=
  canonical_of_padded canonicalInput20107 canonicalOutput20107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20108 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, -1, 1], ![1, 0, -1, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput20108 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node972⟩

theorem canonicalSound20108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20108.moment H = canonicalOutput20108.moment H :=
  canonical_of_padded canonicalInput20108 canonicalOutput20108 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20109 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 0, 0], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput20109 : ExponentCode := normalNode2699

theorem canonicalSound20109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20109.moment H = canonicalOutput20109.moment H :=
  canonical_of_padded canonicalInput20109 canonicalOutput20109 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20110 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 0, 0], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput20110 : ExponentCode := normalNode8825

theorem canonicalSound20110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20110.moment H = canonicalOutput20110.moment H :=
  canonical_of_padded canonicalInput20110 canonicalOutput20110 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20111 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 1, -1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![2, -2, 0, 0]]⟩

def canonicalOutput20111 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1273

theorem canonicalSound20111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20111.moment H = canonicalOutput20111.moment H :=
  canonical_of_padded canonicalInput20111 canonicalOutput20111 (by decide) (by decide)
    ⟨false, false, canonicalPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20112 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 1, -1], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput20112 : ExponentCode := normalNode11099

theorem canonicalSound20112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20112.moment H = canonicalOutput20112.moment H :=
  canonical_of_padded canonicalInput20112 canonicalOutput20112 (by decide) (by decide)
    ⟨false, true, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20113 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 1, -1], ![0, 1, -2, 1], ![2, -2, 2, -2]]⟩

def canonicalOutput20113 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node500⟩

theorem canonicalSound20113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20113.moment H = canonicalOutput20113.moment H :=
  canonical_of_padded canonicalInput20113 canonicalOutput20113 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20114 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput20114 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2071⟩

theorem canonicalSound20114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20114.moment H = canonicalOutput20114.moment H :=
  canonical_of_padded canonicalInput20114 canonicalOutput20114 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput20115 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 1, -1], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput20115 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound20115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20115.moment H = canonicalOutput20115.moment H :=
  canonical_of_padded canonicalInput20115 canonicalOutput20115 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20116 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput20116 : ExponentCode := normalNode10195

theorem canonicalSound20116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20116.moment H = canonicalOutput20116.moment H :=
  canonical_of_padded canonicalInput20116 canonicalOutput20116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20117 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 1, -1], ![1, -1, 3, -3], ![1, 0, -3, 2]]⟩

def canonicalOutput20117 : ExponentCode := normalNode10983

theorem canonicalSound20117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20117.moment H = canonicalOutput20117.moment H :=
  canonical_of_padded canonicalInput20117 canonicalOutput20117 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20118 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 1, -1], ![1, 0, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput20118 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound20118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20118.moment H = canonicalOutput20118.moment H :=
  canonical_of_padded canonicalInput20118 canonicalOutput20118 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20119 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput20119 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2445⟩

theorem canonicalSound20119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20119.moment H = canonicalOutput20119.moment H :=
  canonical_of_padded canonicalInput20119 canonicalOutput20119 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20120 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![0, 0, 2, -2], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput20120 : ExponentCode := normalNode11023

theorem canonicalSound20120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20120.moment H = canonicalOutput20120.moment H :=
  canonical_of_padded canonicalInput20120 canonicalOutput20120 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation184, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20121 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![0, 0, 2, -2], ![1, 0, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput20121 : ExponentCode := normalNode11042

theorem canonicalSound20121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20121.moment H = canonicalOutput20121.moment H :=
  canonical_of_padded canonicalInput20121 canonicalOutput20121 (by decide) (by decide)
    ⟨false, true, canonicalPermutation64, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20122 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput20122 : ExponentCode := normalNode5432

theorem canonicalSound20122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20122.moment H = canonicalOutput20122.moment H :=
  canonical_of_padded canonicalInput20122 canonicalOutput20122 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20123 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, -1, 0, 0]]⟩

def canonicalOutput20123 : ExponentCode := normalNode10203

theorem canonicalSound20123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20123.moment H = canonicalOutput20123.moment H :=
  canonical_of_padded canonicalInput20123 canonicalOutput20123 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20124 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![0, 1, -2, 1], ![2, -2, 1, -1]]⟩

def canonicalOutput20124 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code563

theorem canonicalSound20124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20124.moment H = canonicalOutput20124.moment H :=
  canonical_of_padded canonicalInput20124 canonicalOutput20124 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation162, canonicalPermutation3⟩ (by decide +kernel) hH

def canonicalInput20125 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]⟩

def canonicalOutput20125 : ExponentCode := normalNode2402

theorem canonicalSound20125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20125.moment H = canonicalOutput20125.moment H :=
  canonical_of_padded canonicalInput20125 canonicalOutput20125 (by decide) (by decide)
    ⟨false, true, canonicalPermutation48, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput20126 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![0, 1, 1, -2], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput20126 : ExponentCode := normalNode10186

theorem canonicalSound20126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20126.moment H = canonicalOutput20126.moment H :=
  canonical_of_padded canonicalInput20126 canonicalOutput20126 (by decide) (by decide)
    ⟨false, true, canonicalPermutation73, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20127 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![1, -1, -2, 2], ![1, 0, 1, -2]]⟩

def canonicalOutput20127 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩

theorem canonicalSound20127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20127.moment H = canonicalOutput20127.moment H :=
  canonical_of_padded canonicalInput20127 canonicalOutput20127 (by decide) (by decide)
    ⟨false, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20128 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput20128 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node835⟩

theorem canonicalSound20128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20128.moment H = canonicalOutput20128.moment H :=
  canonical_of_padded canonicalInput20128 canonicalOutput20128 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20129 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![1, 0, -3, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput20129 : ExponentCode := normalNode11041

theorem canonicalSound20129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20129.moment H = canonicalOutput20129.moment H :=
  canonical_of_padded canonicalInput20129 canonicalOutput20129 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput20130 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 2, -2], ![1, 0, -2, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput20130 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩

theorem canonicalSound20130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20130.moment H = canonicalOutput20130.moment H :=
  canonical_of_padded canonicalInput20130 canonicalOutput20130 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20131 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 3, -3], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput20131 : ExponentCode := normalNode10977

theorem canonicalSound20131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20131.moment H = canonicalOutput20131.moment H :=
  canonical_of_padded canonicalInput20131 canonicalOutput20131 (by decide) (by decide)
    ⟨false, true, canonicalPermutation38, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20132 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 1, 3, -3], ![0, 1, -1, 0], ![1, -2, 0, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput20132 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2251⟩

theorem canonicalSound20132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20132.moment H = canonicalOutput20132.moment H :=
  canonical_of_padded canonicalInput20132 canonicalOutput20132 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation185, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20133 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 3, -3], ![1, -1, -2, 2], ![1, 0, 0, -1]]⟩

def canonicalOutput20133 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1326⟩

theorem canonicalSound20133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20133.moment H = canonicalOutput20133.moment H :=
  canonical_of_padded canonicalInput20133 canonicalOutput20133 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20134 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 3, -3], ![1, 0, -3, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput20134 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1327⟩

theorem canonicalSound20134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20134.moment H = canonicalOutput20134.moment H :=
  canonical_of_padded canonicalInput20134 canonicalOutput20134 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20135 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 4, -4], ![1, -1, -2, 2], ![1, 0, -1, 0]]⟩

def canonicalOutput20135 : ExponentCode := normalNode7458

theorem canonicalSound20135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20135.moment H = canonicalOutput20135.moment H :=
  canonical_of_padded canonicalInput20135 canonicalOutput20135 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput20136 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 1, 4, -4], ![1, 0, -3, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput20136 : ExponentCode := normalNode10549

theorem canonicalSound20136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20136.moment H = canonicalOutput20136.moment H :=
  canonical_of_padded canonicalInput20136 canonicalOutput20136 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput20137 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 2, -2, 1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput20137 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1308⟩

theorem canonicalSound20137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20137.moment H = canonicalOutput20137.moment H :=
  canonical_of_padded canonicalInput20137 canonicalOutput20137 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20138 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 2, -1, 0], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput20138 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node487⟩

theorem canonicalSound20138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20138.moment H = canonicalOutput20138.moment H :=
  canonical_of_padded canonicalInput20138 canonicalOutput20138 (by decide) (by decide)
    ⟨true, true, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20139 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 2, 0, -1], ![1, -1, -2, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput20139 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1022

theorem canonicalSound20139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20139.moment H = canonicalOutput20139.moment H :=
  canonical_of_padded canonicalInput20139 canonicalOutput20139 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20140 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 2, 0, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput20140 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node513⟩

theorem canonicalSound20140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20140.moment H = canonicalOutput20140.moment H :=
  canonical_of_padded canonicalInput20140 canonicalOutput20140 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput20141 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![-1, 2, 1, -2], ![0, 0, 2, -2], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput20141 : ExponentCode := normalNode5177

theorem canonicalSound20141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20141.moment H = canonicalOutput20141.moment H :=
  canonical_of_padded canonicalInput20141 canonicalOutput20141 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation170, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20142 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 2, 1, -2], ![1, -1, -2, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput20142 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1143

theorem canonicalSound20142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20142.moment H = canonicalOutput20142.moment H :=
  canonical_of_padded canonicalInput20142 canonicalOutput20142 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20143 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 2, 1, -2], ![1, -1, -1, 1], ![1, -1, 1, -1]]⟩

def canonicalOutput20143 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node514⟩

theorem canonicalSound20143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20143.moment H = canonicalOutput20143.moment H :=
  canonical_of_padded canonicalInput20143 canonicalOutput20143 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput20144 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 2, 2, -3], ![1, -1, -2, 2], ![1, -1, 1, -1]]⟩

def canonicalOutput20144 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node676⟩

theorem canonicalSound20144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20144.moment H = canonicalOutput20144.moment H :=
  canonical_of_padded canonicalInput20144 canonicalOutput20144 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput20145 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![-1, 2, 3, -4], ![1, -1, -2, 2], ![1, -1, 0, 0]]⟩

def canonicalOutput20145 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1236⟩

theorem canonicalSound20145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20145.moment H = canonicalOutput20145.moment H :=
  canonical_of_padded canonicalInput20145 canonicalOutput20145 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation159, canonicalPermutation0⟩ (by decide +kernel) hH

def canonicalInput20146 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -3, 2, 1], ![0, 1, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput20146 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩

theorem canonicalSound20146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20146.moment H = canonicalOutput20146.moment H :=
  canonical_of_padded canonicalInput20146 canonicalOutput20146 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20147 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -3, 2, 1], ![0, 2, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput20147 : ExponentCode := normalNode7824

theorem canonicalSound20147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20147.moment H = canonicalOutput20147.moment H :=
  canonical_of_padded canonicalInput20147 canonicalOutput20147 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20148 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -3, 2, 1], ![0, 2, 1, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput20148 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node990⟩

theorem canonicalSound20148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20148.moment H = canonicalOutput20148.moment H :=
  canonical_of_padded canonicalInput20148 canonicalOutput20148 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20149 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -3, 2, 1], ![0, 3, -2, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput20149 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node989⟩

theorem canonicalSound20149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20149.moment H = canonicalOutput20149.moment H :=
  canonical_of_padded canonicalInput20149 canonicalOutput20149 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20150 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -3, 2, 1], ![0, 3, 1, -4], ![1, 0, -2, 1]]⟩

def canonicalOutput20150 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1086⟩

theorem canonicalSound20150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20150.moment H = canonicalOutput20150.moment H :=
  canonical_of_padded canonicalInput20150 canonicalOutput20150 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation153, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20151 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, -1, 3], ![0, 1, 3, -4], ![1, 1, -1, -1]]⟩

def canonicalOutput20151 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1091⟩

theorem canonicalSound20151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20151.moment H = canonicalOutput20151.moment H :=
  canonical_of_padded canonicalInput20151 canonicalOutput20151 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20152 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, -1, 3], ![0, 2, 2, -4], ![1, 0, 0, -1]]⟩

def canonicalOutput20152 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node994⟩

theorem canonicalSound20152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20152.moment H = canonicalOutput20152.moment H :=
  canonical_of_padded canonicalInput20152 canonicalOutput20152 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput20153 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, -1, 3], ![0, 2, 3, -5], ![1, 0, -1, 0]]⟩

def canonicalOutput20153 : ExponentCode := normalNode7940

theorem canonicalSound20153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20153.moment H = canonicalOutput20153.moment H :=
  canonical_of_padded canonicalInput20153 canonicalOutput20153 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput20154 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 0, 2], ![0, 0, 3, -3], ![1, 2, -2, -1]]⟩

def canonicalOutput20154 : ExponentCode := normalNode7120

theorem canonicalSound20154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20154.moment H = canonicalOutput20154.moment H :=
  canonical_of_padded canonicalInput20154 canonicalOutput20154 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20155 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 0, 2], ![0, 1, -2, 1], ![1, 1, 3, -5]]⟩

def canonicalOutput20155 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node887⟩

theorem canonicalSound20155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20155.moment H = canonicalOutput20155.moment H :=
  canonical_of_padded canonicalInput20155 canonicalOutput20155 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20156 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 0, 2], ![1, 0, 3, -4], ![0, 2, -2, 0]]⟩

def canonicalOutput20156 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1164⟩

theorem canonicalSound20156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20156.moment H = canonicalOutput20156.moment H :=
  canonical_of_padded canonicalInput20156 canonicalOutput20156 (by decide) (by decide)
    ⟨false, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20157 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput20157 : ExponentCode := normalNode8985

theorem canonicalSound20157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20157.moment H = canonicalOutput20157.moment H :=
  canonical_of_padded canonicalInput20157 canonicalOutput20157 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput20158 : ExponentCode := ⟨5, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, 1, -3, 1], ![0, 1, 1, -2]]⟩

def canonicalOutput20158 : ExponentCode := normalNode7900

theorem canonicalSound20158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20158.moment H = canonicalOutput20158.moment H :=
  canonical_of_padded canonicalInput20158 canonicalOutput20158 (by decide) (by decide)
    ⟨false, true, canonicalPermutation52, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput20159 : ExponentCode := ⟨4, 4, ![![-1, 0, -1, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput20159 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩

theorem canonicalSound20159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput20159.moment H = canonicalOutput20159.moment H :=
  canonical_of_padded canonicalInput20159 canonicalOutput20159 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
