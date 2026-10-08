import LiteralCliqueChunk004
import GraphLiteralAssembly
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def cliqueCert120 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck120 : checkClique orthGraph (labelSet 158329674399744) 4 cliqueCert120=true := by
  decide
def cliqueCert121 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,3,3,0,4,0,1,0,0,0,0,2,0,1,0,4,0,0] v)
theorem cliqueCheck121 : checkClique orthGraph (labelSet 46546708791303) 6 cliqueCert121=true := by
  decide
def cliqueCert122 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1] v)
theorem cliqueCheck122 : checkClique orthGraph (labelSet 211252261421056) 3 cliqueCert122=true := by
  decide
def cliqueCert123 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,2] v)
theorem cliqueCheck123 : checkClique orthGraph (labelSet 211252265615360) 4 cliqueCert123=true := by
  decide
def cliqueCert124 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,3,0,1,1,0,0,3,0,0,0,0,1,0,0,3,0,2,4,0,0,0,0,4,0,0,2,2,0,0,4,0,0,0,4,0,2,0,0,0,0,1,3,0,0,3,0,0] v)
theorem cliqueCheck124 : checkClique orthGraph (labelSet 41870806128858) 6 cliqueCert124=true := by
  decide
def cliqueCert125 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,2,0] v)
theorem cliqueCheck125 : checkClique orthGraph (labelSet 211114823516160) 4 cliqueCert125=true := by
  decide
def cliqueCert126 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,1,0,0,0,0,0,0,0,0,3,2] v)
theorem cliqueCheck126 : checkClique orthGraph (labelSet 211252266664960) 5 cliqueCert126=true := by
  decide
def cliqueCert127 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,1,0,0,0,2,1,0,2,0,0,0,0,0,1,3,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,3,0,2,0,0,0,2,0] v)
theorem cliqueCheck127 : checkClique orthGraph (labelSet 93497168415744) 5 cliqueCert127=true := by
  decide
def cliqueCert128 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,2,0,1,3,0,0,0,0,0,0,0,0,3,1,0,1,0,0,0,0,0,0,0,0,0,1,3,0,0,2,0,0,0,0,0,0,2] v)
theorem cliqueCheck128 : checkClique orthGraph (labelSet 177227891271680) 5 cliqueCert128=true := by
  decide
def cliqueCert129 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,2,0,3,0,0,1,0,2,0,0,0,0,0,0,0,0,3,3,1,0,0,0] v)
theorem cliqueCheck129 : checkClique orthGraph (labelSet 30831759499328) 5 cliqueCert129=true := by
  decide
def cliqueCert130 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,2,0,0,0,0,1,0,0,0,0,0,3,0,0,1,3] v)
theorem cliqueCheck130 : checkClique orthGraph (labelSet 224545453803520) 5 cliqueCert130=true := by
  decide
def cliqueCert131 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,1,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,1,0,2,0,1,0] v)
theorem cliqueCheck131 : checkClique orthGraph (labelSet 92438509134912) 5 cliqueCert131=true := by
  decide
def cliqueCert132 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,1,0,0,0,2,0,0,0,1,0,0,2,3,3,0,1] v)
theorem cliqueCheck132 : checkClique orthGraph (labelSet 203484880199680) 5 cliqueCert132=true := by
  decide
def cliqueCert133 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,3,0,0,0,0,0,0,0,0,0,2,0,1,0,2] v)
theorem cliqueCheck133 : checkClique orthGraph (labelSet 184870701629504) 5 cliqueCert133=true := by
  decide
def cliqueCert134 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,2,0,0,0,2,0,0,0,0,3,0,0,0,1,1] v)
theorem cliqueCheck134 : checkClique orthGraph (labelSet 224446677813248) 5 cliqueCert134=true := by
  decide
def cliqueCert135 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,1,2,0] v)
theorem cliqueCheck135 : checkClique orthGraph (labelSet 123192546977792) 5 cliqueCert135=true := by
  decide
def cliqueCert136 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,3,0,4,1,2,0,0,0,0,0,0,0,4,0,0,3,0,2,0,0,2,2,3,0,3,0,4,0,0,0,0,1,1,2,1,1,3] v)
theorem cliqueCheck136 : checkClique orthGraph (labelSet 278432336373824) 6 cliqueCert136=true := by
  decide
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck120
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck121
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck122
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck123
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck124
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck125
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck126
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck127
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck128
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck129
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck130
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck131
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck132
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck133
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck134
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck135
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck136
