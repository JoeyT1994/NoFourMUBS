import LiteralClusterGraph
import GraphLiteralAssembly
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 3200000
namespace Mub6.Numerical.ClusterTube48
open Mub6.Numerical.GraphKernel
def cliqueCert0 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck0 : checkClique orthGraph (labelSet 262144) 3 cliqueCert0=true := by
  decide
def cliqueCert1 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,3,0,0,2,0,0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,2,0,0,0,0,1,0,2,0,2,0,0,0,0,0,0,0,0,0,3,0,0] v)
theorem cliqueCheck1 : checkClique orthGraph (labelSet 105599356408977) 6 cliqueCert1=true := by
  decide
def cliqueCert2 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0] v)
theorem cliqueCheck2 : checkClique orthGraph (labelSet 8796143616000) 4 cliqueCert2=true := by
  decide
def cliqueCert3 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,1,0,1,0,2,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,3,1,1,0,0,3,3] v)
theorem cliqueCheck3 : checkClique orthGraph (labelSet 244385803471488) 6 cliqueCert3=true := by
  decide
def cliqueCert4 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck4 : checkClique orthGraph (labelSet 34360528896) 4 cliqueCert4=true := by
  decide
def cliqueCert5 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,2,1,0,0,0,3,2,3,1,0,0,0,0,0,0,0,2,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0] v)
theorem cliqueCheck5 : checkClique orthGraph (labelSet 9934559457536) 6 cliqueCert5=true := by
  decide
def cliqueCert6 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0] v)
theorem cliqueCheck6 : checkClique orthGraph (labelSet 70370891923464) 4 cliqueCert6=true := by
  decide
def cliqueCert7 : CliqueCertificate (Fin 48) := .color 1 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck7 : checkClique orthGraph (labelSet 36523999232) 3 cliqueCert7=true := by
  decide
def cliqueCert8 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck8 : checkClique orthGraph (labelSet 0) 3 cliqueCert8=true := by
  decide
def cliqueCert9 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![1,0,0,0,0,0,0,0,0,1,2,3,0,1,0,0,0,0,0,0,0,0,0,2,0,0,1,0,4,0,0,0,3,0,2,0,0,0,2,0,3,0,4,0,0,3,0,0] v)
theorem cliqueCheck9 : checkClique orthGraph (labelSet 43186244300305) 6 cliqueCert9=true := by
  decide
def cliqueCert10 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck10 : checkClique orthGraph (labelSet 550426902528) 4 cliqueCert10=true := by
  decide
def cliqueCert11 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck11 : checkClique orthGraph (labelSet 70368744177664) 3 cliqueCert11=true := by
  decide
def cliqueCert12 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,0,0,0,0,0,0,0,1,2,3,0,1,0,1,0,0,0,0,0,0,0,2,4,0,3,0,0,0,4,0,3,3,0,0,0,0,4,0,0,0,0,2,0,1,0,0] v)
theorem cliqueCheck12 : checkClique orthGraph (labelSet 46468421430801) 6 cliqueCert12=true := by
  decide
def cliqueCert13 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck13 : checkClique orthGraph (labelSet 550326239232) 4 cliqueCert13=true := by
  decide
def cliqueCert14 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,2,1,0,1,0,2,0,2,0,0,0,2,0,0,0,3,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck14 : checkClique orthGraph (labelSet 79751822184452) 5 cliqueCert14=true := by
  decide
def cliqueCert15 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck15 : checkClique orthGraph (labelSet 8) 3 cliqueCert15=true := by
  decide
def cliqueCert16 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![1,3,0,0,0,0,0,0,0,0,2,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,2,1,0,0,3,1,0] v)
theorem cliqueCheck16 : checkClique orthGraph (labelSet 112727859268867) 6 cliqueCert16=true := by
  decide
def cliqueCert17 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0] v)
theorem cliqueCheck17 : checkClique orthGraph (labelSet 1099914280968) 4 cliqueCert17=true := by
  decide
def cliqueCert18 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,0,0,0,0,0,0,0,1,3,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,3,0,3,2,4,1,0,0,1,2,0,2,2,0,4,0,0,3,0,0,4,4] v)
theorem cliqueCheck18 : checkClique orthGraph (labelSet 241260996642323) 6 cliqueCert18=true := by
  decide
def cliqueCert19 : CliqueCertificate (Fin 48) := .color 4 (fun v => ![0,0,0,0,0,1,2,0,0,0,0,0,0,0,3,0,0,1,0,0,0,0,0,0,2,0,0,0,0,1,0,0,0,0,0,1,0,3,0,2,2,0,0,0,0,0,0,0] v)
theorem cliqueCheck19 : checkClique orthGraph (labelSet 10617981391200) 6 cliqueCert19=true := by
  decide
def cliqueCert20 : CliqueCertificate (Fin 48) := .color 3 (fun v => ![0,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck20 : checkClique orthGraph (labelSet 131340) 4 cliqueCert20=true := by
  decide
def cliqueCert21 : CliqueCertificate (Fin 48) := .color 1 (fun v => ![0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] v)
theorem cliqueCheck21 : checkClique orthGraph (labelSet 71468255936512) 3 cliqueCert21=true := by
  decide
def cliqueCert22 : CliqueCertificate (Fin 48) := .color 5 (fun v => ![0,0,0,0,0,0,3,0,0,0,0,4,0,0,2,1,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,1,2,1,0,0,4,0,0,1,3,3,2,0,0,3] v)
theorem cliqueCheck22 : checkClique orthGraph (labelSet 174058935212609) 6 cliqueCert22=true := by
  decide
def cliqueCert23 : CliqueCertificate (Fin 48) := .size
theorem cliqueCheck23 : checkClique orthGraph (labelSet 36175872) 4 cliqueCert23=true := by
  decide
end Mub6.Numerical.ClusterTube48
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck0
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck1
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck2
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck3
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck4
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck5
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck6
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck7
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck8
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck9
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck10
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck11
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck12
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck13
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck14
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck15
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck16
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck17
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck18
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck19
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck20
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck21
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck22
#print axioms Mub6.Numerical.ClusterTube48.cliqueCheck23
