import LiteralPairChunk001
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert48 : PairCertificate (Fin 48) := .split 18 pairCert38 pairCert47
theorem pairCheck48 : checkPairSized orthGraph ubGraph (labelSet 79751822446604) (labelSet 280718355971985) 5 6 pairCert48=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 79751822446604) (labelSet 280718355971985) (labelSet 79751788105732)
    (labelSet 201516992605969) (labelSet 79751822184460) 18 4 6
    pairCert38 pairCert47 (by decide) (by decide) (by decide) (by decide)
    pairCheck38 pairCheck47
def pairCert49 : PairCertificate (Fin 48) := .split 37 pairCert23 pairCert48
theorem pairCheck49 : checkPairSized orthGraph ubGraph (labelSet 79889261400076) (labelSet 280718355971985) 5 6 pairCert49=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 79889261400076) (labelSet 280718355971985) (labelSet 8796143616000)
    (labelSet 128963986898321) (labelSet 79751822446604) 37 4 6
    pairCert23 pairCert48 (by decide) (by decide) (by decide) (by decide)
    pairCheck23 pairCheck48
def pairCert50 : PairCertificate (Fin 48) := .split 20 pairCert22 pairCert49
theorem pairCheck50 : checkPairSized orthGraph ubGraph (labelSet 79889262448652) (labelSet 280718355971985) 5 6 pairCert50=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 79889262448652) (labelSet 280718355971985) (labelSet 70370891923464)
    (labelSet 186148477712657) (labelSet 79889261400076) 20 4 6
    pairCert22 pairCert49 (by decide) (by decide) (by decide) (by decide)
    pairCheck22 pairCheck49
def pairCert51 : PairCertificate (Fin 48) := .split 14 pairCert21 pairCert50
theorem pairCheck51 : checkPairSized orthGraph ubGraph (labelSet 79889262465036) (labelSet 280718355971985) 5 6 pairCert51=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 79889262465036) (labelSet 280718355971985) (labelSet 34360528896)
    (labelSet 279580116200080) (labelSet 79889262448652) 14 4 6
    pairCert21 pairCert50 (by decide) (by decide) (by decide) (by decide)
    pairCheck21 pairCheck50
def pairCert52 : PairCertificate (Fin 48) := .split 36 pairCert20 pairCert51
theorem pairCheck52 : checkPairSized orthGraph ubGraph (labelSet 79957981941772) (labelSet 280718355971985) 5 6 pairCert52=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 79957981941772) (labelSet 280718355971985) (labelSet 70508331941896)
    (labelSet 34133546055424) (labelSet 79889262465036) 36 4 6
    pairCert20 pairCert51 (by decide) (by decide) (by decide) (by decide)
    pairCheck20 pairCheck51
def pairCert53 : PairCertificate (Fin 48) := .split 6 pairCert13 pairCert52
theorem pairCheck53 : checkPairSized orthGraph ubGraph (labelSet 79957981941836) (labelSet 280718355971985) 5 6 pairCert53=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 79957981941836) (labelSet 280718355971985) (labelSet 171800547328)
    (labelSet 245489681403777) (labelSet 79957981941772) 6 4 6
    pairCert13 pairCert52 (by decide) (by decide) (by decide) (by decide)
    pairCheck13 pairCheck52
def pairCert54 : PairCertificate (Fin 48) := .split 5 pairCert6 pairCert53
theorem pairCheck54 : checkPairSized orthGraph ubGraph (labelSet 79957981941868) (labelSet 280718355971985) 5 6 pairCert54=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 79957981941868) (labelSet 280718355971985) (labelSet 8933583634432)
    (labelSet 248557615617681) (labelSet 79957981941836) 5 4 6
    pairCert6 pairCert53 (by decide) (by decide) (by decide) (by decide)
    pairCheck6 pairCheck53
def pairCert55 : PairCertificate (Fin 48) := .first cliqueCert15
theorem pairCheck55 : checkPairSized orthGraph ubGraph (labelSet 8) (labelSet 176626252044545) 3 6 pairCert55=true := by
  exact cliqueCheck15
def pairCert56 : PairCertificate (Fin 48) := .first cliqueCert15
theorem pairCheck56 : checkPairSized orthGraph ubGraph (labelSet 8) (labelSet 250699472476674) 3 6 pairCert56=true := by
  exact cliqueCheck15
def pairCert57 : PairCertificate (Fin 48) := .cross cliqueCert16
theorem pairCheck57 : checkPairSized orthGraph ubGraph (labelSet 1099914280968) (labelSet 112727859268867) 3 6 pairCert57=true := by
  exact cliqueCheck16
def pairCert58 : PairCertificate (Fin 48) := .first cliqueCert17
theorem pairCheck58 : checkPairSized orthGraph ubGraph (labelSet 1099914280968) (labelSet 253602870517507) 4 6 pairCert58=true := by
  exact cliqueCheck17
def pairCert59 : PairCertificate (Fin 48) := .split 22 pairCert57 pairCert58
theorem pairCheck59 : checkPairSized orthGraph ubGraph (labelSet 1099918475272) (labelSet 253602870517507) 4 6 pairCert59=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 1099918475272) (labelSet 253602870517507) (labelSet 1099914280968)
    (labelSet 112727859268867) (labelSet 1099914280968) 22 3 6
    pairCert57 pairCert58 (by decide) (by decide) (by decide) (by decide)
    pairCheck57 pairCheck58
def pairCert60 : PairCertificate (Fin 48) := .split 32 pairCert56 pairCert59
theorem pairCheck60 : checkPairSized orthGraph ubGraph (labelSet 1104213442568) (labelSet 253602870517507) 4 6 pairCert60=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 1104213442568) (labelSet 253602870517507) (labelSet 8)
    (labelSet 250699472476674) (labelSet 1099918475272) 32 3 6
    pairCert56 pairCert59 (by decide) (by decide) (by decide) (by decide)
    pairCheck56 pairCheck59
def pairCert61 : PairCertificate (Fin 48) := .split 20 pairCert55 pairCert60
theorem pairCheck61 : checkPairSized orthGraph ubGraph (labelSet 1104214491144) (labelSet 253602870517507) 4 6 pairCert61=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 1104214491144) (labelSet 253602870517507) (labelSet 8)
    (labelSet 176626252044545) (labelSet 1104213442568) 20 3 6
    pairCert55 pairCert60 (by decide) (by decide) (by decide) (by decide)
    pairCheck55 pairCheck60
def pairCert62 : PairCertificate (Fin 48) := .cross cliqueCert18
theorem pairCheck62 : checkPairSized orthGraph ubGraph (labelSet 4300341516) (labelSet 241260996642323) 4 6 pairCert62=true := by
  exact cliqueCheck18
def pairCert63 : PairCertificate (Fin 48) := .first cliqueCert15
theorem pairCheck63 : checkPairSized orthGraph ubGraph (labelSet 8) (labelSet 33579128194400) 3 6 pairCert63=true := by
  exact cliqueCheck15
def pairCert64 : PairCertificate (Fin 48) := .first cliqueCert15
theorem pairCheck64 : checkPairSized orthGraph ubGraph (labelSet 8) (labelSet 23100297056864) 3 6 pairCert64=true := by
  exact cliqueCheck15
def pairCert65 : PairCertificate (Fin 48) := .cross cliqueCert19
theorem pairCheck65 : checkPairSized orthGraph ubGraph (labelSet 70370891923464) (labelSet 10617981391200) 3 6 pairCert65=true := by
  exact cliqueCheck19
def pairCert66 : PairCertificate (Fin 48) := .first cliqueCert6
theorem pairCheck66 : checkPairSized orthGraph ubGraph (labelSet 70370891923464) (labelSet 34816967989088) 4 6 pairCert66=true := by
  exact cliqueCheck6
def pairCert67 : PairCertificate (Fin 48) := .split 20 pairCert65 pairCert66
theorem pairCheck67 : checkPairSized orthGraph ubGraph (labelSet 70370892972040) (labelSet 34816967989088) 4 6 pairCert67=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70370892972040) (labelSet 34816967989088) (labelSet 70370891923464)
    (labelSet 10617981391200) (labelSet 70370891923464) 20 3 6
    pairCert65 pairCert66 (by decide) (by decide) (by decide) (by decide)
    pairCheck65 pairCheck66
def pairCert68 : PairCertificate (Fin 48) := .split 32 pairCert64 pairCert67
theorem pairCheck68 : checkPairSized orthGraph ubGraph (labelSet 70375187939336) (labelSet 34816967989088) 4 6 pairCert68=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70375187939336) (labelSet 34816967989088) (labelSet 8)
    (labelSet 23100297056864) (labelSet 70370892972040) 32 3 6
    pairCert64 pairCert67 (by decide) (by decide) (by decide) (by decide)
    pairCheck64 pairCheck67
def pairCert69 : PairCertificate (Fin 48) := .split 22 pairCert63 pairCert68
theorem pairCheck69 : checkPairSized orthGraph ubGraph (labelSet 70375192133640) (labelSet 34816967989088) 4 6 pairCert69=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 70375192133640) (labelSet 34816967989088) (labelSet 8)
    (labelSet 33579128194400) (labelSet 70375187939336) 22 3 6
    pairCert63 pairCert68 (by decide) (by decide) (by decide) (by decide)
    pairCheck63 pairCheck68
def pairCert70 : PairCertificate (Fin 48) := .first cliqueCert6
theorem pairCheck70 : checkPairSized orthGraph ubGraph (labelSet 70370891923464) (labelSet 186831899646321) 4 6 pairCert70=true := by
  exact cliqueCheck6
def pairCert71 : PairCertificate (Fin 48) := .first cliqueCert17
theorem pairCheck71 : checkPairSized orthGraph ubGraph (labelSet 1099914280968) (labelSet 139426449722739) 4 6 pairCert71=true := by
  exact cliqueCheck17
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck49
#print axioms Mub6.Numerical.ClusterTube48.pairCheck50
#print axioms Mub6.Numerical.ClusterTube48.pairCheck51
#print axioms Mub6.Numerical.ClusterTube48.pairCheck52
#print axioms Mub6.Numerical.ClusterTube48.pairCheck53
#print axioms Mub6.Numerical.ClusterTube48.pairCheck54
#print axioms Mub6.Numerical.ClusterTube48.pairCheck55
#print axioms Mub6.Numerical.ClusterTube48.pairCheck56
#print axioms Mub6.Numerical.ClusterTube48.pairCheck57
#print axioms Mub6.Numerical.ClusterTube48.pairCheck58
#print axioms Mub6.Numerical.ClusterTube48.pairCheck59
#print axioms Mub6.Numerical.ClusterTube48.pairCheck60
#print axioms Mub6.Numerical.ClusterTube48.pairCheck61
#print axioms Mub6.Numerical.ClusterTube48.pairCheck62
#print axioms Mub6.Numerical.ClusterTube48.pairCheck63
#print axioms Mub6.Numerical.ClusterTube48.pairCheck64
#print axioms Mub6.Numerical.ClusterTube48.pairCheck65
#print axioms Mub6.Numerical.ClusterTube48.pairCheck66
#print axioms Mub6.Numerical.ClusterTube48.pairCheck67
#print axioms Mub6.Numerical.ClusterTube48.pairCheck68
#print axioms Mub6.Numerical.ClusterTube48.pairCheck69
#print axioms Mub6.Numerical.ClusterTube48.pairCheck70
#print axioms Mub6.Numerical.ClusterTube48.pairCheck71
