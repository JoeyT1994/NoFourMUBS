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
def state_959975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 110)))
def hex_959975 : String := "41424443080908C742444340410805054009410842080508444305404142440A084443050A06420A4405054142080805430608"
theorem cover_959975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_959975)
  decide +kernel
#print axioms cover_959975

def state_960026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 71 else 110)))
def hex_960026 : String := "40410909414209C7420944434041090A4142094443080908420A440A08400941090909"
theorem cover_960026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_960026)
  decide +kernel
#print axioms cover_960026

def state_960061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 111)))
def hex_960061 : String := "4340060809"
theorem cover_960061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960061 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_960061)
  decide +kernel
#print axioms cover_960061

def state_960067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 102 else (if j.val < 4 then 35 else 55)))
def hex_960067 : String := "44434041090A414209440A090A0A09"
theorem cover_960067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_960067)
  decide +kernel
#print axioms cover_960067

def state_960084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 110)))
def hex_960084 : String := "404142440A430609440A060A41424443050A4305400908440543054041420806420A0541080542440543050A05"
theorem cover_960084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_960084)
  decide +kernel
#print axioms cover_960084

def state_960129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 103 else (if j.val < 4 then 71 else 110)))
def hex_960129 : String := "400A4142440A09440A4340410909410842080A090A"
theorem cover_960129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_960129)
  decide +kernel
#print axioms cover_960129

def state_960150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 111)))
def hex_960150 : String := "434041064209064142080842444305090844430540070806400941094209444340094108080908"
theorem cover_960150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_960150)
  decide +kernel
#print axioms cover_960150

def state_960190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
def hex_960190 : String := "440A43404142090A0A414244050944054305400905420505400A4142090A0A"
theorem cover_960190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_960190)
  decide +kernel
#print axioms cover_960190

def state_960222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 54)))
def hex_960222 : String := "43400A050A"
theorem cover_960222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_960222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_960222)
  decide +kernel
#print axioms cover_960222
end Mub6.Numerical.CircleFullD0.Forest
