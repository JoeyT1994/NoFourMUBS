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
def state_1303902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
def hex_1303902 : String := "434441424440070A05440A4043410505050A4244404341074205440705070A0544404309070A404306410507430605410505444142070742070A410505"
theorem cover_1303902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303902 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1303902)
  decide +kernel
#print axioms cover_1303902

def state_1303963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_1303963 : String := "43444144094042430607060A4409064140424305050642050606440A410A4340070707"
theorem cover_1303963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1303963)
  decide +kernel
#print axioms cover_1303963

def state_1304000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
def hex_1304000 : String := "43444042440A050A4244410A430805050A08444042430A050A42430505430A44414006050505400505"
theorem cover_1304000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1304000)
  decide +kernel
#print axioms cover_1304000

def state_1304042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
def hex_1304042 : String := "0A"
theorem cover_1304042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1304042)
  decide +kernel
#print axioms cover_1304042

def state_1304045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_1304045 : String := "430A4441420A430A07070A"
theorem cover_1304045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304045 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1304045)
  decide +kernel
#print axioms cover_1304045

def state_1304056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
def hex_1304056 : String := "434441420A090A0A44414240430A064344420808080840434408084406060842400A430A05400A4309440741420A070741420A400A080A"
theorem cover_1304056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1304056)
  decide +kernel
#print axioms cover_1304056

def state_1304111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_1304111 : String := "0A"
theorem cover_1304111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304111 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1304111)
  decide +kernel
#print axioms cover_1304111

def state_1304112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1304112 : String := "424344404142440A050A42050A4142050A42050640050544404142050A05050543440A40410A060A0A"
theorem cover_1304112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1304112)
  decide +kernel
#print axioms cover_1304112
end Mub6.Numerical.CircleFullD0.Forest
