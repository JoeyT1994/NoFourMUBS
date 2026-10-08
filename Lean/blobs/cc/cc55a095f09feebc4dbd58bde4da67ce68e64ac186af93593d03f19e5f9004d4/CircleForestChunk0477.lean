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
def state_1303186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 29 else 22)))
def hex_1303186 : String := "424144070907414443404208410805050643404209444143050809090540420A44060A4207084407430906"
theorem cover_1303186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1303186)
  decide +kernel
#print axioms cover_1303186

def state_1303229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 23)))
def hex_1303229 : String := "4309400942094441090909"
theorem cover_1303229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1303229)
  decide +kernel
#print axioms cover_1303229

def state_1303240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 11)))
def hex_1303240 : String := "42094443094009414207070709"
theorem cover_1303240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1303240)
  decide +kernel
#print axioms cover_1303240

def state_1303253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 11)))
def hex_1303253 : String := "41424406064406400A43420A44410A060A06420706"
theorem cover_1303253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303253 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_1303253)
  decide +kernel
#print axioms cover_1303253

def state_1303274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
def hex_1303274 : String := "43414244404305070509444043054241080505054043054209444109050905420905414244060A444006064043420A444108060A064342084405090606"
theorem cover_1303274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1303274)
  decide +kernel
#print axioms cover_1303274

def state_1303336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_1303336 : String := "4243080A43444008054008420843050808"
theorem cover_1303336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303336 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1303336)
  decide +kernel
#print axioms cover_1303336

def state_1303354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_1303354 : String := "434408404143080A434405424105050544420805420A410A0941084305440506440840410A44060606"
theorem cover_1303354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1303354)
  decide +kernel
#print axioms cover_1303354

def state_1303395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_1303395 : String := "43440540414208050505440840414208084244084341080906440543054108054108420605"
theorem cover_1303395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1303395)
  decide +kernel
#print axioms cover_1303395
end Mub6.Numerical.CircleFullD0.Forest
