import LiteralCliqueChunk001
import GraphLiteralAssembly
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def cliqueCert48 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![1,0,0,0,0,2,0,2,0,0,3,0,0,0,0,0,0,1,0,0,0,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,1,2,0,0] v)
theorem cliqueCheck48 : checkClique orthGraph (labelSet 202456187405729) 6 cliqueCert48=true := by
  decide
def cliqueCert49 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,2,0,0,0,3,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,2,0,0,0,3,0,0,0,0,0,1,3] v)
theorem cliqueCheck49 : checkClique orthGraph (labelSet 229870146789376) 6 cliqueCert49=true := by
  decide
def cliqueCert50 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,1,1,0,0,0,2,0,0,3,1,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,3,1,0,0,0,0,0] v)
theorem cliqueCheck50 : checkClique orthGraph (labelSet 6649683368384) 6 cliqueCert50=true := by
  decide
def cliqueCert51 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,2,0,2,1,1,0,0,0,0,0,3,0,2,0,0,1,0,3,0,0,0,0,0,0,0,0,0,0,0,2,0,0,3] v)
theorem cliqueCheck51 : checkClique orthGraph (labelSet 158335211831564) 5 cliqueCert51=true := by
  decide
def cliqueCert52 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck52 : checkClique orthGraph (labelSet 17596489564160) 4 cliqueCert52=true := by
  decide
def cliqueCert53 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,3,0,1,0,0,0,0,0,0,0,0,1,1,0,0,2,0,3,0,0,0,0,0,2,0,0,0,0,0,3,0,0,0] v)
theorem cliqueCheck53 : checkClique orthGraph (labelSet 158610131157520) 5 cliqueCert53=true := by
  decide
def cliqueCert54 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1,2,0,1,0,0,2,0,0,0,3,0,0,0,2,0,0,0,3,0,0,0,0,0,3,0] v)
theorem cliqueCheck54 : checkClique orthGraph (labelSet 71543734018304) 5 cliqueCert54=true := by
  decide
def cliqueCert55 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,2,0,1,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,3,0,0,0,3,0,3,0,0,0,0,0,2,0,0,2,0] v)
theorem cliqueCheck55 : checkClique orthGraph (labelSet 79407654916192) 5 cliqueCert55=true := by
  decide
def cliqueCert56 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,1,0,0,1,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,3,0,0,0,0,0,2,3,0,2,0,0,3] v)
theorem cliqueCheck56 : checkClique orthGraph (labelSet 165253195258432) 5 cliqueCert56=true := by
  decide
def cliqueCert57 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,2,0,0,0,0,0,0,0,0,3,0,1,0,0,0,3,0,0,2,0,0,0,1,0,0,0,0,0,2,0,3,0,0] v)
theorem cliqueCheck57 : checkClique orthGraph (labelSet 44127651660849) 5 cliqueCert57=true := by
  decide
def cliqueCert58 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,2,0,0] v)
theorem cliqueCheck58 : checkClique orthGraph (labelSet 36309653521408) 4 cliqueCert58=true := by
  decide
def cliqueCert59 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,2,0,0,0,0,0,3,0,0,0,0,0,3,2,1,0,0,3,0,0] v)
theorem cliqueCheck59 : checkClique orthGraph (labelSet 42906995928064) 5 cliqueCert59=true := by
  decide
def cliqueCert60 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,2,0,0,0,0,0,0,2] v)
theorem cliqueCheck60 : checkClique orthGraph (labelSet 141922899345664) 4 cliqueCert60=true := by
  decide
def cliqueCert61 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,0,0,1,0,2,0,0,0,0,0,0,0] v)
theorem cliqueCheck61 : checkClique orthGraph (labelSet 1432371593216) 4 cliqueCert61=true := by
  decide
def cliqueCert62 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck62 : checkClique orthGraph (labelSet 140844862537728) 4 cliqueCert62=true := by
  decide
def cliqueCert63 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck63 : checkClique orthGraph (labelSet 277025407232) 4 cliqueCert63=true := by
  decide
def cliqueCert64 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck64 : checkClique orthGraph (labelSet 35184372089856) 4 cliqueCert64=true := by
  decide
def cliqueCert65 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,0,0,1,0,0,0,0,2,0,0,0,4,0,0,0,0,1,1,3,0,0,0,0,0,0,0,3,0,2,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,4,0] v)
theorem cliqueCheck65 : checkClique orthGraph (labelSet 87971401114192) 6 cliqueCert65=true := by
  decide
def cliqueCert66 : CliqueCertificate (Fin 48) := .color 2 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck66 : checkClique orthGraph (labelSet 377957123072) 3 cliqueCert66=true := by
  decide
def cliqueCert67 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,1,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck67 : checkClique orthGraph (labelSet 377957123328) 4 cliqueCert67=true := by
  decide
def cliqueCert68 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,4,2,0,1,0,0,0,0,0,0,2,0,3,0,0,0,0,0,1,0,3,4,0,1,0,0,0,2,0,0,0,0,0,4,0,0,3,0,3,1,0,0,2,4,0,3,0] v)
theorem cliqueCheck68 : checkClique orthGraph (labelSet 98561201580726) 6 cliqueCert68=true := by
  decide
def cliqueCert69 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,2] v)
theorem cliqueCheck69 : checkClique orthGraph (labelSet 141081085740032) 4 cliqueCert69=true := by
  decide
def cliqueCert70 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,0,2,0,0,0,0,0,0,0,0,3] v)
theorem cliqueCheck70 : checkClique orthGraph (labelSet 141117592962304) 5 cliqueCert70=true := by
  decide
def cliqueCert71 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,1,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,1,0] v)
theorem cliqueCheck71 : checkClique orthGraph (labelSet 70506451569728) 4 cliqueCert71=true := by
  decide
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck48
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck49
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck50
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck51
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck52
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck53
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck54
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck55
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck56
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck57
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck58
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck59
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck60
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck61
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck62
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck63
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck64
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck65
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck66
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck67
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck68
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck69
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck70
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck71
