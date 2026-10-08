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
def state_988852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 216) else (if j.val < 3 then 141 else (if j.val < 4 then 207 else 172)))
def hex_988852 : String := "40434408C644410906C64344414240080A0808C64441424009090942400643080605C6"
theorem cover_988852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988852 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_988852)
  decide +kernel
#print axioms cover_988852

def state_988887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 217) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 172)))
def hex_988887 : String := "4206400843084406C6"
theorem cover_988887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988887 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_988887)
  decide +kernel
#print axioms cover_988887

def state_988896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 173)))
def hex_988896 : String := "C6"
theorem cover_988896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988896 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_988896)
  decide +kernel
#print axioms cover_988896

def state_988899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 172)))
def hex_988899 : String := "414240430A440A410A0A0A0A42404308440741424008070807430A07400808"
theorem cover_988899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988899 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_988899)
  decide +kernel
#print axioms cover_988899

def state_988931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 216) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 173)))
def hex_988931 : String := "4240430A44410A0A410542050A0A40430A0A06"
theorem cover_988931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988931 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_988931)
  decide +kernel
#print axioms cover_988931

def state_988950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 217) else (if j.val < 3 then 70 else (if j.val < 4 then 206 else 173)))
def hex_988950 : String := "4240434408410A08444142404308C60A0A084142054043080A0A4240084308C608430A440A0A4043084408410A080A"
theorem cover_988950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988950 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_988950)
  decide +kernel
#print axioms cover_988950

def state_988999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 216) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 172)))
def hex_988999 : String := "42404344410A42070AC64441424043440605060740430A4407090A07C6430A4407C64043440A0A44410A4240430A0A070AC60A"
theorem cover_988999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_988999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_988999)
  decide +kernel
#print axioms cover_988999

def state_989050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 217) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 172)))
def hex_989050 : String := "4240434407C607074043440808444142070505C6430A4407C6"
theorem cover_989050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989050 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_989050)
  decide +kernel
#print axioms cover_989050

def state_989075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 207 else 173)))
def hex_989075 : String := "C6"
theorem cover_989075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_989075 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_989075)
  decide +kernel
#print axioms cover_989075
end Mub6.Numerical.CircleFullD0.Forest
