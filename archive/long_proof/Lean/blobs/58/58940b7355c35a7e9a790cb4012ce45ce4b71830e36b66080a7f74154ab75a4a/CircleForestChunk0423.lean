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
def state_177070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_177070 : String := "41424344060844400608404108080843064406400641080642430644060806"
theorem cover_177070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_177070)
  decide +kernel
#print axioms cover_177070

def state_177101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_177101 : String := "41420943400A09404441420A430644060A0A0A4441420843064044060907090909"
theorem cover_177101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_177101)
  decide +kernel
#print axioms cover_177101

def state_177139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 12)))
def hex_177139 : String := "43414442080608440642080641444240094308090942050807"
theorem cover_177139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_177139)
  decide +kernel
#print axioms cover_177139

def state_177165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 12)))
def hex_177165 : String := "4144080844424006430644410806080608"
theorem cover_177165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177165 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_177165)
  decide +kernel
#print axioms cover_177165

def state_177183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 12)))
def hex_177183 : String := "44424043084108440908430841084440424344090809080A080808"
theorem cover_177183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_177183)
  decide +kernel
#print axioms cover_177183

def state_177213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 24)))
def hex_177213 : String := "434441400742430607060741080707"
theorem cover_177213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_177213)
  decide +kernel
#print axioms cover_177213

def state_177230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 48)))
def hex_177230 : String := "4140424344060844410907410807064243444108050844410A05410840424308070505084042434405410705070505"
theorem cover_177230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_177230)
  decide +kernel
#print axioms cover_177230

def state_177277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 30 else 49)))
def hex_177277 : String := "41084042430707074243084441400705050808"
theorem cover_177277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_177277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_177277)
  decide +kernel
#print axioms cover_177277
end Mub6.Numerical.CircleFullPrototype.Forest
