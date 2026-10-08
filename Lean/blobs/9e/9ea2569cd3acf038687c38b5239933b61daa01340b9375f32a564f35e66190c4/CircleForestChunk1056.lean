import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1553733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
def hex_1553733 : String := "424143050943440605444042080806404209050541054305440605"
theorem cover_1553733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1553733)
  decide +kernel
#print axioms cover_1553733

def state_1553764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 20)))
def hex_1553764 : String := "440840424143054408054306440608410506420806"
theorem cover_1553764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553764 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1553764)
  decide +kernel
#print axioms cover_1553764

def state_1553786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 40)))
def hex_1553786 : String := "40424144074308070741440643060706420806"
theorem cover_1553786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1553786)
  decide +kernel
#print axioms cover_1553786

def state_1553807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 58) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 41)))
def hex_1553807 : String := "4143444042410A07410A4308070840424105440A0A4105440A05420A05440A0A4344084042440741430807074441430807074143050A4308070844070A"
theorem cover_1553807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553807 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1553807)
  decide +kernel
#print axioms cover_1553807

def state_1553868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 58) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 41)))
def hex_1553868 : String := "4143444042410543060741050642080505440A0A4344064042444143050706410543050A4406050644074042070A0A"
theorem cover_1553868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553868 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1553868)
  decide +kernel
#print axioms cover_1553868

def state_1553915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 41)))
def hex_1553915 : String := "424143080943080A41434405050A430644060A"
theorem cover_1553915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553915 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_1553915)
  decide +kernel
#print axioms cover_1553915

def state_1553934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
def hex_1553934 : String := "43064406404241434406400706070741430644064007060606"
theorem cover_1553934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1553934)
  decide +kernel
#print axioms cover_1553934
end Mub6.Numerical.CircleFullD0.Forest
