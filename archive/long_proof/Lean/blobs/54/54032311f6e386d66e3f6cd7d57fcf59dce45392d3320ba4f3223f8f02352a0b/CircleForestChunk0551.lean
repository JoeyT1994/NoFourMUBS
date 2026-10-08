import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_293718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 12)))
def hex_293718 : String := "4143420A060A4342440940070A44400806404143420706420706430707414306064342070642074406430606420A44084340080A08"
theorem cover_293718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_293718)
  decide +kernel
#print axioms cover_293718

def state_293771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
def hex_293771 : String := "404105074143420A444105400A0A090543420744400741434207090A07074207444340070A0A07"
theorem cover_293771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_293771)
  decide +kernel
#print axioms cover_293771

def state_293811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_293811 : String := "404105434408424005410808090541064344064240410643440609080606440642434008060806"
theorem cover_293811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293811 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_293811)
  decide +kernel
#print axioms cover_293811

def state_293850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
def hex_293850 : String := "40410543090541430905434244404109430742070941430642440609064309424443094007060709090942444340054105424443400506050505050505"
theorem cover_293850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_293850)
  decide +kernel
#print axioms cover_293850

def state_293911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_293911 : String := "42400741050709"
theorem cover_293911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_293911)
  decide +kernel
#print axioms cover_293911

def state_293918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
def hex_293918 : String := "4442434440410507410642090840050A44400741064206060743444005060544060505"
theorem cover_293918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_293918)
  decide +kernel
#print axioms cover_293918

def state_293953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_293953 : String := "4344444041050506090905"
theorem cover_293953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293953 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_293953)
  decide +kernel
#print axioms cover_293953
end Mub6.Numerical.CircleFullPrototype.Forest
