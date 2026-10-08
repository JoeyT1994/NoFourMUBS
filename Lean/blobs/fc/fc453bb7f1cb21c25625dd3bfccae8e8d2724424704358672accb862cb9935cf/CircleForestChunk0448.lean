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
def state_183160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 101) else (if j.val < 3 then 100 else (if j.val < 4 then 61 else 60)))
def hex_183160 : String := "44434208410A0542080A43424106094140444342090506060A404405430506054206410607"
theorem cover_183160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183160 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_183160)
  decide +kernel
#print axioms cover_183160

def state_183197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 101) else (if j.val < 3 then 101 else (if j.val < 4 then 61 else 60)))
def hex_183197 : String := "40444305410905434142404405074405430506050541420707074443050A434142404405430506050505410A4240050505"
theorem cover_183197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_183197)
  decide +kernel
#print axioms cover_183197

def state_183247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 100) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 61)))
def hex_183247 : String := "42064043444106420608060606"
theorem cover_183247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_183247)
  decide +kernel
#print axioms cover_183247

def state_183260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 101) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 61)))
def hex_183260 : String := "4240434442064106070606064043444142400606084207054106084441060706434441424006064005054240050505410642060544410642060506"
theorem cover_183260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_183260)
  decide +kernel
#print axioms cover_183260

def state_183320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 30)))
def hex_183320 : String := "434441424005050505084409410808"
theorem cover_183320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183320 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_183320)
  decide +kernel
#print axioms cover_183320

def state_183335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 30)))
def hex_183335 : String := "43444142400505050541424008434405084441080508050544410A0541424043080843440A0606084240430508430544050805"
theorem cover_183335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183335 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_183335)
  decide +kernel
#print axioms cover_183335

def state_183388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
def hex_183388 : String := "4344424140050505050A4407420707"
theorem cover_183388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_183388)
  decide +kernel
#print axioms cover_183388
end Mub6.Numerical.CircleFullPrototype.Forest
