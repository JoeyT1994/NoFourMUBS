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
def state_1318792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 205)))
def hex_1318792 : String := "434207054241400844430706064008444342070708084105404409084443050905"
theorem cover_1318792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1318792)
  decide +kernel
#print axioms cover_1318792

def state_1318826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 204)))
def hex_1318826 : String := "434241404443050A0708404443070A0744080708424140440A06060A41054044430807434241050A05090A"
theorem cover_1318826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1318826)
  decide +kernel
#print axioms cover_1318826

def state_1318869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 125) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 205)))
def hex_1318869 : String := "4342070542410640444307060606410540444305420605054443050605"
theorem cover_1318869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318869 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1318869)
  decide +kernel
#print axioms cover_1318869

def state_1318898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 103)))
def hex_1318898 : String := "42074105404344420705050843444207050506"
theorem cover_1318898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1318898)
  decide +kernel
#print axioms cover_1318898

def state_1318918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 51)))
def hex_1318918 : String := "434442070607444241400844430705070541404406084443060943420706084006440643060808"
theorem cover_1318918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1318918)
  decide +kernel
#print axioms cover_1318918

def state_1318958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 51)))
def hex_1318958 : String := "4442074140430644064207410506430844084207084006430644068007"
theorem cover_1318958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1318958)
  decide +kernel
#print axioms cover_1318958

def state_1318989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 63) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 102)))
def hex_1318989 : String := "41404443070507440A0705"
theorem cover_1318989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1318989)
  decide +kernel
#print axioms cover_1318989

def state_1319003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 204)))
def hex_1319003 : String := "434241404406074443060A074006440607414006440643064241400644060906060642414009440943420709090509"
theorem cover_1319003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1319003 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1319003)
  decide +kernel
#print axioms cover_1319003
end Mub6.Numerical.CircleFullD0.Forest
