import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1325011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 13)))
def hex_1325011 : String := "404243410644424005430508050641080808424341064440424306440A0605060641440A06440A40080606"
theorem cover_1325011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325011 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1325011)
  decide +kernel
#print axioms cover_1325011

def state_1325054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 7)))
def hex_1325054 : String := "41064042430644410608060606"
theorem cover_1325054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325054 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1325054)
  decide +kernel
#print axioms cover_1325054

def state_1325067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
def hex_1325067 : String := "444143440840070A0743440A40080A084143400606074340084244410608050608"
theorem cover_1325067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325067 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1325067)
  decide +kernel
#print axioms cover_1325067

def state_1325104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
def hex_1325104 : String := "4440060A400941434207070909"
theorem cover_1325104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1325104)
  decide +kernel
#print axioms cover_1325104

def state_1325118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_1325118 : String := "404143440542414005070505440642060A0541434407070A0A"
theorem cover_1325118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325118 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1325118)
  decide +kernel
#print axioms cover_1325118

def state_1325143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
def hex_1325143 : String := "40414342094441400507050942094441434008440A0808090909414342070742440A09440A4009410A07430709"
theorem cover_1325143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325143 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1325143)
  decide +kernel
#print axioms cover_1325143

def state_1325188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_1325188 : String := "42094009414344420707090909"
theorem cover_1325188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1325188)
  decide +kernel
#print axioms cover_1325188

def state_1325201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
def hex_1325201 : String := "44420943440A40090A0909"
theorem cover_1325201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325201 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1325201)
  decide +kernel
#print axioms cover_1325201
end Mub6.Numerical.CircleFullD0.Forest
