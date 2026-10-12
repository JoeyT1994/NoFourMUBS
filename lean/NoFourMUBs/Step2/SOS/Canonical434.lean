import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes002
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes006
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes008
import NoFourMUBs.Step2.SOS.NormalizationNodes009
import NoFourMUBs.Step2.SOS.NormalizationNodes010
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes014
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes016
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes019
import NoFourMUBs.Step2.SOS.NormalizationNodes020
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput27776 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 0, -2], ![-2, -2, 2, 2]]⟩

def canonicalOutput27776 : ExponentCode := normalNode796

theorem canonicalSound27776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27776.moment H = canonicalOutput27776.moment H :=
  canonical_of_padded canonicalInput27776 canonicalOutput27776 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27777 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3], ![-2, -2, 1, 3]]⟩

def canonicalOutput27777 : ExponentCode := normalNode566

theorem canonicalSound27777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27777.moment H = canonicalOutput27777.moment H :=
  canonical_of_padded canonicalInput27777 canonicalOutput27777 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27778 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![-2, 2, -1, 1], ![1, -3, 2, 0]]⟩

def canonicalOutput27778 : ExponentCode := normalNode2256

theorem canonicalSound27778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27778.moment H = canonicalOutput27778.moment H :=
  canonical_of_padded canonicalInput27778 canonicalOutput27778 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation264, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27779 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, -1, -1], ![-2, -2, 2, 2]]⟩

def canonicalOutput27779 : ExponentCode := normalNode798

theorem canonicalSound27779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27779.moment H = canonicalOutput27779.moment H :=
  canonical_of_padded canonicalInput27779 canonicalOutput27779 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27780 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 1, 0, -2], ![-2, -2, 1, 3]]⟩

def canonicalOutput27780 : ExponentCode := normalNode568

theorem canonicalSound27780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27780.moment H = canonicalOutput27780.moment H :=
  canonical_of_padded canonicalInput27780 canonicalOutput27780 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27781 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2], ![1, 1, -2, 0], ![-2, -2, 2, 2]]⟩

def canonicalOutput27781 : ExponentCode := normalNode799

theorem canonicalSound27781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27781.moment H = canonicalOutput27781.moment H :=
  canonical_of_padded canonicalInput27781 canonicalOutput27781 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27782 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, -2, 0], ![-2, -1, 1, 2], ![1, -1, 2, -2]]⟩

def canonicalOutput27782 : ExponentCode := normalNode2590

theorem canonicalSound27782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27782.moment H = canonicalOutput27782.moment H :=
  canonical_of_padded canonicalInput27782 canonicalOutput27782 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27783 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 2, 0, -2], ![0, -2, 1, 1]]⟩

def canonicalOutput27783 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node203⟩

theorem canonicalSound27783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27783.moment H = canonicalOutput27783.moment H :=
  canonical_of_padded canonicalInput27783 canonicalOutput27783 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27784 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![0, 2, 1, -3], ![0, -2, 0, 2]]⟩

def canonicalOutput27784 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node169⟩

theorem canonicalSound27784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27784.moment H = canonicalOutput27784.moment H :=
  canonical_of_padded canonicalInput27784 canonicalOutput27784 (by decide) (by decide)
    ⟨false, true, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27785 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput27785 : ExponentCode := normalNode2663

theorem canonicalSound27785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27785.moment H = canonicalOutput27785.moment H :=
  canonical_of_padded canonicalInput27785 canonicalOutput27785 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation333, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27786 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![0, 2, 0, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput27786 : ExponentCode := normalNode3735

theorem canonicalSound27786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27786.moment H = canonicalOutput27786.moment H :=
  canonical_of_padded canonicalInput27786 canonicalOutput27786 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation179, OAI.MUB6.Certificate.PairSemantics.permutation162⟩ (by decide +kernel) hH

def canonicalInput27787 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![0, 2, -1, -1], ![1, -1, 1, -1]]⟩

def canonicalOutput27787 : ExponentCode := normalNode4427

theorem canonicalSound27787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27787.moment H = canonicalOutput27787.moment H :=
  canonical_of_padded canonicalInput27787 canonicalOutput27787 (by decide) (by decide)
    ⟨false, false, canonicalPermutation287, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27788 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-2, 1, 1, 0], ![0, -2, 1, 1], ![1, 2, -1, -2]]⟩

def canonicalOutput27788 : ExponentCode := normalNode4384

theorem canonicalSound27788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27788.moment H = canonicalOutput27788.moment H :=
  canonical_of_padded canonicalInput27788 canonicalOutput27788 (by decide) (by decide)
    ⟨false, false, canonicalPermutation343, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27789 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![1, 2, -1, -2]]⟩

def canonicalOutput27789 : ExponentCode := normalNode2657

theorem canonicalSound27789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27789.moment H = canonicalOutput27789.moment H :=
  canonical_of_padded canonicalInput27789 canonicalOutput27789 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27790 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 0, 2], ![-1, 1, 1, -1], ![1, 1, 0, -2]]⟩

def canonicalOutput27790 : ExponentCode := normalNode3826

theorem canonicalSound27790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27790.moment H = canonicalOutput27790.moment H :=
  canonical_of_padded canonicalInput27790 canonicalOutput27790 (by decide) (by decide)
    ⟨false, false, canonicalPermutation79, canonicalPermutation6⟩ (by decide +kernel) hH

def canonicalInput27791 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![-1, 1, 1, -1], ![1, 1, -1, -1]]⟩

def canonicalOutput27791 : ExponentCode := normalNode9319

theorem canonicalSound27791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27791.moment H = canonicalOutput27791.moment H :=
  canonical_of_padded canonicalInput27791 canonicalOutput27791 (by decide) (by decide)
    ⟨false, false, canonicalPermutation285, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27792 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![-1, -1, 1, 1], ![1, -1, 1, -1], ![-1, 3, -1, -1]]⟩

def canonicalOutput27792 : ExponentCode := normalNode7806

theorem canonicalSound27792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27792.moment H = canonicalOutput27792.moment H :=
  canonical_of_padded canonicalInput27792 canonicalOutput27792 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27793 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -2, 1, 1], ![1, 1, -1, -1], ![-2, 2, 1, -1]]⟩

def canonicalOutput27793 : ExponentCode := normalNode2509

theorem canonicalSound27793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27793.moment H = canonicalOutput27793.moment H :=
  canonical_of_padded canonicalInput27793 canonicalOutput27793 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation344, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27794 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, -1, 2], ![1, 1, 0, -2], ![-2, 1, 2, -1]]⟩

def canonicalOutput27794 : ExponentCode := normalNode5677

theorem canonicalSound27794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27794.moment H = canonicalOutput27794.moment H :=
  canonical_of_padded canonicalInput27794 canonicalOutput27794 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27795 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, -1, 2, -1], ![1, 1, 0, -2], ![-2, 1, -1, 2]]⟩

def canonicalOutput27795 : ExponentCode := normalNode5120

theorem canonicalSound27795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27795.moment H = canonicalOutput27795.moment H :=
  canonical_of_padded canonicalInput27795 canonicalOutput27795 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27796 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![0, 2, -1, -1], ![1, -2, 0, 1], ![-2, 1, 2, -1]]⟩

def canonicalOutput27796 : ExponentCode := normalNode2349

theorem canonicalSound27796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27796.moment H = canonicalOutput27796.moment H :=
  canonical_of_padded canonicalInput27796 canonicalOutput27796 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27797 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, -1, 2, 1], ![0, 3, -1, -2]]⟩

def canonicalOutput27797 : ExponentCode := normalNode2665

theorem canonicalSound27797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27797.moment H = canonicalOutput27797.moment H :=
  canonical_of_padded canonicalInput27797 canonicalOutput27797 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation279, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27798 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-2, 1, -1, 2], ![0, 1, 2, -3]]⟩

def canonicalOutput27798 : ExponentCode := normalNode5162

theorem canonicalSound27798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27798.moment H = canonicalOutput27798.moment H :=
  canonical_of_padded canonicalInput27798 canonicalOutput27798 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation262, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27799 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0], ![-1, 1, -1, 1], ![-1, 1, 2, -2]]⟩

def canonicalOutput27799 : ExponentCode := normalNode11013

theorem canonicalSound27799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27799.moment H = canonicalOutput27799.moment H :=
  canonical_of_padded canonicalInput27799 canonicalOutput27799 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation398, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27800 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, -1, 0], ![-1, -2, 2, 1], ![-1, 3, 0, -2]]⟩

def canonicalOutput27800 : ExponentCode := normalNode6681

theorem canonicalSound27800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27800.moment H = canonicalOutput27800.moment H :=
  canonical_of_padded canonicalInput27800 canonicalOutput27800 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation399, canonicalPermutation1⟩ (by decide +kernel) hH

def canonicalInput27801 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-2, -1, 0, 3], ![0, 2, 1, -3]]⟩

def canonicalOutput27801 : ExponentCode := normalNode1711

theorem canonicalSound27801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27801.moment H = canonicalOutput27801.moment H :=
  canonical_of_padded canonicalInput27801 canonicalOutput27801 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation343, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput27802 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![-1, -2, 2, 1], ![-1, 3, -1, -1]]⟩

def canonicalOutput27802 : ExponentCode := normalNode6923

theorem canonicalSound27802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27802.moment H = canonicalOutput27802.moment H :=
  canonical_of_padded canonicalInput27802 canonicalOutput27802 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation298, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27803 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, -1, 2, -1], ![-2, 2, -1, 1]]⟩

def canonicalOutput27803 : ExponentCode := normalNode5871

theorem canonicalSound27803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27803.moment H = canonicalOutput27803.moment H :=
  canonical_of_padded canonicalInput27803 canonicalOutput27803 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput27804 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 0, 0, -1], ![0, 2, -1, -1], ![-2, -1, 2, 1]]⟩

def canonicalOutput27804 : ExponentCode := normalNode2661

theorem canonicalSound27804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27804.moment H = canonicalOutput27804.moment H :=
  canonical_of_padded canonicalInput27804 canonicalOutput27804 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation335, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27805 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 1, 0, 1], ![0, 2, -1, -1], ![1, -3, 2, 0]]⟩

def canonicalOutput27805 : ExponentCode := normalNode4173

theorem canonicalSound27805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27805.moment H = canonicalOutput27805.moment H :=
  canonical_of_padded canonicalInput27805 canonicalOutput27805 (by decide) (by decide)
    ⟨false, false, canonicalPermutation291, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27806 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-2, 2, 0, 0], ![1, 1, -1, -1], ![0, -3, 2, 1]]⟩

def canonicalOutput27806 : ExponentCode := normalNode3811

theorem canonicalSound27806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27806.moment H = canonicalOutput27806.moment H :=
  canonical_of_padded canonicalInput27806 canonicalOutput27806 (by decide) (by decide)
    ⟨false, false, canonicalPermutation320, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27807 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, -1, 1, 1], ![1, -2, 1, 0], ![-1, 3, -1, -1]]⟩

def canonicalOutput27807 : ExponentCode := normalNode7805

theorem canonicalSound27807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27807.moment H = canonicalOutput27807.moment H :=
  canonical_of_padded canonicalInput27807 canonicalOutput27807 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation373, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27808 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![-1, 1, 1, -1], ![-1, 2, -1, 0], ![1, -3, 1, 1]]⟩

def canonicalOutput27808 : ExponentCode := normalNode7713

theorem canonicalSound27808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27808.moment H = canonicalOutput27808.moment H :=
  canonical_of_padded canonicalInput27808 canonicalOutput27808 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27809 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 0, 1, -1], ![1, 0, 0, -1], ![0, -2, 1, 1], ![1, -1, 1, -1], ![-2, 3, -1, 0]]⟩

def canonicalOutput27809 : ExponentCode := normalNode1647

theorem canonicalSound27809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27809.moment H = canonicalOutput27809.moment H :=
  canonical_of_padded canonicalInput27809 canonicalOutput27809 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation310, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27810 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 2, -2], ![-1, 1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput27810 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1357⟩

theorem canonicalSound27810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27810.moment H = canonicalOutput27810.moment H :=
  canonical_of_padded canonicalInput27810 canonicalOutput27810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27811 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 2, -2], ![-1, 2, -1, 0], ![1, -2, 1, 0]]⟩

def canonicalOutput27811 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1304⟩

theorem canonicalSound27811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27811.moment H = canonicalOutput27811.moment H :=
  canonical_of_padded canonicalInput27811 canonicalOutput27811 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27812 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 2, -2], ![-1, 2, 1, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput27812 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1377⟩

theorem canonicalSound27812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27812.moment H = canonicalOutput27812.moment H :=
  canonical_of_padded canonicalInput27812 canonicalOutput27812 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27813 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![0, -1, 0, 1]]⟩

def canonicalOutput27813 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node291⟩

theorem canonicalSound27813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27813.moment H = canonicalOutput27813.moment H :=
  canonical_of_padded canonicalInput27813 canonicalOutput27813 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27814 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 2, -2], ![0, 1, 1, -2], ![0, -1, -1, 2]]⟩

def canonicalOutput27814 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node279⟩

theorem canonicalSound27814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27814.moment H = canonicalOutput27814.moment H :=
  canonical_of_padded canonicalInput27814 canonicalOutput27814 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27815 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 2, -2], ![0, 2, -1, -1], ![0, -2, 1, 1]]⟩

def canonicalOutput27815 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node224⟩

theorem canonicalSound27815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27815.moment H = canonicalOutput27815.moment H :=
  canonical_of_padded canonicalInput27815 canonicalOutput27815 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27816 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 2, -2], ![0, 2, 0, -2], ![0, -2, 0, 2]]⟩

def canonicalOutput27816 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node197⟩

theorem canonicalSound27816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27816.moment H = canonicalOutput27816.moment H :=
  canonical_of_padded canonicalInput27816 canonicalOutput27816 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27817 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 3, -3], ![-1, 2, -1, 0], ![1, -2, 0, 1]]⟩

def canonicalOutput27817 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1374⟩

theorem canonicalSound27817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27817.moment H = canonicalOutput27817.moment H :=
  canonical_of_padded canonicalInput27817 canonicalOutput27817 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27818 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 0, 3, -3], ![0, 2, -1, -1], ![0, -2, 0, 2]]⟩

def canonicalOutput27818 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩

theorem canonicalSound27818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27818.moment H = canonicalOutput27818.moment H :=
  canonical_of_padded canonicalInput27818 canonicalOutput27818 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27819 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![-1, 1, 0, 0], ![1, -2, 3, -2]]⟩

def canonicalOutput27819 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1032⟩

theorem canonicalSound27819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27819.moment H = canonicalOutput27819.moment H :=
  canonical_of_padded canonicalInput27819 canonicalOutput27819 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput27820 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![-1, 1, 1, -1], ![1, -2, 2, -1]]⟩

def canonicalOutput27820 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node837⟩

theorem canonicalSound27820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27820.moment H = canonicalOutput27820.moment H :=
  canonical_of_padded canonicalInput27820 canonicalOutput27820 (by decide) (by decide)
    ⟨true, false, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput27821 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![-1, 1, 2, -2], ![1, -2, 1, 0]]⟩

def canonicalOutput27821 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node840⟩

theorem canonicalSound27821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27821.moment H = canonicalOutput27821.moment H :=
  canonical_of_padded canonicalInput27821 canonicalOutput27821 (by decide) (by decide)
    ⟨false, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27822 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 0, 3, -4]]⟩

def canonicalOutput27822 : ExponentCode := normalNode2597

theorem canonicalSound27822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27822.moment H = canonicalOutput27822.moment H :=
  canonical_of_padded canonicalInput27822 canonicalOutput27822 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27823 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![0, -1, 2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput27823 : ExponentCode := normalNode3971

theorem canonicalSound27823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27823.moment H = canonicalOutput27823.moment H :=
  canonical_of_padded canonicalInput27823 canonicalOutput27823 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation248, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27824 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 0, 2], ![2, -1, 0, -1], ![0, -1, 3, -2]]⟩

def canonicalOutput27824 : ExponentCode := normalNode3996

theorem canonicalSound27824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27824.moment H = canonicalOutput27824.moment H :=
  canonical_of_padded canonicalInput27824 canonicalOutput27824 (by decide) (by decide)
    ⟨false, false, canonicalPermutation142, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27825 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 0, 1, 1], ![0, -2, 1, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput27825 : ExponentCode := normalNode3412

theorem canonicalSound27825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27825.moment H = canonicalOutput27825.moment H :=
  canonical_of_padded canonicalInput27825 canonicalOutput27825 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27826 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, -1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput27826 : ExponentCode := normalNode4144

theorem canonicalSound27826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27826.moment H = canonicalOutput27826.moment H :=
  canonical_of_padded canonicalInput27826 canonicalOutput27826 (by decide) (by decide)
    ⟨false, true, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation154⟩ (by decide +kernel) hH

def canonicalInput27827 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-2, 1, 0, 1], ![2, 0, 0, -2], ![0, -3, 3, 0]]⟩

def canonicalOutput27827 : ExponentCode := normalNode3723

theorem canonicalSound27827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27827.moment H = canonicalOutput27827.moment H :=
  canonical_of_padded canonicalInput27827 canonicalOutput27827 (by decide) (by decide)
    ⟨false, true, canonicalPermutation66, OAI.MUB6.Certificate.PairSemantics.permutation153⟩ (by decide +kernel) hH

def canonicalInput27828 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![2, -1, 1, -2]]⟩

def canonicalOutput27828 : ExponentCode := normalNode5038

theorem canonicalSound27828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27828.moment H = canonicalOutput27828.moment H :=
  canonical_of_padded canonicalInput27828 canonicalOutput27828 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation358, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27829 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, -1, 0, -1], ![-1, 0, 3, -2]]⟩

def canonicalOutput27829 : ExponentCode := normalNode5315

theorem canonicalSound27829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27829.moment H = canonicalOutput27829.moment H :=
  canonical_of_padded canonicalInput27829 canonicalOutput27829 (by decide) (by decide)
    ⟨false, true, canonicalPermutation140, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27830 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 0, 2], ![2, 0, -1, -1], ![-1, -1, 4, -2]]⟩

def canonicalOutput27830 : ExponentCode := normalNode4329

theorem canonicalSound27830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27830.moment H = canonicalOutput27830.moment H :=
  canonical_of_padded canonicalInput27830 canonicalOutput27830 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation280, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27831 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![2, 0, 1, -3]]⟩

def canonicalOutput27831 : ExponentCode := normalNode3413

theorem canonicalSound27831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27831.moment H = canonicalOutput27831.moment H :=
  canonical_of_padded canonicalInput27831 canonicalOutput27831 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation357, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27832 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -2, 1, 1], ![2, -1, 0, -1], ![-2, 1, 2, -1]]⟩

def canonicalOutput27832 : ExponentCode := normalNode2463

theorem canonicalSound27832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27832.moment H = canonicalOutput27832.moment H :=
  canonical_of_padded canonicalInput27832 canonicalOutput27832 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation359, OAI.MUB6.Certificate.PairSemantics.permutation155⟩ (by decide +kernel) hH

def canonicalInput27833 : ExponentCode := ⟨4, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![0, -2, 3, -1]]⟩

def canonicalOutput27833 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node185⟩

theorem canonicalSound27833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27833.moment H = canonicalOutput27833.moment H :=
  canonical_of_padded canonicalInput27833 canonicalOutput27833 (by decide) (by decide)
    ⟨false, false, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput27834 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 0, 3], ![1, 0, 3, -4]]⟩

def canonicalOutput27834 : ExponentCode := normalNode1923

theorem canonicalSound27834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27834.moment H = canonicalOutput27834.moment H :=
  canonical_of_padded canonicalInput27834 canonicalOutput27834 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27835 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, -1, 1, 2], ![1, 0, 2, -3]]⟩

def canonicalOutput27835 : ExponentCode := normalNode2599

theorem canonicalSound27835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27835.moment H = canonicalOutput27835.moment H :=
  canonical_of_padded canonicalInput27835 canonicalOutput27835 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27836 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 0, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput27836 : ExponentCode := normalNode4029

theorem canonicalSound27836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27836.moment H = canonicalOutput27836.moment H :=
  canonical_of_padded canonicalInput27836 canonicalOutput27836 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27837 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 0, 0], ![-2, 0, 1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput27837 : ExponentCode := normalNode4430

theorem canonicalSound27837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27837.moment H = canonicalOutput27837.moment H :=
  canonical_of_padded canonicalInput27837 canonicalOutput27837 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation258, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27838 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![-2, -1, 1, 2], ![1, -1, 3, -3]]⟩

def canonicalOutput27838 : ExponentCode := normalNode2601

theorem canonicalSound27838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27838.moment H = canonicalOutput27838.moment H :=
  canonical_of_padded canonicalInput27838 canonicalOutput27838 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation259, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput27839 : ExponentCode := ⟨6, 4, ![![0, 0, -2, 2], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 0, 2, -3], ![-2, -2, 2, 2]]⟩

def canonicalOutput27839 : ExponentCode := normalNode808

theorem canonicalSound27839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput27839.moment H = canonicalOutput27839.moment H :=
  canonical_of_padded canonicalInput27839 canonicalOutput27839 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation308, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
