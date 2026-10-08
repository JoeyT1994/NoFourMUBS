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
def state_175435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
def hex_175435 : String := "440540424344050606434405414240434405410505060505054405414206050505"
theorem cover_175435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175435 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_175435)
  decide +kernel
#print axioms cover_175435

def state_175468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_175468 : String := "440542434408400841050508434405404105050505"
theorem cover_175468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_175468)
  decide +kernel
#print axioms cover_175468

def state_175489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_175489 : String := "41440542430606434041050505404106050505"
theorem cover_175489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_175489)
  decide +kernel
#print axioms cover_175489

def state_175509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
def hex_175509 : String := "440540414243054405410705050505"
theorem cover_175509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_175509)
  decide +kernel
#print axioms cover_175509

def state_175524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_175524 : String := "4440414243050805054142050505404142440543414405404243070A050705410A4405400505440543050A054142440543050A0505"
theorem cover_175524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175524 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_175524)
  decide +kernel
#print axioms cover_175524

def state_175579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
def hex_175579 : String := "44054043440741090744410542070541424440080509440509424408404307080744054043074241050505054305440509"
theorem cover_175579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_175579)
  decide +kernel
#print axioms cover_175579

def state_175628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_175628 : String := "440540440541420805420843440540420805050505"
theorem cover_175628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_175628)
  decide +kernel
#print axioms cover_175628

def state_175649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_175649 : String := "43440540050505"
theorem cover_175649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_175649)
  decide +kernel
#print axioms cover_175649
end Mub6.Numerical.CircleFullPrototype.Forest
