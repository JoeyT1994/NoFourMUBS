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
def state_2600258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 63) else (if j.val < 3 then 103 else (if j.val < 4 then 51 else 63)))
def hex_2600258 : String := "434144400843084241064406080608440740074307DA4144064006424308060644400642430906064042434108070505DA"
theorem cover_2600258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600258 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2600258)
  decide +kernel
#print axioms cover_2600258

def state_2600308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 102 else (if j.val < 4 then 51 else 63)))
def hex_2600308 : String := "43054144420540430506054205404305070544420540430509054205DA"
theorem cover_2600308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2600308)
  decide +kernel
#print axioms cover_2600308

def state_2600338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 103 else (if j.val < 4 then 102 else 63)))
def hex_2600338 : String := "4144430540420506054305404205080544430540420507054305DA"
theorem cover_2600338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_2600338)
  decide +kernel
#print axioms cover_2600338

def state_2600365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 63) else (if j.val < 3 then 103 else (if j.val < 4 then 103 else 63)))
def hex_2600365 : String := "41444006424305060640424341440608DA4106DA434106DA0642430507434109DA064440424344410609DA4406DA434406DA064243054408DA0ADA"
theorem cover_2600365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_2600365)
  decide +kernel
#print axioms cover_2600365

def state_2600425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
def hex_2600425 : String := "4406400607"
theorem cover_2600425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2600425)
  decide +kernel
#print axioms cover_2600425

def state_2600431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 14)))
def hex_2600431 : String := "4006420906"
theorem cover_2600431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2600431)
  decide +kernel
#print axioms cover_2600431

def state_2600437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 15)))
def hex_2600437 : String := "420A43410644060505"
theorem cover_2600437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2600437)
  decide +kernel
#print axioms cover_2600437

def state_2600446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 15)))
def hex_2600446 : String := "42434107440907074341440640060744400642090640420A0542074341440640060744400642070640420A0542074341440640060644400606DA050606"
theorem cover_2600446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 61) (hex := hex_2600446)
  decide +kernel
#print axioms cover_2600446

def state_2600509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 7)))
def hex_2600509 : String := "44064006430806"
theorem cover_2600509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2600509)
  decide +kernel
#print axioms cover_2600509
end Mub6.Numerical.CircleFullD0.Forest
