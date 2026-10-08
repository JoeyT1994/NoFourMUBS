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
def state_1564075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 88)))
def hex_1564075 : String := "434140444243060A06424306410A0A4306410A0606064140440A0A0A40440542050A44060A"
theorem cover_1564075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564075 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1564075)
  decide +kernel
#print axioms cover_1564075

def state_1564112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 88)))
def hex_1564112 : String := "434140440642060606064140440A43420A0A0A0A40440643060A06"
theorem cover_1564112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1564112)
  decide +kernel
#print axioms cover_1564112

def state_1564142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 89)))
def hex_1564142 : String := "40444243410706410940440A0909434107064140440A0707404406420A0706424307090744424306090607"
theorem cover_1564142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1564142)
  decide +kernel
#print axioms cover_1564142

def state_1564185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 123) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 89)))
def hex_1564185 : String := "40444243064140050605064243064140444205430605090905430641404442060607060606"
theorem cover_1564185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564185 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1564185)
  decide +kernel
#print axioms cover_1564185

def state_1564222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 85 else 89)))
def hex_1564222 : String := "4140440A09094044420543410A050542094341400A0940050609440A09"
theorem cover_1564222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1564222)
  decide +kernel
#print axioms cover_1564222

def state_1564252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 84 else 89)))
def hex_1564252 : String := "41404442430641070607070740440642060606"
theorem cover_1564252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564252 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1564252)
  decide +kernel
#print axioms cover_1564252

def state_1564272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 122) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 89)))
def hex_1564272 : String := "404443420A41050A0A43424107400807070A440A430709"
theorem cover_1564272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1564272)
  decide +kernel
#print axioms cover_1564272
end Mub6.Numerical.CircleFullD0.Forest
