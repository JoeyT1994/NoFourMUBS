import LiteralPairChunk004
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def pairCert120 : PairCertificate (Fin 48) := .cross cliqueCert32
theorem pairCheck120 : checkPairSized orthGraph ubGraph (labelSet 8757706753) (labelSet 17060973291522) 3 6 pairCert120=true := by
  exact cliqueCheck32
def pairCert121 : PairCertificate (Fin 48) := .first cliqueCert33
theorem pairCheck121 : checkPairSized orthGraph ubGraph (labelSet 8757706753) (labelSet 105060559284994) 4 6 pairCert121=true := by
  exact cliqueCheck33
def pairCert122 : PairCertificate (Fin 48) := .split 10 pairCert120 pairCert121
theorem pairCheck122 : checkPairSized orthGraph ubGraph (labelSet 8757707777) (labelSet 105060559284994) 4 6 pairCert122=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 8757707777) (labelSet 105060559284994) (labelSet 8757706753)
    (labelSet 17060973291522) (labelSet 8757706753) 10 3 6
    pairCert120 pairCert121 (by decide) (by decide) (by decide) (by decide)
    pairCheck120 pairCheck121
def pairCert123 : PairCertificate (Fin 48) := .split 37 pairCert119 pairCert122
theorem pairCheck123 : checkPairSized orthGraph ubGraph (labelSet 146196661249) (labelSet 105060559284994) 4 6 pairCert123=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 146196661249) (labelSet 105060559284994) (labelSet 33554432)
    (labelSet 94043678763264) (labelSet 8757707777) 37 3 6
    pairCert119 pairCert122 (by decide) (by decide) (by decide) (by decide)
    pairCheck119 pairCheck122
def pairCert124 : PairCertificate (Fin 48) := .split 26 pairCert118 pairCert123
theorem pairCheck124 : checkPairSized orthGraph ubGraph (labelSet 146263770113) (labelSet 105060559284994) 4 6 pairCert124=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 146263770113) (labelSet 105060559284994) (labelSet 33554432)
    (labelSet 96813143042818) (labelSet 146196661249) 26 3 6
    pairCert118 pairCert123 (by decide) (by decide) (by decide) (by decide)
    pairCheck118 pairCheck123
def pairCert125 : PairCertificate (Fin 48) := .first cliqueCert33
theorem pairCheck125 : checkPairSized orthGraph ubGraph (labelSet 8757706753) (labelSet 158144215038018) 4 6 pairCert125=true := by
  exact cliqueCheck33
def pairCert126 : PairCertificate (Fin 48) := .first cliqueCert30
theorem pairCheck126 : checkPairSized orthGraph ubGraph (labelSet 1107329028) (labelSet 237903364107075) 4 6 pairCert126=true := by
  exact cliqueCheck30
def pairCert127 : PairCertificate (Fin 48) := .first cliqueCert34
theorem pairCheck127 : checkPairSized orthGraph ubGraph (labelSet 8943383117837) (labelSet 246152927836995) 5 6 pairCert127=true := by
  exact cliqueCheck34
def pairCert128 : PairCertificate (Fin 48) := .split 26 pairCert126 pairCert127
theorem pairCheck128 : checkPairSized orthGraph ubGraph (labelSet 8943450226701) (labelSet 246152927836995) 5 6 pairCert128=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 8943450226701) (labelSet 246152927836995) (labelSet 1107329028)
    (labelSet 237903364107075) (labelSet 8943383117837) 26 4 6
    pairCert126 pairCert127 (by decide) (by decide) (by decide) (by decide)
    pairCheck126 pairCheck127
def pairCert129 : PairCertificate (Fin 48) := .split 10 pairCert125 pairCert128
theorem pairCheck129 : checkPairSized orthGraph ubGraph (labelSet 8943450227725) (labelSet 246152927836995) 5 6 pairCert129=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 8943450227725) (labelSet 246152927836995) (labelSet 8757706753)
    (labelSet 158144215038018) (labelSet 8943450226701) 10 4 6
    pairCert125 pairCert128 (by decide) (by decide) (by decide) (by decide)
    pairCheck125 pairCheck128
def pairCert130 : PairCertificate (Fin 48) := .split 45 pairCert124 pairCert129
theorem pairCheck130 : checkPairSized orthGraph ubGraph (labelSet 44127822316557) (labelSet 246152927836995) 5 6 pairCert130=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 44127822316557) (labelSet 246152927836995) (labelSet 146263770113)
    (labelSet 105060559284994) (labelSet 8943450227725) 45 4 6
    pairCert124 pairCert129 (by decide) (by decide) (by decide) (by decide)
    pairCheck124 pairCheck129
def pairCert131 : PairCertificate (Fin 48) := .split 5 pairCert117 pairCert130
theorem pairCheck131 : checkPairSized orthGraph ubGraph (labelSet 44127822316589) (labelSet 246152927836995) 5 6 pairCert131=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 44127822316589) (labelSet 246152927836995) (labelSet 8933649679360)
    (labelSet 213992187548225) (labelSet 44127822316557) 5 4 6
    pairCert117 pairCert130 (by decide) (by decide) (by decide) (by decide)
    pairCheck117 pairCheck130
def pairCert132 : PairCertificate (Fin 48) := .split 4 pairCert110 pairCert131
theorem pairCheck132 : checkPairSized orthGraph ubGraph (labelSet 44127822316605) (labelSet 246152927836995) 5 6 pairCert132=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 44127822316605) (labelSet 246152927836995) (labelSet 138613392388)
    (labelSet 175112826540803) (labelSet 44127822316589) 4 4 6
    pairCert110 pairCert131 (by decide) (by decide) (by decide) (by decide)
    pairCheck110 pairCheck131
def pairCert133 : PairCertificate (Fin 48) := .first cliqueCert35
theorem pairCheck133 : checkPairSized orthGraph ubGraph (labelSet 134217728) (labelSet 151048966770880) 3 6 pairCert133=true := by
  exact cliqueCheck35
def pairCert134 : PairCertificate (Fin 48) := .first cliqueCert35
theorem pairCheck134 : checkPairSized orthGraph ubGraph (labelSet 134217728) (labelSet 145361115189248) 3 6 pairCert134=true := by
  exact cliqueCheck35
def pairCert135 : PairCertificate (Fin 48) := .cross cliqueCert36
theorem pairCheck135 : checkPairSized orthGraph ubGraph (labelSet 8757706753) (labelSet 14449698177200) 3 6 pairCert135=true := by
  exact cliqueCheck36
def pairCert136 : PairCertificate (Fin 48) := .first cliqueCert33
theorem pairCheck136 : checkPairSized orthGraph ubGraph (labelSet 8757706753) (labelSet 155532939923696) 4 6 pairCert136=true := by
  exact cliqueCheck33
def pairCert137 : PairCertificate (Fin 48) := .split 45 pairCert135 pairCert136
theorem pairCheck137 : checkPairSized orthGraph ubGraph (labelSet 35193129795585) (labelSet 155532939923696) 4 6 pairCert137=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 35193129795585) (labelSet 155532939923696) (labelSet 8757706753)
    (labelSet 14449698177200) (labelSet 8757706753) 45 3 6
    pairCert135 pairCert136 (by decide) (by decide) (by decide) (by decide)
    pairCheck135 pairCheck136
def pairCert138 : PairCertificate (Fin 48) := .split 13 pairCert134 pairCert137
theorem pairCheck138 : checkPairSized orthGraph ubGraph (labelSet 35193129803777) (labelSet 155532939923696) 4 6 pairCert138=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 35193129803777) (labelSet 155532939923696) (labelSet 134217728)
    (labelSet 145361115189248) (labelSet 35193129795585) 13 3 6
    pairCert134 pairCert137 (by decide) (by decide) (by decide) (by decide)
    pairCheck134 pairCheck137
def pairCert139 : PairCertificate (Fin 48) := .split 11 pairCert133 pairCert138
theorem pairCheck139 : checkPairSized orthGraph ubGraph (labelSet 35193129805825) (labelSet 155532939923696) 4 6 pairCert139=true := by
  exact checkPairSized_split_literal orthGraph ubGraph
    (labelSet 35193129805825) (labelSet 155532939923696) (labelSet 134217728)
    (labelSet 151048966770880) (labelSet 35193129803777) 11 3 6
    pairCert133 pairCert138 (by decide) (by decide) (by decide) (by decide)
    pairCheck133 pairCheck138
def pairCert140 : PairCertificate (Fin 48) := .first cliqueCert35
theorem pairCheck140 : checkPairSized orthGraph ubGraph (labelSet 134217728) (labelSet 26713624084545) 3 6 pairCert140=true := by
  exact cliqueCheck35
def pairCert141 : PairCertificate (Fin 48) := .first cliqueCert35
theorem pairCheck141 : checkPairSized orthGraph ubGraph (labelSet 134217728) (labelSet 101211981218096) 3 6 pairCert141=true := by
  exact cliqueCheck35
def pairCert142 : PairCertificate (Fin 48) := .cross cliqueCert37
theorem pairCheck142 : checkPairSized orthGraph ubGraph (labelSet 1099914280968) (labelSet 74867734151425) 3 6 pairCert142=true := by
  exact cliqueCheck37
def pairCert143 : PairCertificate (Fin 48) := .first cliqueCert17
theorem pairCheck143 : checkPairSized orthGraph ubGraph (labelSet 1099914280968) (labelSet 101566324605297) 4 6 pairCert143=true := by
  exact cliqueCheck17
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.pairCheck120
#print axioms Mub6.Numerical.ClusterTube48.pairCheck121
#print axioms Mub6.Numerical.ClusterTube48.pairCheck122
#print axioms Mub6.Numerical.ClusterTube48.pairCheck123
#print axioms Mub6.Numerical.ClusterTube48.pairCheck124
#print axioms Mub6.Numerical.ClusterTube48.pairCheck125
#print axioms Mub6.Numerical.ClusterTube48.pairCheck126
#print axioms Mub6.Numerical.ClusterTube48.pairCheck127
#print axioms Mub6.Numerical.ClusterTube48.pairCheck128
#print axioms Mub6.Numerical.ClusterTube48.pairCheck129
#print axioms Mub6.Numerical.ClusterTube48.pairCheck130
#print axioms Mub6.Numerical.ClusterTube48.pairCheck131
#print axioms Mub6.Numerical.ClusterTube48.pairCheck132
#print axioms Mub6.Numerical.ClusterTube48.pairCheck133
#print axioms Mub6.Numerical.ClusterTube48.pairCheck134
#print axioms Mub6.Numerical.ClusterTube48.pairCheck135
#print axioms Mub6.Numerical.ClusterTube48.pairCheck136
#print axioms Mub6.Numerical.ClusterTube48.pairCheck137
#print axioms Mub6.Numerical.ClusterTube48.pairCheck138
#print axioms Mub6.Numerical.ClusterTube48.pairCheck139
#print axioms Mub6.Numerical.ClusterTube48.pairCheck140
#print axioms Mub6.Numerical.ClusterTube48.pairCheck141
#print axioms Mub6.Numerical.ClusterTube48.pairCheck142
#print axioms Mub6.Numerical.ClusterTube48.pairCheck143
