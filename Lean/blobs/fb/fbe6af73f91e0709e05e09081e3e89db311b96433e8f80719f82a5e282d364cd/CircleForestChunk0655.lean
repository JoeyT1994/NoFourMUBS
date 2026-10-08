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
def state_762918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 13)))
def hex_762918 : String := "43400A0A4042060642444106430A07060A"
theorem cover_762918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_762918)
  decide +kernel
#print axioms cover_762918

def state_762936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 13)))
def hex_762936 : String := "404208444308410A090842080A"
theorem cover_762936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762936 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_762936)
  decide +kernel
#print axioms cover_762936

def state_762950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 13)))
def hex_762950 : String := "424405054441430606434205070506"
theorem cover_762950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762950 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_762950)
  decide +kernel
#print axioms cover_762950

def state_762965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 13)))
def hex_762965 : String := "4244414308400509430805084441430A40424405050A0A4340424405050A0A404205440505424405050A41430A0643084042050642080A"
theorem cover_762965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_762965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_762965)
  decide +kernel
#print axioms cover_762965

def state_763020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 6)))
def hex_763020 : String := "44410A07410A430A424044410A0706440A0A404407060A"
theorem cover_763020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_763020)
  decide +kernel
#print axioms cover_763020

def state_763043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_763043 : String := "4244410A430A09410A430A404244410A43080908440A0A424409070A440A0A"
theorem cover_763043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_763043)
  decide +kernel
#print axioms cover_763043

def state_763074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_763074 : String := "404241430A06430844400642074441060806400507410A430944424006440A060906424107430844404207440A0707070A"
theorem cover_763074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_763074)
  decide +kernel
#print axioms cover_763074
end Mub6.Numerical.CircleFullPrototype.Forest
