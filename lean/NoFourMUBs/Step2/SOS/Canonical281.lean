import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes012
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes29
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput17984 : ExponentCode := ⟨4, 5, ![![-1, -1, 1, 0, 1], ![1, 0, 0, 2, -3], ![0, 0, 1, -3, 2], ![0, 1, -2, 1, 0]]⟩

def canonicalOutput17984 : ExponentCode := normalNode5402

theorem canonicalSound17984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17984.moment H = canonicalOutput17984.moment H :=
  canonical_of_padded canonicalInput17984 canonicalOutput17984 (by decide) (by decide)
    ⟨true, false, canonicalPermutation18, OAI.MUB6.Certificate.PairSemantics.permutation165⟩ (by decide +kernel) hH

def canonicalInput17985 : ExponentCode := ⟨5, 6, ![![-1, -1, 1, 0, 2, -1], ![0, 0, -1, -2, 0, 3], ![0, 0, 0, 2, 0, -2], ![0, 1, 0, 0, -1, 0], ![1, 0, 0, 0, -1, 0]]⟩

def canonicalOutput17985 : ExponentCode := normalNode8304

theorem canonicalSound17985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17985.moment H = canonicalOutput17985.moment H :=
  canonical_of_padded canonicalInput17985 canonicalOutput17985 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation302, canonicalPermutation52⟩ (by decide +kernel) hH

def canonicalInput17986 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-4, 2, 2, 0], ![5, -1, -3, -1]]⟩

def canonicalOutput17986 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node233⟩

theorem canonicalSound17986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17986.moment H = canonicalOutput17986.moment H :=
  canonical_of_padded canonicalInput17986 canonicalOutput17986 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17987 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-4, 3, 1, 0], ![5, -2, -2, -1]]⟩

def canonicalOutput17987 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node235⟩

theorem canonicalSound17987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17987.moment H = canonicalOutput17987.moment H :=
  canonical_of_padded canonicalInput17987 canonicalOutput17987 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17988 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-3, -1, 1, 3], ![4, 2, -2, -4]]⟩

def canonicalOutput17988 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1290

theorem canonicalSound17988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17988.moment H = canonicalOutput17988.moment H :=
  canonical_of_padded canonicalInput17988 canonicalOutput17988 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17989 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-3, -1, 3, 1], ![4, 2, -4, -2]]⟩

def canonicalOutput17989 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1290

theorem canonicalSound17989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17989.moment H = canonicalOutput17989.moment H :=
  canonical_of_padded canonicalInput17989 canonicalOutput17989 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17990 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-3, 2, -2, 3], ![4, -1, 1, -4]]⟩

def canonicalOutput17990 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1292

theorem canonicalSound17990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17990.moment H = canonicalOutput17990.moment H :=
  canonical_of_padded canonicalInput17990 canonicalOutput17990 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17991 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-3, 2, 2, -1], ![4, -1, -3, 0]]⟩

def canonicalOutput17991 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node245⟩

theorem canonicalSound17991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17991.moment H = canonicalOutput17991.moment H :=
  canonical_of_padded canonicalInput17991 canonicalOutput17991 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17992 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-3, 3, -2, 2], ![4, -2, 1, -3]]⟩

def canonicalOutput17992 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1293

theorem canonicalSound17992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17992.moment H = canonicalOutput17992.moment H :=
  canonical_of_padded canonicalInput17992 canonicalOutput17992 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17993 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-3, 4, -2, 1], ![4, -3, 1, -2]]⟩

def canonicalOutput17993 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1294

theorem canonicalSound17993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17993.moment H = canonicalOutput17993.moment H :=
  canonical_of_padded canonicalInput17993 canonicalOutput17993 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17994 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-3, 4, 1, -2], ![4, -3, -2, 1]]⟩

def canonicalOutput17994 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1294

theorem canonicalSound17994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17994.moment H = canonicalOutput17994.moment H :=
  canonical_of_padded canonicalInput17994 canonicalOutput17994 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17995 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-2, -1, 3, 0], ![3, 2, -4, -1]]⟩

def canonicalOutput17995 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node241⟩

theorem canonicalSound17995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17995.moment H = canonicalOutput17995.moment H :=
  canonical_of_padded canonicalInput17995 canonicalOutput17995 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17996 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-2, -1, 4, -1], ![3, 2, -5, 0]]⟩

def canonicalOutput17996 : ExponentCode := normalNode5980

theorem canonicalSound17996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17996.moment H = canonicalOutput17996.moment H :=
  canonical_of_padded canonicalInput17996 canonicalOutput17996 (by decide) (by decide)
    ⟨true, true, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17997 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-2, 2, 2, -2], ![3, -1, -3, 1]]⟩

def canonicalOutput17997 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node260⟩

theorem canonicalSound17997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17997.moment H = canonicalOutput17997.moment H :=
  canonical_of_padded canonicalInput17997 canonicalOutput17997 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput17998 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-2, 4, -2, 0], ![3, -3, 1, -1]]⟩

def canonicalOutput17998 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node247⟩

theorem canonicalSound17998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17998.moment H = canonicalOutput17998.moment H :=
  canonical_of_padded canonicalInput17998 canonicalOutput17998 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput17999 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-1, -3, 3, 1], ![2, 4, -4, -2]]⟩

def canonicalOutput17999 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1290

theorem canonicalSound17999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput17999.moment H = canonicalOutput17999.moment H :=
  canonical_of_padded canonicalInput17999 canonicalOutput17999 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18000 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-1, -2, 4, -1], ![2, 3, -5, 0]]⟩

def canonicalOutput18000 : ExponentCode := normalNode5980

theorem canonicalSound18000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18000.moment H = canonicalOutput18000.moment H :=
  canonical_of_padded canonicalInput18000 canonicalOutput18000 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18001 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, -1, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput18001 : ExponentCode := normalNode4348

theorem canonicalSound18001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18001.moment H = canonicalOutput18001.moment H :=
  canonical_of_padded canonicalInput18001 canonicalOutput18001 (by decide) (by decide)
    ⟨false, false, canonicalPermutation30, canonicalPermutation2⟩ (by decide +kernel) hH

def canonicalInput18002 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, -1, 2, 0], ![1, 1, -3, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput18002 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node477⟩

theorem canonicalSound18002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18002.moment H = canonicalOutput18002.moment H :=
  canonical_of_padded canonicalInput18002 canonicalOutput18002 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18003 : ExponentCode := ⟨3, 4, ![![-1, -1, 1, 1], ![-1, -1, 4, -2], ![2, 2, -5, 1]]⟩

def canonicalOutput18003 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node234⟩

theorem canonicalSound18003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18003.moment H = canonicalOutput18003.moment H :=
  canonical_of_padded canonicalInput18003 canonicalOutput18003 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation164, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18004 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput18004 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1682⟩

theorem canonicalSound18004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18004.moment H = canonicalOutput18004.moment H :=
  canonical_of_padded canonicalInput18004 canonicalOutput18004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput18005 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput18005 : ExponentCode := normalNode9366

theorem canonicalSound18005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18005.moment H = canonicalOutput18005.moment H :=
  canonical_of_padded canonicalInput18005 canonicalOutput18005 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18006 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, -1, 0]]⟩

def canonicalOutput18006 : ExponentCode := normalNode9366

theorem canonicalSound18006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18006.moment H = canonicalOutput18006.moment H :=
  canonical_of_padded canonicalInput18006 canonicalOutput18006 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18007 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput18007 : ExponentCode := normalNode9365

theorem canonicalSound18007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18007.moment H = canonicalOutput18007.moment H :=
  canonical_of_padded canonicalInput18007 canonicalOutput18007 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18008 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput18008 : ExponentCode := normalNode9365

theorem canonicalSound18008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18008.moment H = canonicalOutput18008.moment H :=
  canonical_of_padded canonicalInput18008 canonicalOutput18008 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18009 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 1, 2, -3], ![2, 0, -1, -1]]⟩

def canonicalOutput18009 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1093⟩

theorem canonicalSound18009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18009.moment H = canonicalOutput18009.moment H :=
  canonical_of_padded canonicalInput18009 canonicalOutput18009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18010 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput18010 : ExponentCode := normalNode4234

theorem canonicalSound18010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18010.moment H = canonicalOutput18010.moment H :=
  canonical_of_padded canonicalInput18010 canonicalOutput18010 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18011 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 2, 0, -2], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput18011 : ExponentCode := normalNode3958

theorem canonicalSound18011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18011.moment H = canonicalOutput18011.moment H :=
  canonical_of_padded canonicalInput18011 canonicalOutput18011 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18012 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput18012 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1671⟩

theorem canonicalSound18012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18012.moment H = canonicalOutput18012.moment H :=
  canonical_of_padded canonicalInput18012 canonicalOutput18012 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18013 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput18013 : ExponentCode := normalNode3226

theorem canonicalSound18013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18013.moment H = canonicalOutput18013.moment H :=
  canonical_of_padded canonicalInput18013 canonicalOutput18013 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18014 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![1, -1, 2, -2], ![1, 2, -1, -2]]⟩

def canonicalOutput18014 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code622

theorem canonicalSound18014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18014.moment H = canonicalOutput18014.moment H :=
  canonical_of_padded canonicalInput18014 canonicalOutput18014 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18015 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 0, -2, 3], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput18015 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1092⟩

theorem canonicalSound18015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18015.moment H = canonicalOutput18015.moment H :=
  canonical_of_padded canonicalInput18015 canonicalOutput18015 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18016 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, -2, 1], ![0, 1, 2, -3], ![2, -1, 0, -1]]⟩

def canonicalOutput18016 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1151

theorem canonicalSound18016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18016.moment H = canonicalOutput18016.moment H :=
  canonical_of_padded canonicalInput18016 canonicalOutput18016 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput18017 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput18017 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2484⟩

theorem canonicalSound18017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18017.moment H = canonicalOutput18017.moment H :=
  canonical_of_padded canonicalInput18017 canonicalOutput18017 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18018 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput18018 : ExponentCode := normalNode9398

theorem canonicalSound18018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18018.moment H = canonicalOutput18018.moment H :=
  canonical_of_padded canonicalInput18018 canonicalOutput18018 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18019 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, -2, 1], ![1, 0, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput18019 : ExponentCode := normalNode9398

theorem canonicalSound18019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18019.moment H = canonicalOutput18019.moment H :=
  canonical_of_padded canonicalInput18019 canonicalOutput18019 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18020 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput18020 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2511⟩

theorem canonicalSound18020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18020.moment H = canonicalOutput18020.moment H :=
  canonical_of_padded canonicalInput18020 canonicalOutput18020 (by decide) (by decide)
    ⟨false, true, canonicalPermutation46, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput18021 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput18021 : ExponentCode := normalNode9396

theorem canonicalSound18021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18021.moment H = canonicalOutput18021.moment H :=
  canonical_of_padded canonicalInput18021 canonicalOutput18021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18022 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput18022 : ExponentCode := normalNode9397

theorem canonicalSound18022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18022.moment H = canonicalOutput18022.moment H :=
  canonical_of_padded canonicalInput18022 canonicalOutput18022 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18023 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput18023 : ExponentCode := normalNode7709

theorem canonicalSound18023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18023.moment H = canonicalOutput18023.moment H :=
  canonical_of_padded canonicalInput18023 canonicalOutput18023 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18024 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput18024 : ExponentCode := normalNode8817

theorem canonicalSound18024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18024.moment H = canonicalOutput18024.moment H :=
  canonical_of_padded canonicalInput18024 canonicalOutput18024 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18025 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput18025 : ExponentCode := normalNode9394

theorem canonicalSound18025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18025.moment H = canonicalOutput18025.moment H :=
  canonical_of_padded canonicalInput18025 canonicalOutput18025 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18026 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput18026 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2625⟩

theorem canonicalSound18026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18026.moment H = canonicalOutput18026.moment H :=
  canonical_of_padded canonicalInput18026 canonicalOutput18026 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18027 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, 2, -3], ![1, 0, -2, 1]]⟩

def canonicalOutput18027 : ExponentCode := normalNode9394

theorem canonicalSound18027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18027.moment H = canonicalOutput18027.moment H :=
  canonical_of_padded canonicalInput18027 canonicalOutput18027 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18028 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput18028 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1377

theorem canonicalSound18028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18028.moment H = canonicalOutput18028.moment H :=
  canonical_of_padded canonicalInput18028 canonicalOutput18028 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18029 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput18029 : ExponentCode := normalNode8833

theorem canonicalSound18029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18029.moment H = canonicalOutput18029.moment H :=
  canonical_of_padded canonicalInput18029 canonicalOutput18029 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18030 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput18030 : ExponentCode := normalNode9392

theorem canonicalSound18030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18030.moment H = canonicalOutput18030.moment H :=
  canonical_of_padded canonicalInput18030 canonicalOutput18030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18031 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput18031 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2624⟩

theorem canonicalSound18031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18031.moment H = canonicalOutput18031.moment H :=
  canonical_of_padded canonicalInput18031 canonicalOutput18031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation154, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18032 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 1, 2, -3], ![1, 0, 0, -1], ![1, 0, -2, 1]]⟩

def canonicalOutput18032 : ExponentCode := normalNode9392

theorem canonicalSound18032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18032.moment H = canonicalOutput18032.moment H :=
  canonical_of_padded canonicalInput18032 canonicalOutput18032 (by decide) (by decide)
    ⟨false, false, canonicalPermutation1, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18033 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 2, -2, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput18033 : ExponentCode := normalNode4012

theorem canonicalSound18033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18033.moment H = canonicalOutput18033.moment H :=
  canonical_of_padded canonicalInput18033 canonicalOutput18033 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18034 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 2, -2, 0], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput18034 : ExponentCode := normalNode3947

theorem canonicalSound18034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18034.moment H = canonicalOutput18034.moment H :=
  canonical_of_padded canonicalInput18034 canonicalOutput18034 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18035 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 2, -1, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput18035 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code960

theorem canonicalSound18035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18035.moment H = canonicalOutput18035.moment H :=
  canonical_of_padded canonicalInput18035 canonicalOutput18035 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18036 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 2, -1, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput18036 : ExponentCode := normalNode4386

theorem canonicalSound18036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18036.moment H = canonicalOutput18036.moment H :=
  canonical_of_padded canonicalInput18036 canonicalOutput18036 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18037 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 2, 0, -2], ![1, -1, 2, -2], ![1, 0, -2, 1]]⟩

def canonicalOutput18037 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code885

theorem canonicalSound18037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18037.moment H = canonicalOutput18037.moment H :=
  canonical_of_padded canonicalInput18037 canonicalOutput18037 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18038 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput18038 : ExponentCode := normalNode1988

theorem canonicalSound18038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18038.moment H = canonicalOutput18038.moment H :=
  canonical_of_padded canonicalInput18038 canonicalOutput18038 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18039 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 2, 1, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput18039 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1719⟩

theorem canonicalSound18039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18039.moment H = canonicalOutput18039.moment H :=
  canonical_of_padded canonicalInput18039 canonicalOutput18039 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18040 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 2, 2, -4], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput18040 : ExponentCode := normalNode3225

theorem canonicalSound18040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18040.moment H = canonicalOutput18040.moment H :=
  canonical_of_padded canonicalInput18040 canonicalOutput18040 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18041 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -2, 1]]⟩

def canonicalOutput18041 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1912⟩

theorem canonicalSound18041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18041.moment H = canonicalOutput18041.moment H :=
  canonical_of_padded canonicalInput18041 canonicalOutput18041 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18042 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, -1, 2, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput18042 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code611

theorem canonicalSound18042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18042.moment H = canonicalOutput18042.moment H :=
  canonical_of_padded canonicalInput18042 canonicalOutput18042 (by decide) (by decide)
    ⟨false, true, canonicalPermutation8, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput18043 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 0, -2, 1], ![0, 1, 2, -3], ![1, 0, 0, -1]]⟩

def canonicalOutput18043 : ExponentCode := normalNode9392

theorem canonicalSound18043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18043.moment H = canonicalOutput18043.moment H :=
  canonical_of_padded canonicalInput18043 canonicalOutput18043 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18044 : ExponentCode := ⟨4, 4, ![![-1, -1, 1, 1], ![-1, 0, -1, 2], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput18044 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1096⟩

theorem canonicalSound18044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18044.moment H = canonicalOutput18044.moment H :=
  canonical_of_padded canonicalInput18044 canonicalOutput18044 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18045 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, 0, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput18045 : ExponentCode := normalNode8863

theorem canonicalSound18045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18045.moment H = canonicalOutput18045.moment H :=
  canonical_of_padded canonicalInput18045 canonicalOutput18045 (by decide) (by decide)
    ⟨false, true, canonicalPermutation77, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput18046 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, 0, 1], ![0, 2, 2, -4], ![1, -1, 0, 0], ![1, 0, -3, 2]]⟩

def canonicalOutput18046 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1916⟩

theorem canonicalSound18046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18046.moment H = canonicalOutput18046.moment H :=
  canonical_of_padded canonicalInput18046 canonicalOutput18046 (by decide) (by decide)
    ⟨false, true, canonicalPermutation17, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput18047 : ExponentCode := ⟨5, 4, ![![-1, -1, 1, 1], ![-1, 0, 2, -1], ![0, 1, -3, 2], ![1, -1, 0, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput18047 : ExponentCode := normalNode8833

theorem canonicalSound18047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput18047.moment H = canonicalOutput18047.moment H :=
  canonical_of_padded canonicalInput18047 canonicalOutput18047 (by decide) (by decide)
    ⟨false, true, canonicalPermutation33, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
