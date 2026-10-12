import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.MomentCodes02
import NoFourMUBs.Step2.SOS.MomentCodes03
import NoFourMUBs.Step2.SOS.MomentCodes04
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes15
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.MomentCodes18
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationNodes015
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes1
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes35
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput11776 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![0, 2, 0, -2], ![1, -2, -1, 2], ![1, -1, -2, 2]]⟩

def canonicalOutput11776 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1241

theorem canonicalSound11776 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11776.moment H = canonicalOutput11776.moment H :=
  canonical_of_padded canonicalInput11776 canonicalOutput11776 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11777 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![1, -3, 0, 2], ![0, 0, -2, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput11777 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code191

theorem canonicalSound11777 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11777.moment H = canonicalOutput11777.moment H :=
  canonical_of_padded canonicalInput11777 canonicalOutput11777 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11778 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![1, -2, -1, 2], ![0, -1, -1, 2], ![1, 2, -1, -2]]⟩

def canonicalOutput11778 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code192

theorem canonicalSound11778 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11778.moment H = canonicalOutput11778.moment H :=
  canonical_of_padded canonicalInput11778 canonicalOutput11778 (by decide) (by decide)
    ⟨true, true, canonicalPermutation0, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11779 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![1, -1, -2, 2], ![0, 2, 0, -2], ![1, -2, -1, 2]]⟩

def canonicalOutput11779 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1241

theorem canonicalSound11779 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11779.moment H = canonicalOutput11779.moment H :=
  canonical_of_padded canonicalInput11779 canonicalOutput11779 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11780 : ExponentCode := ⟨4, 4, ![![-2, 1, 3, -2], ![1, -1, -1, 1], ![0, -1, -1, 2], ![1, 1, -1, -1]]⟩

def canonicalOutput11780 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node502⟩

theorem canonicalSound11780 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11780.moment H = canonicalOutput11780.moment H :=
  canonical_of_padded canonicalInput11780 canonicalOutput11780 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation165, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11781 : ExponentCode := ⟨6, 6, ![![-2, 1, 3, -1, -1, 0], ![1, -2, 0, -1, 2, 0], ![1, 1, -3, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11781 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound11781 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11781.moment H = canonicalOutput11781.moment H :=
  canonical_of_padded canonicalInput11781 canonicalOutput11781 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation345, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11782 : ExponentCode := ⟨6, 6, ![![-2, 1, 3, -1, -1, 0], ![1, -2, 0, -1, 2, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11782 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11782 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11782.moment H = canonicalOutput11782.moment H :=
  canonical_of_padded canonicalInput11782 canonicalOutput11782 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation372, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11783 : ExponentCode := ⟨6, 6, ![![-2, 1, 3, -1, -1, 0], ![1, -2, 0, 2, -1, 0], ![1, 1, -3, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11783 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1210

theorem canonicalSound11783 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11783.moment H = canonicalOutput11783.moment H :=
  canonical_of_padded canonicalInput11783 canonicalOutput11783 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation351, OAI.MUB6.Certificate.PairSemantics.permutation254⟩ (by decide +kernel) hH

def canonicalInput11784 : ExponentCode := ⟨6, 6, ![![-2, 1, 3, -1, -1, 0], ![1, -2, 0, 2, -1, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11784 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code425

theorem canonicalSound11784 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11784.moment H = canonicalOutput11784.moment H :=
  canonical_of_padded canonicalInput11784 canonicalOutput11784 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation367, canonicalPermutation5⟩ (by decide +kernel) hH

def canonicalInput11785 : ExponentCode := ⟨6, 6, ![![-2, 1, 3, -1, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -3, -1, 2, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11785 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11785 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11785.moment H = canonicalOutput11785.moment H :=
  canonical_of_padded canonicalInput11785 canonicalOutput11785 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation354, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11786 : ExponentCode := ⟨6, 6, ![![-2, 1, 3, -1, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -3, 2, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11786 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code978

theorem canonicalSound11786 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11786.moment H = canonicalOutput11786.moment H :=
  canonical_of_padded canonicalInput11786 canonicalOutput11786 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation348, canonicalPermutation10⟩ (by decide +kernel) hH

def canonicalInput11787 : ExponentCode := ⟨6, 6, ![![-2, 1, 3, -1, -1, 0], ![1, -2, 1, 0, 0, 0], ![1, 1, -2, 0, 0, 0], ![0, 0, -1, 2, -1, 0], ![0, 0, -1, -1, 2, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput11787 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code269

theorem canonicalSound11787 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11787.moment H = canonicalOutput11787.moment H :=
  canonical_of_padded canonicalInput11787 canonicalOutput11787 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation329, OAI.MUB6.Certificate.PairSemantics.permutation324⟩ (by decide +kernel) hH

def canonicalInput11788 : ExponentCode := ⟨6, 2, ![![-2, 2], ![0, 0], ![2, -2], ![-1, 1], ![0, 0], ![1, -1]]⟩

def canonicalOutput11788 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node46⟩

theorem canonicalSound11788 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11788.moment H = canonicalOutput11788.moment H :=
  canonical_of_padded canonicalInput11788 canonicalOutput11788 (by decide) (by decide)
    ⟨false, false, canonicalPermutation110, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11789 : ExponentCode := ⟨6, 2, ![![-2, 2], ![1, -1], ![2, -2], ![-1, 1], ![-1, 1], ![1, -1]]⟩

def canonicalOutput11789 : ExponentCode := ⟨6, 2, OAI.MUB6.Certificate.PairSemantics.node717⟩

theorem canonicalSound11789 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11789.moment H = canonicalOutput11789.moment H :=
  canonical_of_padded canonicalInput11789 canonicalOutput11789 (by decide) (by decide)
    ⟨false, false, canonicalPermutation36, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11790 : ExponentCode := ⟨6, 2, ![![-2, 2], ![1, -1], ![2, -2], ![-1, 1], ![0, 0], ![0, 0]]⟩

def canonicalOutput11790 : ExponentCode := ⟨4, 2, OAI.MUB6.Certificate.PairSemantics.node46⟩

theorem canonicalSound11790 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11790.moment H = canonicalOutput11790.moment H :=
  canonical_of_padded canonicalInput11790 canonicalOutput11790 (by decide) (by decide)
    ⟨false, false, canonicalPermutation83, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11791 : ExponentCode := ⟨6, 2, ![![-2, 2], ![1, -1], ![3, -3], ![-1, 1], ![-1, 1], ![0, 0]]⟩

def canonicalOutput11791 : ExponentCode := ⟨5, 2, OAI.MUB6.Certificate.PairSemantics.node118⟩

theorem canonicalSound11791 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11791.moment H = canonicalOutput11791.moment H :=
  canonical_of_padded canonicalInput11791 canonicalOutput11791 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation360, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11792 : ExponentCode := ⟨6, 2, ![![-2, 2], ![1, -1], ![4, -4], ![-1, 1], ![-1, 1], ![-1, 1]]⟩

def canonicalOutput11792 : ExponentCode := ⟨6, 2, OAI.MUB6.Certificate.PairSemantics.node296⟩

theorem canonicalSound11792 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11792.moment H = canonicalOutput11792.moment H :=
  canonical_of_padded canonicalInput11792 canonicalOutput11792 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation227, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11793 : ExponentCode := ⟨6, 2, ![![-2, 2], ![2, -2], ![2, -2], ![-1, 1], ![-1, 1], ![0, 0]]⟩

def canonicalOutput11793 : ExponentCode := ⟨5, 2, OAI.MUB6.Certificate.PairSemantics.node231⟩

theorem canonicalSound11793 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11793.moment H = canonicalOutput11793.moment H :=
  canonical_of_padded canonicalInput11793 canonicalOutput11793 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation340, OAI.MUB6.Certificate.PairSemantics.permutation152⟩ (by decide +kernel) hH

def canonicalInput11794 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11794 : ExponentCode := normalNode8913

theorem canonicalSound11794 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11794.moment H = canonicalOutput11794.moment H :=
  canonical_of_padded canonicalInput11794 canonicalOutput11794 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11795 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, -1, 2, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]⟩

def canonicalOutput11795 : ExponentCode := normalNode7377

theorem canonicalSound11795 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11795.moment H = canonicalOutput11795.moment H :=
  canonical_of_padded canonicalInput11795 canonicalOutput11795 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11796 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11796 : ExponentCode := normalNode8913

theorem canonicalSound11796 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11796.moment H = canonicalOutput11796.moment H :=
  canonical_of_padded canonicalInput11796 canonicalOutput11796 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation154, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11797 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput11797 : ExponentCode := normalNode7376

theorem canonicalSound11797 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11797.moment H = canonicalOutput11797.moment H :=
  canonical_of_padded canonicalInput11797 canonicalOutput11797 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11798 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11798 : ExponentCode := normalNode9043

theorem canonicalSound11798 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11798.moment H = canonicalOutput11798.moment H :=
  canonical_of_padded canonicalInput11798 canonicalOutput11798 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11799 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput11799 : ExponentCode := normalNode7438

theorem canonicalSound11799 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11799.moment H = canonicalOutput11799.moment H :=
  canonical_of_padded canonicalInput11799 canonicalOutput11799 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11800 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, 0, 1, -1], ![0, 0, 2, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput11800 : ExponentCode := normalNode6466

theorem canonicalSound11800 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11800.moment H = canonicalOutput11800.moment H :=
  canonical_of_padded canonicalInput11800 canonicalOutput11800 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11801 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput11801 : ExponentCode := normalNode9659

theorem canonicalSound11801 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11801.moment H = canonicalOutput11801.moment H :=
  canonical_of_padded canonicalInput11801 canonicalOutput11801 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11802 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput11802 : ExponentCode := normalNode7375

theorem canonicalSound11802 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11802.moment H = canonicalOutput11802.moment H :=
  canonical_of_padded canonicalInput11802 canonicalOutput11802 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11803 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, 0, 2, -2], ![1, -2, 2, -1], ![1, 0, 0, -1]]⟩

def canonicalOutput11803 : ExponentCode := normalNode6469

theorem canonicalSound11803 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11803.moment H = canonicalOutput11803.moment H :=
  canonical_of_padded canonicalInput11803 canonicalOutput11803 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11804 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, -1, 2, -2]]⟩

def canonicalOutput11804 : ExponentCode := normalNode10212

theorem canonicalSound11804 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11804.moment H = canonicalOutput11804.moment H :=
  canonical_of_padded canonicalInput11804 canonicalOutput11804 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11805 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, 0, 3, -3], ![1, -2, 1, 0], ![1, 0, 0, -1]]⟩

def canonicalOutput11805 : ExponentCode := normalNode8912

theorem canonicalSound11805 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11805.moment H = canonicalOutput11805.moment H :=
  canonical_of_padded canonicalInput11805 canonicalOutput11805 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11806 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, -1, 1, -1]]⟩

def canonicalOutput11806 : ExponentCode := normalNode8911

theorem canonicalSound11806 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11806.moment H = canonicalOutput11806.moment H :=
  canonical_of_padded canonicalInput11806 canonicalOutput11806 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11807 : ExponentCode := ⟨4, 4, ![![-2, 2, -4, 4], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]⟩

def canonicalOutput11807 : ExponentCode := normalNode9042

theorem canonicalSound11807 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11807.moment H = canonicalOutput11807.moment H :=
  canonical_of_padded canonicalInput11807 canonicalOutput11807 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11808 : ExponentCode := ⟨5, 4, ![![-2, 2, -3, 3], ![0, -2, 0, 2], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput11808 : ExponentCode := normalNode4089

theorem canonicalSound11808 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11808.moment H = canonicalOutput11808.moment H :=
  canonical_of_padded canonicalInput11808 canonicalOutput11808 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation172, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11809 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, -2, 1, 1], ![1, 0, 1, -2], ![1, 0, 1, -2]]⟩

def canonicalOutput11809 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code158

theorem canonicalSound11809 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11809.moment H = canonicalOutput11809.moment H :=
  canonical_of_padded canonicalInput11809 canonicalOutput11809 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11810 : ExponentCode := ⟨5, 4, ![![-2, 2, -3, 3], ![0, -1, 0, 1], ![0, 0, 1, -1], ![1, 0, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput11810 : ExponentCode := normalNode5750

theorem canonicalSound11810 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11810.moment H = canonicalOutput11810.moment H :=
  canonical_of_padded canonicalInput11810 canonicalOutput11810 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation152, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11811 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11811 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1024⟩

theorem canonicalSound11811 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11811.moment H = canonicalOutput11811.moment H :=
  canonical_of_padded canonicalInput11811 canonicalOutput11811 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation160, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11812 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, -1, 1, 0], ![1, -1, 1, -1], ![1, 0, 1, -2]]⟩

def canonicalOutput11812 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound11812 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11812.moment H = canonicalOutput11812.moment H :=
  canonical_of_padded canonicalInput11812 canonicalOutput11812 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11813 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, -1, 1, 0], ![1, 0, 1, -2], ![1, -1, 1, -1]]⟩

def canonicalOutput11813 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node931⟩

theorem canonicalSound11813 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11813.moment H = canonicalOutput11813.moment H :=
  canonical_of_padded canonicalInput11813 canonicalOutput11813 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11814 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, -1, 2, -1], ![1, -1, -1, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput11814 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1084

theorem canonicalSound11814 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11814.moment H = canonicalOutput11814.moment H :=
  canonical_of_padded canonicalInput11814 canonicalOutput11814 (by decide) (by decide)
    ⟨true, true, canonicalPermutation3, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11815 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, -1, 2, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]⟩

def canonicalOutput11815 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1279⟩

theorem canonicalSound11815 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11815.moment H = canonicalOutput11815.moment H :=
  canonical_of_padded canonicalInput11815 canonicalOutput11815 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11816 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, -1, 3, -2], ![1, -1, -1, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11816 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1084

theorem canonicalSound11816 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11816.moment H = canonicalOutput11816.moment H :=
  canonical_of_padded canonicalInput11816 canonicalOutput11816 (by decide) (by decide)
    ⟨true, false, canonicalPermutation8, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11817 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput11817 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1085⟩

theorem canonicalSound11817 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11817.moment H = canonicalOutput11817.moment H :=
  canonical_of_padded canonicalInput11817 canonicalOutput11817 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11818 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, -1, 4, -3], ![1, -1, -1, 1], ![1, 0, 0, -1]]⟩

def canonicalOutput11818 : ExponentCode := normalNode9122

theorem canonicalSound11818 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11818.moment H = canonicalOutput11818.moment H :=
  canonical_of_padded canonicalInput11818 canonicalOutput11818 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation153, canonicalPermutation9⟩ (by decide +kernel) hH

def canonicalInput11819 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, -1, 4, -3], ![1, -1, 0, 0], ![1, 0, -1, 0]]⟩

def canonicalOutput11819 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1061⟩

theorem canonicalSound11819 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11819.moment H = canonicalOutput11819.moment H :=
  canonical_of_padded canonicalInput11819 canonicalOutput11819 (by decide) (by decide)
    ⟨true, true, canonicalPermutation1, canonicalPermutation7⟩ (by decide +kernel) hH

def canonicalInput11820 : ExponentCode := ⟨5, 4, ![![-2, 2, -3, 3], ![0, 0, -1, 1], ![0, -1, 2, -1], ![1, -1, 0, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11820 : ExponentCode := normalNode5754

theorem canonicalSound11820 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11820.moment H = canonicalOutput11820.moment H :=
  canonical_of_padded canonicalInput11820 canonicalOutput11820 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11821 : ExponentCode := ⟨5, 4, ![![-2, 2, -3, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 0, 2, -3]]⟩

def canonicalOutput11821 : ExponentCode := normalNode5491

theorem canonicalSound11821 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11821.moment H = canonicalOutput11821.moment H :=
  canonical_of_padded canonicalInput11821 canonicalOutput11821 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation193, OAI.MUB6.Certificate.PairSemantics.permutation157⟩ (by decide +kernel) hH

def canonicalInput11822 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, -1, 4, -4]]⟩

def canonicalOutput11822 : ExponentCode := normalNode9707

theorem canonicalSound11822 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11822.moment H = canonicalOutput11822.moment H :=
  canonical_of_padded canonicalInput11822 canonicalOutput11822 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation158⟩ (by decide +kernel) hH

def canonicalInput11823 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, -1, 1], ![1, -1, 1, -1], ![1, -1, 3, -3]]⟩

def canonicalOutput11823 : ExponentCode := normalNode11188

theorem canonicalSound11823 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11823.moment H = canonicalOutput11823.moment H :=
  canonical_of_padded canonicalInput11823 canonicalOutput11823 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11824 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, -1, 1], ![1, -1, 2, -2], ![1, -1, 2, -2]]⟩

def canonicalOutput11824 : ExponentCode := normalNode11221

theorem canonicalSound11824 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11824.moment H = canonicalOutput11824.moment H :=
  canonical_of_padded canonicalInput11824 canonicalOutput11824 (by decide) (by decide)
    ⟨true, false, canonicalPermutation6, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11825 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 0, 0], ![0, 0, 1, -1], ![2, -2, 2, -2]]⟩

def canonicalOutput11825 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node264⟩

theorem canonicalSound11825 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11825.moment H = canonicalOutput11825.moment H :=
  canonical_of_padded canonicalInput11825 canonicalOutput11825 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11826 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 0, 0], ![0, 0, 2, -2], ![2, -2, 1, -1]]⟩

def canonicalOutput11826 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node162⟩

theorem canonicalSound11826 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11826.moment H = canonicalOutput11826.moment H :=
  canonical_of_padded canonicalInput11826 canonicalOutput11826 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11827 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 0, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]⟩

def canonicalOutput11827 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node277⟩

theorem canonicalSound11827 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11827.moment H = canonicalOutput11827.moment H :=
  canonical_of_padded canonicalInput11827 canonicalOutput11827 (by decide) (by decide)
    ⟨true, false, OAI.MUB6.Certificate.PairSemantics.permutation161, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11828 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 0, 0], ![1, -1, 1, -1], ![1, -1, 2, -2]]⟩

def canonicalOutput11828 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node258⟩

theorem canonicalSound11828 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11828.moment H = canonicalOutput11828.moment H :=
  canonical_of_padded canonicalInput11828 canonicalOutput11828 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11829 : ExponentCode := ⟨5, 4, ![![-2, 2, -3, 3], ![0, 0, 1, -1], ![0, -1, 1, 0], ![1, -1, 0, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11829 : ExponentCode := normalNode5752

theorem canonicalSound11829 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11829.moment H = canonicalOutput11829.moment H :=
  canonical_of_padded canonicalInput11829 canonicalOutput11829 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation156, OAI.MUB6.Certificate.PairSemantics.permutation151⟩ (by decide +kernel) hH

def canonicalInput11830 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 1, -1], ![0, 0, 0, 0], ![2, -2, 2, -2]]⟩

def canonicalOutput11830 : ExponentCode := ⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node264⟩

theorem canonicalSound11830 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11830.moment H = canonicalOutput11830.moment H :=
  canonical_of_padded canonicalInput11830 canonicalOutput11830 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11831 : ExponentCode := ⟨5, 4, ![![-2, 2, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 0, 1, -2]]⟩

def canonicalOutput11831 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2288⟩

theorem canonicalSound11831 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11831.moment H = canonicalOutput11831.moment H :=
  canonical_of_padded canonicalInput11831 canonicalOutput11831 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation189, OAI.MUB6.Certificate.PairSemantics.permutation156⟩ (by decide +kernel) hH

def canonicalInput11832 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 1, -1], ![0, 0, 3, -3], ![2, -2, -1, 1]]⟩

def canonicalOutput11832 : ExponentCode := normalNode6097

theorem canonicalSound11832 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11832.moment H = canonicalOutput11832.moment H :=
  canonical_of_padded canonicalInput11832 canonicalOutput11832 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11833 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 1, -1], ![1, -2, 0, 1], ![1, 0, 2, -3]]⟩

def canonicalOutput11833 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1196⟩

theorem canonicalSound11833 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11833.moment H = canonicalOutput11833.moment H :=
  canonical_of_padded canonicalInput11833 canonicalOutput11833 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation162, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11834 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 1, -1], ![1, -2, 1, 0], ![1, 0, 1, -2]]⟩

def canonicalOutput11834 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node790⟩

theorem canonicalSound11834 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11834.moment H = canonicalOutput11834.moment H :=
  canonical_of_padded canonicalInput11834 canonicalOutput11834 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation161⟩ (by decide +kernel) hH

def canonicalInput11835 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 3, -3]]⟩

def canonicalOutput11835 : ExponentCode := normalNode10960

theorem canonicalSound11835 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11835.moment H = canonicalOutput11835.moment H :=
  canonical_of_padded canonicalInput11835 canonicalOutput11835 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11836 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 2, -2], ![0, 0, 1, -1], ![2, -2, 0, 0]]⟩

def canonicalOutput11836 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node789⟩

theorem canonicalSound11836 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11836.moment H = canonicalOutput11836.moment H :=
  canonical_of_padded canonicalInput11836 canonicalOutput11836 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation163⟩ (by decide +kernel) hH

def canonicalInput11837 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 2, -2], ![0, 0, 2, -2], ![2, -2, -1, 1]]⟩

def canonicalOutput11837 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code152

theorem canonicalSound11837 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11837.moment H = canonicalOutput11837.moment H :=
  canonical_of_padded canonicalInput11837 canonicalOutput11837 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

def canonicalInput11838 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 2, -2], ![1, -2, 2, -1], ![1, 0, -1, 0]]⟩

def canonicalOutput11838 : ExponentCode := ⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1266⟩

theorem canonicalSound11838 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11838.moment H = canonicalOutput11838.moment H :=
  canonical_of_padded canonicalInput11838 canonicalOutput11838 (by decide) (by decide)
    ⟨true, true, OAI.MUB6.Certificate.PairSemantics.permutation152, canonicalPermutation8⟩ (by decide +kernel) hH

def canonicalInput11839 : ExponentCode := ⟨4, 4, ![![-2, 2, -3, 3], ![0, 0, 2, -2], ![1, -1, -1, 1], ![1, -1, 2, -2]]⟩

def canonicalOutput11839 : ExponentCode := NoFourMUBs.Step2.SOS.Semantics.code1079

theorem canonicalSound11839 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput11839.moment H = canonicalOutput11839.moment H :=
  canonical_of_padded canonicalInput11839 canonicalOutput11839 (by decide) (by decide)
    ⟨true, false, canonicalPermutation15, OAI.MUB6.Certificate.PairSemantics.permutation159⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
