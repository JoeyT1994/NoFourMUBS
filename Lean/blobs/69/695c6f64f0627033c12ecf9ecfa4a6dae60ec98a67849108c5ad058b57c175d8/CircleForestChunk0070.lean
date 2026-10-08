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
def state_16671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
def hex_16671 : String := "4441424308404441064206050644410842430506054106064305404405080842430540094405090541420943080609"
theorem cover_16671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_16671)
  decide +kernel
#print axioms cover_16671

def state_16722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 10)))
def hex_16722 : String := "08"
theorem cover_16722 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16722 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_16722)
  decide +kernel
#print axioms cover_16722

def state_16724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 10)))
def hex_16724 : String := "4441084243084006424341060606430806430540080841084243080608"
theorem cover_16724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_16724)
  decide +kernel
#print axioms cover_16724

def state_16754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 20)))
def hex_16754 : String := "410842430842430A4140060A400707434108400808414008440A084044070644070A43084308410842404443054207050844430842074008080808"
theorem cover_16754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16754 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_16754)
  decide +kernel
#print axioms cover_16754

def state_16813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 21)))
def hex_16813 : String := "41084243084442064308060608"
theorem cover_16813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16813 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_16813)
  decide +kernel
#print axioms cover_16813

def state_16826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 10)))
def hex_16826 : String := "430808"
theorem cover_16826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_16826)
  decide +kernel
#print axioms cover_16826

def state_16831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 10)))
def hex_16831 : String := "400544420A05420905"
theorem cover_16831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16831 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_16831)
  decide +kernel
#print axioms cover_16831

def state_16841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 10)))
def hex_16841 : String := "44424305414009420709050509"
theorem cover_16841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_16841)
  decide +kernel
#print axioms cover_16841

def state_16855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 20)))
def hex_16855 : String := "4243410A054142430A0743404405090A4044070944070A42074305074305414342400544050A05424044050544414305070541430A42090909400544050505"
theorem cover_16855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_16855)
  decide +kernel
#print axioms cover_16855

def state_16918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 21)))
def hex_16918 : String := "42430909430941444309090909"
theorem cover_16918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_16918)
  decide +kernel
#print axioms cover_16918
end Mub6.Numerical.CircleFullPrototype.Forest
