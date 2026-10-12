import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes47
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes48
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes49
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes50
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes53
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput28992 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 3, -1], ![2, -2, -2, 2]]⟩

def canonicalOutput28992 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3131⟩

theorem canonicalSound28992 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28992.moment H = canonicalOutput28992.moment H :=
  canonical_of_padded canonicalInput28992 canonicalOutput28992 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28993 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, -1, 3], ![1, -1, 2, -2]]⟩

def canonicalOutput28993 : ExponentCode := normalNode7948

theorem canonicalSound28993 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28993.moment H = canonicalOutput28993.moment H :=
  canonical_of_padded canonicalInput28993 canonicalOutput28993 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28994 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, 0, 3, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput28994 : ExponentCode := normalNode9949

theorem canonicalSound28994 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28994.moment H = canonicalOutput28994.moment H :=
  canonical_of_padded canonicalInput28994 canonicalOutput28994 (by decide) (by decide)
    ⟨false, false, canonicalPermutation161, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput28995 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![2, 0, 1, -3], ![-2, -2, 0, 4]]⟩

def canonicalOutput28995 : ExponentCode := normalNode408

theorem canonicalSound28995 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28995.moment H = canonicalOutput28995.moment H :=
  canonical_of_padded canonicalInput28995 canonicalOutput28995 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28996 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 2, -1, -1], ![2, -2, 0, 0], ![-2, -1, 2, 1]]⟩

def canonicalOutput28996 : ExponentCode := normalNode3926

theorem canonicalSound28996 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28996.moment H = canonicalOutput28996.moment H :=
  canonical_of_padded canonicalInput28996 canonicalOutput28996 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation264, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28997 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -2, 1, 0], ![1, -1, 1, -1], ![-2, 2, -1, 1]]⟩

def canonicalOutput28997 : ExponentCode := normalNode5090

theorem canonicalSound28997 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28997.moment H = canonicalOutput28997.moment H :=
  canonical_of_padded canonicalInput28997 canonicalOutput28997 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation338, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput28998 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, -1, 0, 3], ![1, 1, 2, -4]]⟩

def canonicalOutput28998 : ExponentCode := normalNode1950

theorem canonicalSound28998 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28998.moment H = canonicalOutput28998.moment H :=
  canonical_of_padded canonicalInput28998 canonicalOutput28998 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput28999 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![-2, 1, -1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput28999 : ExponentCode := normalNode5200

theorem canonicalSound28999 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput28999.moment H = canonicalOutput28999.moment H :=
  canonical_of_padded canonicalInput28999 canonicalOutput28999 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29000 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, -1, 4], ![1, 1, 2, -4]]⟩

def canonicalOutput29000 : ExponentCode := normalNode1341

theorem canonicalSound29000 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29000.moment H = canonicalOutput29000.moment H :=
  canonical_of_padded canonicalInput29000 canonicalOutput29000 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29001 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -2, 3], ![1, -1, 3, -3]]⟩

def canonicalOutput29001 : ExponentCode := normalNode4933

theorem canonicalSound29001 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29001.moment H = canonicalOutput29001.moment H :=
  canonical_of_padded canonicalInput29001 canonicalOutput29001 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29002 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29002 : ExponentCode := normalNode5201

theorem canonicalSound29002 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29002.moment H = canonicalOutput29002.moment H :=
  canonical_of_padded canonicalInput29002 canonicalOutput29002 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29003 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, 2, -1, 1], ![1, -2, 2, -1]]⟩

def canonicalOutput29003 : ExponentCode := normalNode5091

theorem canonicalSound29003 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29003.moment H = canonicalOutput29003.moment H :=
  canonical_of_padded canonicalInput29003 canonicalOutput29003 (by decide) (by decide)
    ⟨false, false, canonicalPermutation164, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29004 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-1, -1, -1, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput29004 : ExponentCode := normalNode7949

theorem canonicalSound29004 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29004.moment H = canonicalOutput29004.moment H :=
  canonical_of_padded canonicalInput29004 canonicalOutput29004 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29005 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, -2, 3], ![-1, 1, 3, -3]]⟩

def canonicalOutput29005 : ExponentCode := normalNode10984

theorem canonicalSound29005 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29005.moment H = canonicalOutput29005.moment H :=
  canonical_of_padded canonicalInput29005 canonicalOutput29005 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29006 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![0, -1, 0, 1], ![-1, 1, 1, -1]]⟩

def canonicalOutput29006 : ExponentCode := normalNode9410

theorem canonicalSound29006 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29006.moment H = canonicalOutput29006.moment H :=
  canonical_of_padded canonicalInput29006 canonicalOutput29006 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation341, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29007 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, -2, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput29007 : ExponentCode := normalNode4937

theorem canonicalSound29007 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29007.moment H = canonicalOutput29007.moment H :=
  canonical_of_padded canonicalInput29007 canonicalOutput29007 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation331, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29008 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![-2, -1, -1, 4], ![1, 1, 1, -3]]⟩

def canonicalOutput29008 : ExponentCode := normalNode1342

theorem canonicalSound29008 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29008.moment H = canonicalOutput29008.moment H :=
  canonical_of_padded canonicalInput29008 canonicalOutput29008 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29009 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![-2, -1, 0, 3], ![1, 1, 0, -2]]⟩

def canonicalOutput29009 : ExponentCode := normalNode1951

theorem canonicalSound29009 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29009.moment H = canonicalOutput29009.moment H :=
  canonical_of_padded canonicalInput29009 canonicalOutput29009 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29010 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, -1, -1], ![-2, -1, 1, 2]]⟩

def canonicalOutput29010 : ExponentCode := normalNode2644

theorem canonicalSound29010 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29010.moment H = canonicalOutput29010.moment H :=
  canonical_of_padded canonicalInput29010 canonicalOutput29010 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29011 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 1, 0, -2], ![-2, -1, 0, 3]]⟩

def canonicalOutput29011 : ExponentCode := normalNode1951

theorem canonicalSound29011 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29011.moment H = canonicalOutput29011.moment H :=
  canonical_of_padded canonicalInput29011 canonicalOutput29011 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29012 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -2, 1], ![1, 1, 1, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput29012 : ExponentCode := normalNode844

theorem canonicalSound29012 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29012.moment H = canonicalOutput29012.moment H :=
  canonical_of_padded canonicalInput29012 canonicalOutput29012 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29013 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, -2, 0, 4], ![1, 1, 2, -4]]⟩

def canonicalOutput29013 : ExponentCode := normalNode409

theorem canonicalSound29013 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29013.moment H = canonicalOutput29013.moment H :=
  canonical_of_padded canonicalInput29013 canonicalOutput29013 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29014 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-2, 2, 1, -1], ![1, -3, 1, 1]]⟩

def canonicalOutput29014 : ExponentCode := normalNode2444

theorem canonicalSound29014 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29014.moment H = canonicalOutput29014.moment H :=
  canonical_of_padded canonicalInput29014 canonicalOutput29014 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29015 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![-1, -2, 0, 3], ![0, 1, 2, -3]]⟩

def canonicalOutput29015 : ExponentCode := normalNode6744

theorem canonicalSound29015 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29015.moment H = canonicalOutput29015.moment H :=
  canonical_of_padded canonicalInput29015 canonicalOutput29015 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29016 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -2, -1, 2], ![-2, 1, 3, -2]]⟩

def canonicalOutput29016 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3235⟩

theorem canonicalSound29016 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29016.moment H = canonicalOutput29016.moment H :=
  canonical_of_padded canonicalInput29016 canonicalOutput29016 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation332, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29017 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput29017 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3032⟩

theorem canonicalSound29017 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29017.moment H = canonicalOutput29017.moment H :=
  canonical_of_padded canonicalInput29017 canonicalOutput29017 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation337, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29018 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 0, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput29018 : ExponentCode := normalNode847

theorem canonicalSound29018 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29018.moment H = canonicalOutput29018.moment H :=
  canonical_of_padded canonicalInput29018 canonicalOutput29018 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29019 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput29019 : ExponentCode := normalNode596

theorem canonicalSound29019 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29019.moment H = canonicalOutput29019.moment H :=
  canonical_of_padded canonicalInput29019 canonicalOutput29019 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29020 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 1, -2, 3], ![1, -2, 3, -2]]⟩

def canonicalOutput29020 : ExponentCode := normalNode4932

theorem canonicalSound29020 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29020.moment H = canonicalOutput29020.moment H :=
  canonical_of_padded canonicalInput29020 canonicalOutput29020 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29021 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -3, 2, 0]]⟩

def canonicalOutput29021 : ExponentCode := normalNode5089

theorem canonicalSound29021 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29021.moment H = canonicalOutput29021.moment H :=
  canonical_of_padded canonicalInput29021 canonicalOutput29021 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation280, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput29022 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput29022 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3161⟩

theorem canonicalSound29022 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29022.moment H = canonicalOutput29022.moment H :=
  canonical_of_padded canonicalInput29022 canonicalOutput29022 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29023 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-2, 2, 1, -1], ![1, -3, 0, 2]]⟩

def canonicalOutput29023 : ExponentCode := normalNode5041

theorem canonicalSound29023 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29023.moment H = canonicalOutput29023.moment H :=
  canonical_of_padded canonicalInput29023 canonicalOutput29023 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation283, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput29024 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![-1, 1, -2, 2], ![0, -2, 3, -1]]⟩

def canonicalOutput29024 : ExponentCode := normalNode10845

theorem canonicalSound29024 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29024.moment H = canonicalOutput29024.moment H :=
  canonical_of_padded canonicalInput29024 canonicalOutput29024 (by decide) (by decide)
    ⟨false, true, canonicalPermutation281, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29025 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput29025 : ExponentCode := normalNode848

theorem canonicalSound29025 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29025.moment H = canonicalOutput29025.moment H :=
  canonical_of_padded canonicalInput29025 canonicalOutput29025 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29026 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, 0, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput29026 : ExponentCode := normalNode597

theorem canonicalSound29026 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29026.moment H = canonicalOutput29026.moment H :=
  canonical_of_padded canonicalInput29026 canonicalOutput29026 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29027 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![-2, 1, -2, 3], ![1, -2, 2, -1]]⟩

def canonicalOutput29027 : ExponentCode := normalNode4931

theorem canonicalSound29027 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29027.moment H = canonicalOutput29027.moment H :=
  canonical_of_padded canonicalInput29027 canonicalOutput29027 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29028 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![-2, 1, -1, 2], ![1, -2, 1, 0]]⟩

def canonicalOutput29028 : ExponentCode := normalNode5199

theorem canonicalSound29028 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29028.moment H = canonicalOutput29028.moment H :=
  canonical_of_padded canonicalInput29028 canonicalOutput29028 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29029 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -2, 0], ![-2, -2, 2, 2]]⟩

def canonicalOutput29029 : ExponentCode := normalNode845

theorem canonicalSound29029 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29029.moment H = canonicalOutput29029.moment H :=
  canonical_of_padded canonicalInput29029 canonicalOutput29029 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29030 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 1, -2, 0], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput29030 : ExponentCode := normalNode2962

theorem canonicalSound29030 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29030.moment H = canonicalOutput29030.moment H :=
  canonical_of_padded canonicalInput29030 canonicalOutput29030 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation278, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29031 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, -1, 0, 3], ![1, 1, -2, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput29031 : ExponentCode := normalNode1954

theorem canonicalSound29031 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29031.moment H = canonicalOutput29031.moment H :=
  canonical_of_padded canonicalInput29031 canonicalOutput29031 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29032 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![0, 1, 1, -2], ![2, -2, 0, 0]]⟩

def canonicalOutput29032 : ExponentCode := normalNode1715

theorem canonicalSound29032 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29032.moment H = canonicalOutput29032.moment H :=
  canonical_of_padded canonicalInput29032 canonicalOutput29032 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29033 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![1, -2, 1, 0], ![1, 1, 0, -2]]⟩

def canonicalOutput29033 : ExponentCode := normalNode1716

theorem canonicalSound29033 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29033.moment H = canonicalOutput29033.moment H :=
  canonical_of_padded canonicalInput29033 canonicalOutput29033 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29034 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, -1, 3], ![1, 1, -1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput29034 : ExponentCode := normalNode3568

theorem canonicalSound29034 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29034.moment H = canonicalOutput29034.moment H :=
  canonical_of_padded canonicalInput29034 canonicalOutput29034 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29035 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -2, 1, 1], ![2, 1, -1, -2]]⟩

def canonicalOutput29035 : ExponentCode := normalNode2353

theorem canonicalSound29035 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29035.moment H = canonicalOutput29035.moment H :=
  canonical_of_padded canonicalInput29035 canonicalOutput29035 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29036 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, 1, 0, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput29036 : ExponentCode := ⟨6, 4, OAI.MUB6.Certificate.PairSemantics.node3425⟩

theorem canonicalSound29036 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29036.moment H = canonicalOutput29036.moment H :=
  canonical_of_padded canonicalInput29036 canonicalOutput29036 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29037 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, 1, 1, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput29037 : ExponentCode := normalNode2927

theorem canonicalSound29037 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29037.moment H = canonicalOutput29037.moment H :=
  canonical_of_padded canonicalInput29037 canonicalOutput29037 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29038 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, -2, 0, 1], ![1, 1, 0, -2]]⟩

def canonicalOutput29038 : ExponentCode := normalNode10518

theorem canonicalSound29038 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29038.moment H = canonicalOutput29038.moment H :=
  canonical_of_padded canonicalInput29038 canonicalOutput29038 (by decide) (by decide)
    ⟨false, false, canonicalPermutation28, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput29039 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, -2, 1, 0], ![1, 1, -1, -1]]⟩

def canonicalOutput29039 : ExponentCode := normalNode3883

theorem canonicalSound29039 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29039.moment H = canonicalOutput29039.moment H :=
  canonical_of_padded canonicalInput29039 canonicalOutput29039 (by decide) (by decide)
    ⟨false, false, canonicalPermutation163, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29040 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, 0, -2, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput29040 : ExponentCode := normalNode10651

theorem canonicalSound29040 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29040.moment H = canonicalOutput29040.moment H :=
  canonical_of_padded canonicalInput29040 canonicalOutput29040 (by decide) (by decide)
    ⟨false, true, canonicalPermutation362, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput29041 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, 1, -2, 0], ![1, -2, 2, -1]]⟩

def canonicalOutput29041 : ExponentCode := normalNode4040

theorem canonicalSound29041 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29041.moment H = canonicalOutput29041.moment H :=
  canonical_of_padded canonicalInput29041 canonicalOutput29041 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29042 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![1, 1, -1, -1], ![1, -2, 1, 0]]⟩

def canonicalOutput29042 : ExponentCode := normalNode3883

theorem canonicalSound29042 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29042.moment H = canonicalOutput29042.moment H :=
  canonical_of_padded canonicalInput29042 canonicalOutput29042 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation243, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29043 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 0, 2], ![2, 1, -1, -2]]⟩

def canonicalOutput29043 : ExponentCode := normalNode2354

theorem canonicalSound29043 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29043.moment H = canonicalOutput29043.moment H :=
  canonical_of_padded canonicalInput29043 canonicalOutput29043 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29044 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 1, -2, -1]]⟩

def canonicalOutput29044 : ExponentCode := normalNode2429

theorem canonicalSound29044 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29044.moment H = canonicalOutput29044.moment H :=
  canonical_of_padded canonicalInput29044 canonicalOutput29044 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation356, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29045 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -2, -1, 2], ![1, 1, 0, -2]]⟩

def canonicalOutput29045 : ExponentCode := normalNode2389

theorem canonicalSound29045 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29045.moment H = canonicalOutput29045.moment H :=
  canonical_of_padded canonicalInput29045 canonicalOutput29045 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation270, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29046 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -2, 0, 1], ![1, 1, -1, -1]]⟩

def canonicalOutput29046 : ExponentCode := normalNode4377

theorem canonicalSound29046 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29046.moment H = canonicalOutput29046.moment H :=
  canonical_of_padded canonicalInput29046 canonicalOutput29046 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation271, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29047 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, -2, 1, 0], ![1, 1, -2, 0]]⟩

def canonicalOutput29047 : ExponentCode := normalNode4376

theorem canonicalSound29047 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29047.moment H = canonicalOutput29047.moment H :=
  canonical_of_padded canonicalInput29047 canonicalOutput29047 (by decide) (by decide)
    ⟨false, false, canonicalPermutation242, OAI.MUB6.Certificate.PairSemantics.permutation160⟩ (by decide +kernel) hH

def canonicalInput29048 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![1, 1, 0, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput29048 : ExponentCode := normalNode2389

theorem canonicalSound29048 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29048.moment H = canonicalOutput29048.moment H :=
  canonical_of_padded canonicalInput29048 canonicalOutput29048 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation320, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput29049 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![1, -2, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput29049 : ExponentCode := normalNode4039

theorem canonicalSound29049 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29049.moment H = canonicalOutput29049.moment H :=
  canonical_of_padded canonicalInput29049 canonicalOutput29049 (by decide) (by decide)
    ⟨false, false, canonicalPermutation135, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29050 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![1, -2, 0, 1], ![1, 1, -2, 0]]⟩

def canonicalOutput29050 : ExponentCode := normalNode3861

theorem canonicalSound29050 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29050.moment H = canonicalOutput29050.moment H :=
  canonical_of_padded canonicalInput29050 canonicalOutput29050 (by decide) (by decide)
    ⟨false, false, canonicalPermutation168, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput29051 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![1, 1, -1, -1], ![1, -2, -1, 2]]⟩

def canonicalOutput29051 : ExponentCode := normalNode4039

theorem canonicalSound29051 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29051.moment H = canonicalOutput29051.moment H :=
  canonical_of_padded canonicalInput29051 canonicalOutput29051 (by decide) (by decide)
    ⟨false, false, canonicalPermutation200, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput29052 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 0, 2, 0], ![1, 1, 0, -2], ![1, -2, -2, 3]]⟩

def canonicalOutput29052 : ExponentCode := normalNode4654

theorem canonicalSound29052 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29052.moment H = canonicalOutput29052.moment H :=
  canonical_of_padded canonicalInput29052 canonicalOutput29052 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation242, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput29053 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -2, 1, 1], ![2, 0, 0, -2]]⟩

def canonicalOutput29053 : ExponentCode := normalNode2366

theorem canonicalSound29053 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29053.moment H = canonicalOutput29053.moment H :=
  canonical_of_padded canonicalInput29053 canonicalOutput29053 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation244, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput29054 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -2, 2, 0], ![2, 0, -1, -1]]⟩

def canonicalOutput29054 : ExponentCode := normalNode4042

theorem canonicalSound29054 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29054.moment H = canonicalOutput29054.moment H :=
  canonical_of_padded canonicalInput29054 canonicalOutput29054 (by decide) (by decide)
    ⟨false, false, canonicalPermutation288, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput29055 : ExponentCode := ⟨6, 4, ![![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![-2, 1, -1, 2], ![0, -1, 2, -1], ![2, -1, -1, 0]]⟩

def canonicalOutput29055 : ExponentCode := normalNode5122

theorem canonicalSound29055 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput29055.moment H = canonicalOutput29055.moment H :=
  canonical_of_padded canonicalInput29055 canonicalOutput29055 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
