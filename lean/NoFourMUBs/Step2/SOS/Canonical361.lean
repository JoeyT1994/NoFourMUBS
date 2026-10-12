import NoFourMUBs.Step2.SOS.CanonicalCheck
import NoFourMUBs.Step2.SOS.CanonicalPermutations
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes0
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes43
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations
import OAI.Analysis.MutuallyUnbiased.PairTargets.ExtraPermutations

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

def canonicalInput23104 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23104 : ExponentCode := normalNode8361

theorem canonicalSound23104 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23104.moment H = canonicalOutput23104.moment H :=
  canonical_of_padded canonicalInput23104 canonicalOutput23104 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation215, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23105 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23105 : ExponentCode := normalNode10453

theorem canonicalSound23105 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23105.moment H = canonicalOutput23105.moment H :=
  canonical_of_padded canonicalInput23105 canonicalOutput23105 (by decide) (by decide)
    ⟨false, false, canonicalPermutation188, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23106 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23106 : ExponentCode := normalNode10645

theorem canonicalSound23106 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23106.moment H = canonicalOutput23106.moment H :=
  canonical_of_padded canonicalInput23106 canonicalOutput23106 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation218, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23107 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23107 : ExponentCode := normalNode8361

theorem canonicalSound23107 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23107.moment H = canonicalOutput23107.moment H :=
  canonical_of_padded canonicalInput23107 canonicalOutput23107 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23108 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23108 : ExponentCode := normalNode8361

theorem canonicalSound23108 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23108.moment H = canonicalOutput23108.moment H :=
  canonical_of_padded canonicalInput23108 canonicalOutput23108 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23109 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23109 : ExponentCode := normalNode10645

theorem canonicalSound23109 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23109.moment H = canonicalOutput23109.moment H :=
  canonical_of_padded canonicalInput23109 canonicalOutput23109 (by decide) (by decide)
    ⟨false, false, canonicalPermutation172, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23110 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23110 : ExponentCode := normalNode10453

theorem canonicalSound23110 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23110.moment H = canonicalOutput23110.moment H :=
  canonical_of_padded canonicalInput23110 canonicalOutput23110 (by decide) (by decide)
    ⟨false, false, canonicalPermutation185, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23111 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23111 : ExponentCode := normalNode8361

theorem canonicalSound23111 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23111.moment H = canonicalOutput23111.moment H :=
  canonical_of_padded canonicalInput23111 canonicalOutput23111 (by decide) (by decide)
    ⟨false, false, canonicalPermutation231, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23112 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23112 : ExponentCode := normalNode10645

theorem canonicalSound23112 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23112.moment H = canonicalOutput23112.moment H :=
  canonical_of_padded canonicalInput23112 canonicalOutput23112 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation218, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23113 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23113 : ExponentCode := normalNode10453

theorem canonicalSound23113 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23113.moment H = canonicalOutput23113.moment H :=
  canonical_of_padded canonicalInput23113 canonicalOutput23113 (by decide) (by decide)
    ⟨false, false, canonicalPermutation188, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23114 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23114 : ExponentCode := normalNode10453

theorem canonicalSound23114 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23114.moment H = canonicalOutput23114.moment H :=
  canonical_of_padded canonicalInput23114 canonicalOutput23114 (by decide) (by decide)
    ⟨false, false, canonicalPermutation185, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23115 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23115 : ExponentCode := normalNode10645

theorem canonicalSound23115 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23115.moment H = canonicalOutput23115.moment H :=
  canonical_of_padded canonicalInput23115 canonicalOutput23115 (by decide) (by decide)
    ⟨false, false, canonicalPermutation172, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23116 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23116 : ExponentCode := normalNode8361

theorem canonicalSound23116 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23116.moment H = canonicalOutput23116.moment H :=
  canonical_of_padded canonicalInput23116 canonicalOutput23116 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation216, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23117 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23117 : ExponentCode := normalNode11165

theorem canonicalSound23117 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23117.moment H = canonicalOutput23117.moment H :=
  canonical_of_padded canonicalInput23117 canonicalOutput23117 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation208, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23118 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23118 : ExponentCode := normalNode8361

theorem canonicalSound23118 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23118.moment H = canonicalOutput23118.moment H :=
  canonical_of_padded canonicalInput23118 canonicalOutput23118 (by decide) (by decide)
    ⟨false, false, canonicalPermutation116, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23119 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23119 : ExponentCode := normalNode8361

theorem canonicalSound23119 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23119.moment H = canonicalOutput23119.moment H :=
  canonical_of_padded canonicalInput23119 canonicalOutput23119 (by decide) (by decide)
    ⟨false, false, canonicalPermutation227, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23120 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23120 : ExponentCode := normalNode11165

theorem canonicalSound23120 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23120.moment H = canonicalOutput23120.moment H :=
  canonical_of_padded canonicalInput23120 canonicalOutput23120 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation61, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23121 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 2, 0, -2], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -2, 1, 1]]⟩

def canonicalOutput23121 : ExponentCode := normalNode10415

theorem canonicalSound23121 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23121.moment H = canonicalOutput23121.moment H :=
  canonical_of_padded canonicalInput23121 canonicalOutput23121 (by decide) (by decide)
    ⟨false, true, canonicalPermutation237, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput23122 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 3, -1, -2], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -2, 0, 2]]⟩

def canonicalOutput23122 : ExponentCode := normalNode10371

theorem canonicalSound23122 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23122.moment H = canonicalOutput23122.moment H :=
  canonical_of_padded canonicalInput23122 canonicalOutput23122 (by decide) (by decide)
    ⟨false, false, canonicalPermutation238, canonicalPermutation204⟩ (by decide +kernel) hH

def canonicalInput23123 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![2, 0, 0, 0, -2, 0], ![0, 0, 0, -1, 1, 0], ![-2, 0, 0, 1, 1, 0]]⟩

def canonicalOutput23123 : ExponentCode := normalNode10274

theorem canonicalSound23123 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23123.moment H = canonicalOutput23123.moment H :=
  canonical_of_padded canonicalInput23123 canonicalOutput23123 (by decide) (by decide)
    ⟨false, true, canonicalPermutation239, canonicalPermutation275⟩ (by decide +kernel) hH

def canonicalInput23124 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23124 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound23124 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23124.moment H = canonicalOutput23124.moment H :=
  canonical_of_padded canonicalInput23124 canonicalOutput23124 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23125 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23125 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound23125 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23125.moment H = canonicalOutput23125.moment H :=
  canonical_of_padded canonicalInput23125 canonicalOutput23125 (by decide) (by decide)
    ⟨false, true, canonicalPermutation63, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23126 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -3, 2, 0, 0, 0], ![0, 2, -2, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23126 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node57⟩

theorem canonicalSound23126 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23126.moment H = canonicalOutput23126.moment H :=
  canonical_of_padded canonicalInput23126 canonicalOutput23126 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23127 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -2, 1, 0, 0, 0], ![0, 1, -1, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23127 : ExponentCode := ⟨3, 3, OAI.MUB6.Certificate.PairSemantics.node61⟩

theorem canonicalSound23127 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23127.moment H = canonicalOutput23127.moment H :=
  canonical_of_padded canonicalInput23127 canonicalOutput23127 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairTargetSemantics.extraPermutation65, OAI.MUB6.Certificate.PairSemantics.permutation253⟩ (by decide +kernel) hH

def canonicalInput23128 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, -1, 0, 0], ![1, 0, 0, -1, 0, 0]]⟩

def canonicalOutput23128 : ExponentCode := ⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1291⟩

theorem canonicalSound23128 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23128.moment H = canonicalOutput23128.moment H :=
  canonical_of_padded canonicalInput23128 canonicalOutput23128 (by decide) (by decide)
    ⟨false, true, OAI.MUB6.Certificate.PairSemantics.permutation226, canonicalPermutation272⟩ (by decide +kernel) hH

def canonicalInput23129 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 2, 0, 0], ![1, 0, 0, 0, -1, 0], ![1, 0, 0, -2, 1, 0]]⟩

def canonicalOutput23129 : ExponentCode := ⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2758⟩

theorem canonicalSound23129 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23129.moment H = canonicalOutput23129.moment H :=
  canonical_of_padded canonicalInput23129 canonicalOutput23129 (by decide) (by decide)
    ⟨false, false, canonicalPermutation244, OAI.MUB6.Certificate.PairSemantics.permutation238⟩ (by decide +kernel) hH

def canonicalInput23130 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![-2, 0, 0, 3, -1, 0], ![0, 0, 0, -1, 1, 0], ![2, 0, 0, -2, 0, 0]]⟩

def canonicalOutput23130 : ExponentCode := normalNode9917

theorem canonicalSound23130 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23130.moment H = canonicalOutput23130.moment H :=
  canonical_of_padded canonicalInput23130 canonicalOutput23130 (by decide) (by decide)
    ⟨false, false, canonicalPermutation245, canonicalPermutation273⟩ (by decide +kernel) hH

def canonicalInput23131 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23131 : ExponentCode := normalNode11165

theorem canonicalSound23131 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23131.moment H = canonicalOutput23131.moment H :=
  canonical_of_padded canonicalInput23131 canonicalOutput23131 (by decide) (by decide)
    ⟨false, true, canonicalPermutation246, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23132 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23132 : ExponentCode := normalNode8361

theorem canonicalSound23132 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23132.moment H = canonicalOutput23132.moment H :=
  canonical_of_padded canonicalInput23132 canonicalOutput23132 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation228, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23133 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23133 : ExponentCode := normalNode8361

theorem canonicalSound23133 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23133.moment H = canonicalOutput23133.moment H :=
  canonical_of_padded canonicalInput23133 canonicalOutput23133 (by decide) (by decide)
    ⟨false, false, canonicalPermutation247, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23134 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23134 : ExponentCode := normalNode11165

theorem canonicalSound23134 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23134.moment H = canonicalOutput23134.moment H :=
  canonical_of_padded canonicalInput23134 canonicalOutput23134 (by decide) (by decide)
    ⟨false, true, canonicalPermutation248, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23135 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23135 : ExponentCode := normalNode8361

theorem canonicalSound23135 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23135.moment H = canonicalOutput23135.moment H :=
  canonical_of_padded canonicalInput23135 canonicalOutput23135 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23136 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23136 : ExponentCode := normalNode10645

theorem canonicalSound23136 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23136.moment H = canonicalOutput23136.moment H :=
  canonical_of_padded canonicalInput23136 canonicalOutput23136 (by decide) (by decide)
    ⟨false, false, canonicalPermutation249, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23137 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23137 : ExponentCode := normalNode10453

theorem canonicalSound23137 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23137.moment H = canonicalOutput23137.moment H :=
  canonical_of_padded canonicalInput23137 canonicalOutput23137 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation226, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23138 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23138 : ExponentCode := normalNode10453

theorem canonicalSound23138 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23138.moment H = canonicalOutput23138.moment H :=
  canonical_of_padded canonicalInput23138 canonicalOutput23138 (by decide) (by decide)
    ⟨false, false, canonicalPermutation250, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23139 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23139 : ExponentCode := normalNode10645

theorem canonicalSound23139 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23139.moment H = canonicalOutput23139.moment H :=
  canonical_of_padded canonicalInput23139 canonicalOutput23139 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23140 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23140 : ExponentCode := normalNode8361

theorem canonicalSound23140 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23140.moment H = canonicalOutput23140.moment H :=
  canonical_of_padded canonicalInput23140 canonicalOutput23140 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23141 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23141 : ExponentCode := normalNode8361

theorem canonicalSound23141 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23141.moment H = canonicalOutput23141.moment H :=
  canonical_of_padded canonicalInput23141 canonicalOutput23141 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation236, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23142 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23142 : ExponentCode := normalNode10453

theorem canonicalSound23142 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23142.moment H = canonicalOutput23142.moment H :=
  canonical_of_padded canonicalInput23142 canonicalOutput23142 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation226, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23143 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23143 : ExponentCode := normalNode10645

theorem canonicalSound23143 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23143.moment H = canonicalOutput23143.moment H :=
  canonical_of_padded canonicalInput23143 canonicalOutput23143 (by decide) (by decide)
    ⟨false, false, canonicalPermutation249, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23144 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23144 : ExponentCode := normalNode10645

theorem canonicalSound23144 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23144.moment H = canonicalOutput23144.moment H :=
  canonical_of_padded canonicalInput23144 canonicalOutput23144 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23145 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23145 : ExponentCode := normalNode10453

theorem canonicalSound23145 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23145.moment H = canonicalOutput23145.moment H :=
  canonical_of_padded canonicalInput23145 canonicalOutput23145 (by decide) (by decide)
    ⟨false, false, canonicalPermutation250, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23146 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23146 : ExponentCode := normalNode8361

theorem canonicalSound23146 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23146.moment H = canonicalOutput23146.moment H :=
  canonical_of_padded canonicalInput23146 canonicalOutput23146 (by decide) (by decide)
    ⟨false, false, canonicalPermutation204, canonicalPermutation180⟩ (by decide +kernel) hH

def canonicalInput23147 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 2, -1, -1]]⟩

def canonicalOutput23147 : ExponentCode := normalNode11165

theorem canonicalSound23147 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23147.moment H = canonicalOutput23147.moment H :=
  canonical_of_padded canonicalInput23147 canonicalOutput23147 (by decide) (by decide)
    ⟨false, true, canonicalPermutation253, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23148 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23148 : ExponentCode := normalNode8361

theorem canonicalSound23148 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23148.moment H = canonicalOutput23148.moment H :=
  canonical_of_padded canonicalInput23148 canonicalOutput23148 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation228, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23149 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23149 : ExponentCode := normalNode8361

theorem canonicalSound23149 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23149.moment H = canonicalOutput23149.moment H :=
  canonical_of_padded canonicalInput23149 canonicalOutput23149 (by decide) (by decide)
    ⟨false, false, canonicalPermutation247, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23150 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 2, -1, -1], ![0, 0, 0, -1, -1, 2]]⟩

def canonicalOutput23150 : ExponentCode := normalNode11165

theorem canonicalSound23150 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23150.moment H = canonicalOutput23150.moment H :=
  canonical_of_padded canonicalInput23150 canonicalOutput23150 (by decide) (by decide)
    ⟨false, true, canonicalPermutation244, OAI.MUB6.Certificate.PairSemantics.permutation221⟩ (by decide +kernel) hH

def canonicalInput23151 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23151 : ExponentCode := normalNode10453

theorem canonicalSound23151 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23151.moment H = canonicalOutput23151.moment H :=
  canonical_of_padded canonicalInput23151 canonicalOutput23151 (by decide) (by decide)
    ⟨false, false, canonicalPermutation254, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23152 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, -1, 2, -1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23152 : ExponentCode := normalNode8361

theorem canonicalSound23152 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23152.moment H = canonicalOutput23152.moment H :=
  canonical_of_padded canonicalInput23152 canonicalOutput23152 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23153 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23153 : ExponentCode := normalNode10645

theorem canonicalSound23153 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23153.moment H = canonicalOutput23153.moment H :=
  canonical_of_padded canonicalInput23153 canonicalOutput23153 (by decide) (by decide)
    ⟨false, false, canonicalPermutation249, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23154 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23154 : ExponentCode := normalNode10645

theorem canonicalSound23154 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23154.moment H = canonicalOutput23154.moment H :=
  canonical_of_padded canonicalInput23154 canonicalOutput23154 (by decide) (by decide)
    ⟨false, false, canonicalPermutation251, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23155 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 2, -1]]⟩

def canonicalOutput23155 : ExponentCode := normalNode8361

theorem canonicalSound23155 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23155.moment H = canonicalOutput23155.moment H :=
  canonical_of_padded canonicalInput23155 canonicalOutput23155 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation235, canonicalPermutation274⟩ (by decide +kernel) hH

def canonicalInput23156 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23156 : ExponentCode := normalNode10453

theorem canonicalSound23156 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23156.moment H = canonicalOutput23156.moment H :=
  canonical_of_padded canonicalInput23156 canonicalOutput23156 (by decide) (by decide)
    ⟨false, false, canonicalPermutation255, canonicalPermutation250⟩ (by decide +kernel) hH

def canonicalInput23157 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23157 : ExponentCode := normalNode10645

theorem canonicalSound23157 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23157.moment H = canonicalOutput23157.moment H :=
  canonical_of_padded canonicalInput23157 canonicalOutput23157 (by decide) (by decide)
    ⟨false, false, canonicalPermutation256, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23158 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, -1, 1, 0], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23158 : ExponentCode := normalNode10645

theorem canonicalSound23158 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23158.moment H = canonicalOutput23158.moment H :=
  canonical_of_padded canonicalInput23158 canonicalOutput23158 (by decide) (by decide)
    ⟨false, false, canonicalPermutation256, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23159 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 1, -1]]⟩

def canonicalOutput23159 : ExponentCode := normalNode10645

theorem canonicalSound23159 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23159.moment H = canonicalOutput23159.moment H :=
  canonical_of_padded canonicalInput23159 canonicalOutput23159 (by decide) (by decide)
    ⟨false, false, canonicalPermutation256, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23160 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23160 : ExponentCode := ⟨2, 2, OAI.MUB6.Certificate.PairSemantics.node5⟩

theorem canonicalSound23160 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23160.moment H = canonicalOutput23160.moment H :=
  canonical_of_padded canonicalInput23160 canonicalOutput23160 (by decide) (by decide)
    ⟨false, false, OAI.MUB6.Certificate.PairSemantics.permutation231, OAI.MUB6.Certificate.PairSemantics.permutation231⟩ (by decide +kernel) hH

def canonicalInput23161 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23161 : ExponentCode := normalNode10645

theorem canonicalSound23161 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23161.moment H = canonicalOutput23161.moment H :=
  canonical_of_padded canonicalInput23161 canonicalOutput23161 (by decide) (by decide)
    ⟨false, false, canonicalPermutation257, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23162 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, -1, 0], ![0, 0, 0, -1, 1, 0]]⟩

def canonicalOutput23162 : ExponentCode := normalNode10645

theorem canonicalSound23162 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23162.moment H = canonicalOutput23162.moment H :=
  canonical_of_padded canonicalInput23162 canonicalOutput23162 (by decide) (by decide)
    ⟨false, false, canonicalPermutation257, canonicalPermutation251⟩ (by decide +kernel) hH

def canonicalInput23163 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 1, 0, -1], ![0, 0, 0, -1, 0, 1]]⟩

def canonicalOutput23163 : ExponentCode := normalNode10645

theorem canonicalSound23163 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23163.moment H = canonicalOutput23163.moment H :=
  canonical_of_padded canonicalInput23163 canonicalOutput23163 (by decide) (by decide)
    ⟨false, false, canonicalPermutation257, canonicalPermutation249⟩ (by decide +kernel) hH

def canonicalInput23164 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, -1, 2], ![0, 0, 0, 1, 0, -1]]⟩

def canonicalOutput23164 : ExponentCode := normalNode8361

theorem canonicalSound23164 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23164.moment H = canonicalOutput23164.moment H :=
  canonical_of_padded canonicalInput23164 canonicalOutput23164 (by decide) (by decide)
    ⟨false, false, canonicalPermutation252, OAI.MUB6.Certificate.PairSemantics.permutation229⟩ (by decide +kernel) hH

def canonicalInput23165 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, -1, 0, 1], ![0, 0, 0, 1, -1, 0]]⟩

def canonicalOutput23165 : ExponentCode := normalNode10453

theorem canonicalSound23165 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23165.moment H = canonicalOutput23165.moment H :=
  canonical_of_padded canonicalInput23165 canonicalOutput23165 (by decide) (by decide)
    ⟨false, false, canonicalPermutation254, OAI.MUB6.Certificate.PairSemantics.permutation226⟩ (by decide +kernel) hH

def canonicalInput23166 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, -1, 1], ![0, 0, 0, 0, 0, 0]]⟩

def canonicalOutput23166 : ExponentCode := normalNode10645

theorem canonicalSound23166 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23166.moment H = canonicalOutput23166.moment H :=
  canonical_of_padded canonicalInput23166 canonicalOutput23166 (by decide) (by decide)
    ⟨false, false, canonicalPermutation178, canonicalPermutation256⟩ (by decide +kernel) hH

def canonicalInput23167 : ExponentCode := ⟨6, 6, ![![-1, 1, 0, 0, 0, 0], ![1, -1, 0, 0, 0, 0], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, 1, -1], ![0, 0, 0, 0, 0, 0], ![0, 0, 0, 0, -1, 1]]⟩

def canonicalOutput23167 : ExponentCode := normalNode10645

theorem canonicalSound23167 {H : CMatrix} (hH : IsHadamard H) :
    canonicalInput23167.moment H = canonicalOutput23167.moment H :=
  canonical_of_padded canonicalInput23167 canonicalOutput23167 (by decide) (by decide)
    ⟨false, false, canonicalPermutation183, canonicalPermutation256⟩ (by decide +kernel) hH

end NoFourMUBs.Step2.SOS.Normalization
