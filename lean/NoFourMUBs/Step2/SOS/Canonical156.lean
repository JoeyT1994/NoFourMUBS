import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes09
import NoFourMUBs.Step2.SOS.MomentCodes12
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes25
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes27
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes28
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes30
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes31
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes32
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput9984 : ExponentCode := ⟨6, 6, ![![-2, 1, -1, 1, 1, 0], ![1, -2, 2, 1, -2, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, 1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9984 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1007

theorem canonicalSound9984 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9984.moment H = canonicalOutput9984.moment H :=
  canonical_of_padded canonicalInput9984 canonicalOutput9984 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation307⟩ (by decide +kernel) hH

def canonicalInput9985 : ExponentCode := ⟨6, 6, ![![-2, 1, -1, 1, 1, 0], ![1, -2, 2, 1, -2, 0], ![1, 1, -1, -2, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput9985 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1212

theorem canonicalSound9985 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9985.moment H = canonicalOutput9985.moment H :=
  canonical_of_padded canonicalInput9985 canonicalOutput9985 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation316, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput9986 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -3, 2, 1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput9986 : ExponentCode := normalNode2517

theorem canonicalSound9986 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9986.moment H = canonicalOutput9986.moment H :=
  canonical_of_padded canonicalInput9986 canonicalOutput9986 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation157, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9987 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -3, 2, 1], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput9987 : ExponentCode := normalNode2271

theorem canonicalSound9987 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9987.moment H = canonicalOutput9987.moment H :=
  canonical_of_padded canonicalInput9987 canonicalOutput9987 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9988 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -3, 2, 1], ![0, 2, -1, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput9988 : ExponentCode := normalNode2573

theorem canonicalSound9988 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9988.moment H = canonicalOutput9988.moment H :=
  canonical_of_padded canonicalInput9988 canonicalOutput9988 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9989 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -3, 2, 1], ![1, 0, 1, -2], ![1, 2, -2, -1]]⟩

def canonicalOutput9989 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code631

theorem canonicalSound9989 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9989.moment H = canonicalOutput9989.moment H :=
  canonical_of_padded canonicalInput9989 canonicalOutput9989 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9990 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -3, 2, 1], ![1, 1, -2, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput9990 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code630

theorem canonicalSound9990 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9990.moment H = canonicalOutput9990.moment H :=
  canonical_of_padded canonicalInput9990 canonicalOutput9990 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9991 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -3, 3, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput9991 : ExponentCode := normalNode2252

theorem canonicalSound9991 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9991.moment H = canonicalOutput9991.moment H :=
  canonical_of_padded canonicalInput9991 canonicalOutput9991 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9992 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, -1, 3], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput9992 : ExponentCode := normalNode7816

theorem canonicalSound9992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9992.moment H = canonicalOutput9992.moment H :=
  canonical_of_padded canonicalInput9992 canonicalOutput9992 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9993 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 0, 2], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 3, -5]]⟩

def canonicalOutput9993 : ExponentCode := normalNode4054

theorem canonicalSound9993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9993.moment H = canonicalOutput9993.moment H :=
  canonical_of_padded canonicalInput9993 canonicalOutput9993 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9994 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 0, 2], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput9994 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1761⟩

theorem canonicalSound9994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9994.moment H = canonicalOutput9994.moment H :=
  canonical_of_padded canonicalInput9994 canonicalOutput9994 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput9995 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 0, 2], ![0, 0, 4, -4], ![1, 0, -1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput9995 : ExponentCode := normalNode4113

theorem canonicalSound9995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9995.moment H = canonicalOutput9995.moment H :=
  canonical_of_padded canonicalInput9995 canonicalOutput9995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9996 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 0, 2], ![0, 1, 3, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput9996 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2047⟩

theorem canonicalSound9996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9996.moment H = canonicalOutput9996.moment H :=
  canonical_of_padded canonicalInput9996 canonicalOutput9996 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput9997 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 0, 2], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput9997 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1234⟩

theorem canonicalSound9997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9997.moment H = canonicalOutput9997.moment H :=
  canonical_of_padded canonicalInput9997 canonicalOutput9997 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation163, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput9998 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 0, 2], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput9998 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node483⟩

theorem canonicalSound9998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9998.moment H = canonicalOutput9998.moment H :=
  canonical_of_padded canonicalInput9998 canonicalOutput9998 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation163, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput9999 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 2, -4]]⟩

def canonicalOutput9999 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2083⟩

theorem canonicalSound9999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput9999.moment H = canonicalOutput9999.moment H :=
  canonical_of_padded canonicalInput9999 canonicalOutput9999 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10000 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 0, -1, 1], ![1, 0, 2, -3], ![1, 1, -1, -1]]⟩

def canonicalOutput10000 : ExponentCode := normalNode4485

theorem canonicalSound10000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10000.moment H = canonicalOutput10000.moment H :=
  canonical_of_padded canonicalInput10000 canonicalOutput10000 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10001 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 0, -1, 1], ![1, 0, 3, -4], ![1, 1, -2, 0]]⟩

def canonicalOutput10001 : ExponentCode := normalNode4487

theorem canonicalSound10001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10001.moment H = canonicalOutput10001.moment H :=
  canonical_of_padded canonicalInput10001 canonicalOutput10001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10002 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10002 : ExponentCode := normalNode4497

theorem canonicalSound10002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10002.moment H = canonicalOutput10002.moment H :=
  canonical_of_padded canonicalInput10002 canonicalOutput10002 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10003 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput10003 : ExponentCode := normalNode4467

theorem canonicalSound10003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10003.moment H = canonicalOutput10003.moment H :=
  canonical_of_padded canonicalInput10003 canonicalOutput10003 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10004 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![0, 1, -1, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput10004 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2066⟩

theorem canonicalSound10004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10004.moment H = canonicalOutput10004.moment H :=
  canonical_of_padded canonicalInput10004 canonicalOutput10004 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10005 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput10005 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code990

theorem canonicalSound10005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10005.moment H = canonicalOutput10005.moment H :=
  canonical_of_padded canonicalInput10005 canonicalOutput10005 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10006 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 0, 2, -2], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput10006 : ExponentCode := normalNode4437

theorem canonicalSound10006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10006.moment H = canonicalOutput10006.moment H :=
  canonical_of_padded canonicalInput10006 canonicalOutput10006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10007 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 2, -3]]⟩

def canonicalOutput10007 : ExponentCode := normalNode4565

theorem canonicalSound10007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10007.moment H = canonicalOutput10007.moment H :=
  canonical_of_padded canonicalInput10007 canonicalOutput10007 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10008 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 0, 3, -4]]⟩

def canonicalOutput10008 : ExponentCode := normalNode4511

theorem canonicalSound10008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10008.moment H = canonicalOutput10008.moment H :=
  canonical_of_padded canonicalInput10008 canonicalOutput10008 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10009 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput10009 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2086⟩

theorem canonicalSound10009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10009.moment H = canonicalOutput10009.moment H :=
  canonical_of_padded canonicalInput10009 canonicalOutput10009 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10010 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10010 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1745⟩

theorem canonicalSound10010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10010.moment H = canonicalOutput10010.moment H :=
  canonical_of_padded canonicalInput10010 canonicalOutput10010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10011 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput10011 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1784⟩

theorem canonicalSound10011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10011.moment H = canonicalOutput10011.moment H :=
  canonical_of_padded canonicalInput10011 canonicalOutput10011 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10012 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10012 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1820⟩

theorem canonicalSound10012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10012.moment H = canonicalOutput10012.moment H :=
  canonical_of_padded canonicalInput10012 canonicalOutput10012 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10013 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, 1, -2], ![2, 0, -1, -1]]⟩

def canonicalOutput10013 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node510⟩

theorem canonicalSound10013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10013.moment H = canonicalOutput10013.moment H :=
  canonical_of_padded canonicalInput10013 canonicalOutput10013 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation151, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10014 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10014 : ExponentCode := normalNode4534

theorem canonicalSound10014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10014.moment H = canonicalOutput10014.moment H :=
  canonical_of_padded canonicalInput10014 canonicalOutput10014 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10015 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, 2, -3], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10015 : ExponentCode := normalNode4543

theorem canonicalSound10015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10015.moment H = canonicalOutput10015.moment H :=
  canonical_of_padded canonicalInput10015 canonicalOutput10015 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10016 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, 2, -3], ![2, 0, -2, 0]]⟩

def canonicalOutput10016 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code895

theorem canonicalSound10016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10016.moment H = canonicalOutput10016.moment H :=
  canonical_of_padded canonicalInput10016 canonicalOutput10016 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10017 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![0, 1, 3, -4], ![1, 0, -2, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10017 : ExponentCode := normalNode4531

theorem canonicalSound10017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10017.moment H = canonicalOutput10017.moment H :=
  canonical_of_padded canonicalInput10017 canonicalOutput10017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10018 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 1, 1], ![1, 0, 2, -3], ![1, 1, -2, 0]]⟩

def canonicalOutput10018 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node617⟩

theorem canonicalSound10018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10018.moment H = canonicalOutput10018.moment H :=
  canonical_of_padded canonicalInput10018 canonicalOutput10018 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10019 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 0, -1, 1], ![1, 0, -2, 1], ![1, 1, 2, -4]]⟩

def canonicalOutput10019 : ExponentCode := normalNode4092

theorem canonicalSound10019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10019.moment H = canonicalOutput10019.moment H :=
  canonical_of_padded canonicalInput10019 canonicalOutput10019 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10020 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 1, -3]]⟩

def canonicalOutput10020 : ExponentCode := normalNode4088

theorem canonicalSound10020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10020.moment H = canonicalOutput10020.moment H :=
  canonical_of_padded canonicalInput10020 canonicalOutput10020 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10021 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 0, -1, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]⟩

def canonicalOutput10021 : ExponentCode := normalNode4084

theorem canonicalSound10021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10021.moment H = canonicalOutput10021.moment H :=
  canonical_of_padded canonicalInput10021 canonicalOutput10021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10022 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput10022 : ExponentCode := normalNode4058

theorem canonicalSound10022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10022.moment H = canonicalOutput10022.moment H :=
  canonical_of_padded canonicalInput10022 canonicalOutput10022 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10023 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput10023 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1848⟩

theorem canonicalSound10023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10023.moment H = canonicalOutput10023.moment H :=
  canonical_of_padded canonicalInput10023 canonicalOutput10023 (by decide) (by decide)
    ⟨false, true, canonicalPermutation3, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10024 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 0, 1, -1], ![1, 0, 0, -1], ![1, 1, -2, 0]]⟩

def canonicalOutput10024 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1838⟩

theorem canonicalSound10024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10024.moment H = canonicalOutput10024.moment H :=
  canonical_of_padded canonicalInput10024 canonicalOutput10024 (by decide) (by decide)
    ⟨false, true, canonicalPermutation0, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10025 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput10025 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2040⟩

theorem canonicalSound10025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10025.moment H = canonicalOutput10025.moment H :=
  canonical_of_padded canonicalInput10025 canonicalOutput10025 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10026 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 1, -2, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput10026 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node588⟩

theorem canonicalSound10026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10026.moment H = canonicalOutput10026.moment H :=
  canonical_of_padded canonicalInput10026 canonicalOutput10026 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10027 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10027 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1800⟩

theorem canonicalSound10027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10027.moment H = canonicalOutput10027.moment H :=
  canonical_of_padded canonicalInput10027 canonicalOutput10027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10028 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10028 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2050⟩

theorem canonicalSound10028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10028.moment H = canonicalOutput10028.moment H :=
  canonical_of_padded canonicalInput10028 canonicalOutput10028 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10029 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 1, 1, -2], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10029 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1846⟩

theorem canonicalSound10029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10029.moment H = canonicalOutput10029.moment H :=
  canonical_of_padded canonicalInput10029 canonicalOutput10029 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation164, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10030 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 1, 1, -2], ![2, 0, -2, 0]]⟩

def canonicalOutput10030 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node523⟩

theorem canonicalSound10030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10030.moment H = canonicalOutput10030.moment H :=
  canonical_of_padded canonicalInput10030 canonicalOutput10030 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10031 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![0, 2, 1, -3], ![1, -1, -1, 1], ![1, 0, -1, 0]]⟩

def canonicalOutput10031 : ExponentCode := normalNode2849

theorem canonicalSound10031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10031.moment H = canonicalOutput10031.moment H :=
  canonical_of_padded canonicalInput10031 canonicalOutput10031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput10032 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![1, 0, -2, 1], ![1, 1, 1, -3]]⟩

def canonicalOutput10032 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node612⟩

theorem canonicalSound10032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10032.moment H = canonicalOutput10032.moment H :=
  canonical_of_padded canonicalInput10032 canonicalOutput10032 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10033 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 2, 0], ![1, 0, 1, -2], ![1, 1, -2, 0]]⟩

def canonicalOutput10033 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node521⟩

theorem canonicalSound10033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10033.moment H = canonicalOutput10033.moment H :=
  canonical_of_padded canonicalInput10033 canonicalOutput10033 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation155, canonicalPermutation15⟩ (by decide +kernel) hH

def canonicalInput10034 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 3, -1], ![0, 0, -1, 1], ![1, 0, -1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput10034 : ExponentCode := normalNode3605

theorem canonicalSound10034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10034.moment H = canonicalOutput10034.moment H :=
  canonical_of_padded canonicalInput10034 canonicalOutput10034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10035 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 3, -1], ![0, 0, -1, 1], ![1, 0, 0, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput10035 : ExponentCode := normalNode3603

theorem canonicalSound10035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10035.moment H = canonicalOutput10035.moment H :=
  canonical_of_padded canonicalInput10035 canonicalOutput10035 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation171, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10036 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 3, -1], ![0, 1, -2, 1], ![1, 0, 0, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput10036 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1976⟩

theorem canonicalSound10036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10036.moment H = canonicalOutput10036.moment H :=
  canonical_of_padded canonicalInput10036 canonicalOutput10036 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation174, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10037 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 3, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput10037 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1635⟩

theorem canonicalSound10037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10037.moment H = canonicalOutput10037.moment H :=
  canonical_of_padded canonicalInput10037 canonicalOutput10037 (by decide) (by decide)
    ⟨false, false, canonicalPermutation24, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10038 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, -2, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput10038 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1982⟩

theorem canonicalSound10038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10038.moment H = canonicalOutput10038.moment H :=
  canonical_of_padded canonicalInput10038 canonicalOutput10038 (by decide) (by decide)
    ⟨false, false, canonicalPermutation37, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10039 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput10039 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1674⟩

theorem canonicalSound10039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10039.moment H = canonicalOutput10039.moment H :=
  canonical_of_padded canonicalInput10039 canonicalOutput10039 (by decide) (by decide)
    ⟨false, false, canonicalPermutation29, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput10040 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 3, -1], ![0, 1, 0, -1], ![2, 0, -2, 0]]⟩

def canonicalOutput10040 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1235⟩

theorem canonicalSound10040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10040.moment H = canonicalOutput10040.moment H :=
  canonical_of_padded canonicalInput10040 canonicalOutput10040 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10041 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 3, -1], ![0, 1, 1, -2], ![2, 0, -3, 1]]⟩

def canonicalOutput10041 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code777

theorem canonicalSound10041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10041.moment H = canonicalOutput10041.moment H :=
  canonical_of_padded canonicalInput10041 canonicalOutput10041 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput10042 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 3, -1], ![1, 0, -2, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput10042 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node598⟩

theorem canonicalSound10042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10042.moment H = canonicalOutput10042.moment H :=
  canonical_of_padded canonicalInput10042 canonicalOutput10042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput10043 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -2, 3, -1], ![1, 0, -1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput10043 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node943⟩

theorem canonicalSound10043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10043.moment H = canonicalOutput10043.moment H :=
  canonical_of_padded canonicalInput10043 canonicalOutput10043 (by decide) (by decide)
    ⟨true, false, canonicalPermutation7, OAI.MUB6.Certificate.PairSemantics.permutation164⟩ (by decide +kernel) hH

def canonicalInput10044 : ExponentCode := ⟨5, 4, ![![-2, 1, -1, 2], ![0, -1, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![2, -1, 2, -3]]⟩

def canonicalOutput10044 : ExponentCode := normalNode4838

theorem canonicalSound10044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10044.moment H = canonicalOutput10044.moment H :=
  canonical_of_padded canonicalInput10044 canonicalOutput10044 (by decide) (by decide)
    ⟨false, true, canonicalPermutation56, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput10045 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -2, 3], ![0, 0, 2, -2], ![2, 0, 1, -3]]⟩

def canonicalOutput10045 : ExponentCode := normalNode9971

theorem canonicalSound10045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10045.moment H = canonicalOutput10045.moment H :=
  canonical_of_padded canonicalInput10045 canonicalOutput10045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation159, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput10046 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -2, 3], ![0, 1, 0, -1], ![2, -1, 3, -4]]⟩

def canonicalOutput10046 : ExponentCode := normalNode9482

theorem canonicalSound10046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10046.moment H = canonicalOutput10046.moment H :=
  canonical_of_padded canonicalInput10046 canonicalOutput10046 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation158, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput10047 : ExponentCode := ⟨4, 4, ![![-2, 1, -1, 2], ![0, -1, -2, 3], ![0, 1, 1, -2], ![2, -1, 2, -3]]⟩

def canonicalOutput10047 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1080

theorem canonicalSound10047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput10047.moment H = canonicalOutput10047.moment H :=
  canonical_of_padded canonicalInput10047 canonicalOutput10047 (by decide) (by decide)
    ⟨false, true, canonicalPermutation9, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
