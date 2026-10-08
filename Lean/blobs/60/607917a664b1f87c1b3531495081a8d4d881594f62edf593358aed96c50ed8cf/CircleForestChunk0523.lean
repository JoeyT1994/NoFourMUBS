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
def state_287052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 9)))
def hex_287052 : String := "4142064006434442064109060609420606"
theorem cover_287052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287052 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_287052)
  decide +kernel
#print axioms cover_287052

def state_287069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 4)))
def hex_287069 : String := "44410742400605400A43440A060A4142400606094206400606"
theorem cover_287069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_287069)
  decide +kernel
#print axioms cover_287069

def state_287094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_287094 : String := "4041094244434006060909094142060942444306410606064443060906"
theorem cover_287094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_287094)
  decide +kernel
#print axioms cover_287094

def state_287125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_287125 : String := "430A44080A"
theorem cover_287125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_287125)
  decide +kernel
#print axioms cover_287125

def state_287133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_287133 : String := "430A40414408080A08"
theorem cover_287133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_287133)
  decide +kernel
#print axioms cover_287133

def state_287143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
def hex_287143 : String := "404105054144050A0A"
theorem cover_287143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_287143)
  decide +kernel
#print axioms cover_287143

def state_287153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_287153 : String := "4144424340050607430506420A430540440505440641420806084442430A4007084305400506420A43054041050541080A"
theorem cover_287153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_287153)
  decide +kernel
#print axioms cover_287153

def state_287202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 4)))
def hex_287202 : String := "414406420843060644064208430A06"
theorem cover_287202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287202 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_287202)
  decide +kernel
#print axioms cover_287202

def state_287217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_287217 : String := "0A"
theorem cover_287217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_287217)
  decide +kernel
#print axioms cover_287217

def state_287219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_287219 : String := "4208404143440742084043440741420740050808070807434407420840410843440808080807410808"
theorem cover_287219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 41) (hex := hex_287219)
  decide +kernel
#print axioms cover_287219

def state_287260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
def hex_287260 : String := "42084440414342084440434142084043050808080808080808084041430A08084143080808"
theorem cover_287260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 37) (hex := hex_287260)
  decide +kernel
#print axioms cover_287260

def state_287298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_287298 : String := "4344410A090A440808"
theorem cover_287298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_287298)
  decide +kernel
#print axioms cover_287298

def state_287311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_287311 : String := "430A400A0A"
theorem cover_287311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287311 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_287311)
  decide +kernel
#print axioms cover_287311
end Mub6.Numerical.CircleFullPrototype.Forest
