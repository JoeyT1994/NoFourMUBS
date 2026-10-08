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
def state_384765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 7)))
def hex_384765 : String := "41440A430A404241440A430A404208084205054407080A0A0A"
theorem cover_384765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 25) (hex := hex_384765)
  decide +kernel
#print axioms cover_384765

def state_384791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
def hex_384791 : String := "4440420505054042434144054043420505050544090905434144054042050505440A40424308050A42050505420505"
theorem cover_384791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384791 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_384791)
  decide +kernel
#print axioms cover_384791

def state_384838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
def hex_384838 : String := "444042070A054042094341440A0808094207430705"
theorem cover_384838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_384838)
  decide +kernel
#print axioms cover_384838

def state_384859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
def hex_384859 : String := "430A4144054240430A0505050A"
theorem cover_384859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_384859)
  decide +kernel
#print axioms cover_384859

def state_384872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_384872 : String := "4405404241434406400909050941064344060605424105434405090505"
theorem cover_384872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_384872)
  decide +kernel
#print axioms cover_384872

def state_384902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_384902 : String := "4344404107430707074041434207080909410707440509"
theorem cover_384902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384902 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_384902)
  decide +kernel
#print axioms cover_384902

def state_384927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_384927 : String := "404142430A4405090A4243440A06440509430A44054008410505410A424307050A"
theorem cover_384927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_384927)
  decide +kernel
#print axioms cover_384927

def state_384960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_384960 : String := "40414243084406080808414243440708440709430844064240060A064243080943064441060606"
theorem cover_384960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_384960 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_384960)
  decide +kernel
#print axioms cover_384960
end Mub6.Numerical.CircleFullPrototype.Forest
