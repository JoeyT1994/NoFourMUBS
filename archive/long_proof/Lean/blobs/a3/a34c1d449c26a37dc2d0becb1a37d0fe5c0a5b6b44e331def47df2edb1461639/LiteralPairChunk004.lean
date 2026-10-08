import LiteralPairChunk003
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert96 : PairCertificate (Fin 48) := .split 2 pairCert94 pairCert95
theorem pairCheck96 : checkPairSized orthGraph ubGraph (labelSet 71470842577156) (labelSet 281401777905523) 5 6 pairCert96=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71470842577156) (labelSet 281401777905523) (labelSet 136773888)
    (labelSet 122520736915057) (labelSet 71470842577152) 2 4 6
    pairCert94 pairCert95 (by decide) (by decide) (by decide) (by decide)
    pairCheck94 pairCheck95
def pairCert97 : PairCertificate (Fin 48) := .split 3 pairCert87 pairCert96
theorem pairCheck97 : checkPairSized orthGraph ubGraph (labelSet 71470842577164) (labelSet 281401777905523) 5 6 pairCert97=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71470842577164) (labelSet 281401777905523) (labelSet 71470708097280)
    (labelSet 209380813364849) (labelSet 71470842577156) 3 4 6
    pairCert87 pairCert96 (by decide) (by decide) (by decide) (by decide)
    pairCheck87 pairCheck96
def pairCert98 : PairCertificate (Fin 48) := .split 32 pairCert72 pairCert97
theorem pairCheck98 : checkPairSized orthGraph ubGraph (labelSet 71475137544460) (labelSet 281401777905523) 5 6 pairCert98=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71475137544460) (labelSet 281401777905523) (labelSet 131340)
    (labelSet 269667927104114) (labelSet 71470842577164) 32 4 6
    pairCert72 pairCert97 (by decide) (by decide) (by decide) (by decide)
    pairCheck72 pairCheck97
def pairCert99 : PairCertificate (Fin 48) := .split 22 pairCert71 pairCert98
theorem pairCheck99 : checkPairSized orthGraph ubGraph (labelSet 71475141738764) (labelSet 281401777905523) 5 6 pairCert99=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71475141738764) (labelSet 281401777905523) (labelSet 1099914280968)
    (labelSet 139426449722739) (labelSet 71475137544460) 22 4 6
    pairCert71 pairCert98 (by decide) (by decide) (by decide) (by decide)
    pairCheck71 pairCheck98
def pairCert100 : PairCertificate (Fin 48) := .split 20 pairCert70 pairCert99
theorem pairCheck100 : checkPairSized orthGraph ubGraph (labelSet 71475142787340) (labelSet 281401777905523) 5 6 pairCert100=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71475142787340) (labelSet 281401777905523) (labelSet 70370891923464)
    (labelSet 186831899646321) (labelSet 71475141738764) 20 4 6
    pairCert70 pairCert99 (by decide) (by decide) (by decide) (by decide)
    pairCheck70 pairCheck99
def pairCert101 : PairCertificate (Fin 48) := .split 36 pairCert69 pairCert100
theorem pairCheck101 : checkPairSized orthGraph ubGraph (labelSet 71543862264076) (labelSet 281401777905523) 5 6 pairCert101=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71543862264076) (labelSet 281401777905523) (labelSet 70375192133640)
    (labelSet 34816967989088) (labelSet 71475142787340) 36 4 6
    pairCert69 pairCert100 (by decide) (by decide) (by decide) (by decide)
    pairCheck69 pairCheck100
def pairCert102 : PairCertificate (Fin 48) := .split 23 pairCert62 pairCert101
theorem pairCheck102 : checkPairSized orthGraph ubGraph (labelSet 71543870652684) (labelSet 281401777905523) 5 6 pairCert102=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71543870652684) (labelSet 281401777905523) (labelSet 4300341516)
    (labelSet 241260996642323) (labelSet 71543862264076) 23 4 6
    pairCert62 pairCert101 (by decide) (by decide) (by decide) (by decide)
    pairCheck62 pairCheck101
def pairCert103 : PairCertificate (Fin 48) := .split 13 pairCert61 pairCert102
theorem pairCheck103 : checkPairSized orthGraph ubGraph (labelSet 71543870660876) (labelSet 281401777905523) 5 6 pairCert103=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 71543870660876) (labelSet 281401777905523) (labelSet 1104214491144)
    (labelSet 253602870517507) (labelSet 71543870652684) 13 4 6
    pairCert61 pairCert102 (by decide) (by decide) (by decide) (by decide)
    pairCheck61 pairCheck102
def pairCert104 : PairCertificate (Fin 48) := .first cliqueCert28
theorem pairCheck104 : checkPairSized orthGraph ubGraph (labelSet 33554432) (labelSet 157507217657858) 3 6 pairCert104=true := by
  exact cliqueCheck28
def pairCert105 : PairCertificate (Fin 48) := .first cliqueCert28
theorem pairCheck105 : checkPairSized orthGraph ubGraph (labelSet 33554432) (labelSet 23375905837313) 3 6 pairCert105=true := by
  exact cliqueCheck28
def pairCert106 : PairCertificate (Fin 48) := .cross cliqueCert29
theorem pairCheck106 : checkPairSized orthGraph ubGraph (labelSet 1107329028) (labelSet 167414092399363) 3 6 pairCert106=true := by
  exact cliqueCheck29
def pairCert107 : PairCertificate (Fin 48) := .first cliqueCert30
theorem pairCheck107 : checkPairSized orthGraph ubGraph (labelSet 1107329028) (labelSet 175112826540803) 4 6 pairCert107=true := by
  exact cliqueCheck30
def pairCert108 : PairCertificate (Fin 48) := .split 26 pairCert106 pairCert107
theorem pairCheck108 : checkPairSized orthGraph ubGraph (labelSet 1174437892) (labelSet 175112826540803) 4 6 pairCert108=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 1174437892) (labelSet 175112826540803) (labelSet 1107329028)
    (labelSet 167414092399363) (labelSet 1107329028) 26 3 6
    pairCert106 pairCert107 (by decide) (by decide) (by decide) (by decide)
    pairCheck106 pairCheck107
def pairCert109 : PairCertificate (Fin 48) := .split 37 pairCert105 pairCert108
theorem pairCheck109 : checkPairSized orthGraph ubGraph (labelSet 138613391364) (labelSet 175112826540803) 4 6 pairCert109=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 138613391364) (labelSet 175112826540803) (labelSet 33554432)
    (labelSet 23375905837313) (labelSet 1174437892) 37 3 6
    pairCert105 pairCert108 (by decide) (by decide) (by decide) (by decide)
    pairCheck105 pairCheck108
def pairCert110 : PairCertificate (Fin 48) := .split 10 pairCert104 pairCert109
theorem pairCheck110 : checkPairSized orthGraph ubGraph (labelSet 138613392388) (labelSet 175112826540803) 4 6 pairCert110=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 138613392388) (labelSet 175112826540803) (labelSet 33554432)
    (labelSet 157507217657858) (labelSet 138613391364) 10 3 6
    pairCert104 pairCert109 (by decide) (by decide) (by decide) (by decide)
    pairCheck104 pairCheck109
def pairCert111 : PairCertificate (Fin 48) := .first cliqueCert28
theorem pairCheck111 : checkPairSized orthGraph ubGraph (labelSet 33554432) (labelSet 143575660793920) 3 6 pairCert111=true := by
  exact cliqueCheck28
def pairCert112 : PairCertificate (Fin 48) := .first cliqueCert28
theorem pairCheck112 : checkPairSized orthGraph ubGraph (labelSet 33554432) (labelSet 211240181957185) 3 6 pairCert112=true := by
  exact cliqueCheck28
def pairCert113 : PairCertificate (Fin 48) := .cross cliqueCert31
theorem pairCheck113 : checkPairSized orthGraph ubGraph (labelSet 8796143616000) (labelSet 71033928339521) 3 6 pairCert113=true := by
  exact cliqueCheck31
def pairCert114 : PairCertificate (Fin 48) := .first cliqueCert2
theorem pairCheck114 : checkPairSized orthGraph ubGraph (labelSet 8796143616000) (labelSet 213992187548225) 4 6 pairCert114=true := by
  exact cliqueCheck2
def pairCert115 : PairCertificate (Fin 48) := .split 37 pairCert113 pairCert114
theorem pairCheck115 : checkPairSized orthGraph ubGraph (labelSet 8933582569472) (labelSet 213992187548225) 4 6 pairCert115=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 8933582569472) (labelSet 213992187548225) (labelSet 8796143616000)
    (labelSet 71033928339521) (labelSet 8796143616000) 37 3 6
    pairCert113 pairCert114 (by decide) (by decide) (by decide) (by decide)
    pairCheck113 pairCheck114
def pairCert116 : PairCertificate (Fin 48) := .split 26 pairCert112 pairCert115
theorem pairCheck116 : checkPairSized orthGraph ubGraph (labelSet 8933649678336) (labelSet 213992187548225) 4 6 pairCert116=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 8933649678336) (labelSet 213992187548225) (labelSet 33554432)
    (labelSet 211240181957185) (labelSet 8933582569472) 26 3 6
    pairCert112 pairCert115 (by decide) (by decide) (by decide) (by decide)
    pairCheck112 pairCheck115
def pairCert117 : PairCertificate (Fin 48) := .split 10 pairCert111 pairCert116
theorem pairCheck117 : checkPairSized orthGraph ubGraph (labelSet 8933649679360) (labelSet 213992187548225) 4 6 pairCert117=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 8933649679360) (labelSet 213992187548225) (labelSet 33554432)
    (labelSet 143575660793920) (labelSet 8933649678336) 10 3 6
    pairCert111 pairCert116 (by decide) (by decide) (by decide) (by decide)
    pairCheck111 pairCheck116
def pairCert118 : PairCertificate (Fin 48) := .first cliqueCert28
theorem pairCheck118 : checkPairSized orthGraph ubGraph (labelSet 33554432) (labelSet 96813143042818) 3 6 pairCert118=true := by
  exact cliqueCheck28
def pairCert119 : PairCertificate (Fin 48) := .first cliqueCert28
theorem pairCheck119 : checkPairSized orthGraph ubGraph (labelSet 33554432) (labelSet 94043678763264) 3 6 pairCert119=true := by
  exact cliqueCheck28
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck96
#print axioms Mub6.Numerical.ClusterTube48.pairCheck97
#print axioms Mub6.Numerical.ClusterTube48.pairCheck98
#print axioms Mub6.Numerical.ClusterTube48.pairCheck99
#print axioms Mub6.Numerical.ClusterTube48.pairCheck100
#print axioms Mub6.Numerical.ClusterTube48.pairCheck101
#print axioms Mub6.Numerical.ClusterTube48.pairCheck102
#print axioms Mub6.Numerical.ClusterTube48.pairCheck103
#print axioms Mub6.Numerical.ClusterTube48.pairCheck104
#print axioms Mub6.Numerical.ClusterTube48.pairCheck105
#print axioms Mub6.Numerical.ClusterTube48.pairCheck106
#print axioms Mub6.Numerical.ClusterTube48.pairCheck107
#print axioms Mub6.Numerical.ClusterTube48.pairCheck108
#print axioms Mub6.Numerical.ClusterTube48.pairCheck109
#print axioms Mub6.Numerical.ClusterTube48.pairCheck110
#print axioms Mub6.Numerical.ClusterTube48.pairCheck111
#print axioms Mub6.Numerical.ClusterTube48.pairCheck112
#print axioms Mub6.Numerical.ClusterTube48.pairCheck113
#print axioms Mub6.Numerical.ClusterTube48.pairCheck114
#print axioms Mub6.Numerical.ClusterTube48.pairCheck115
#print axioms Mub6.Numerical.ClusterTube48.pairCheck116
#print axioms Mub6.Numerical.ClusterTube48.pairCheck117
#print axioms Mub6.Numerical.ClusterTube48.pairCheck118
#print axioms Mub6.Numerical.ClusterTube48.pairCheck119
