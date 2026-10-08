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
def state_1531399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 8)))
def hex_1531399 : String := "4143440840420841080808444042074109070840420941094308070943084405400708"
theorem cover_1531399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1531399)
  decide +kernel
#print axioms cover_1531399

def state_1531437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
def hex_1531437 : String := "404241080841430A44404241080841430A448740420A410509420841050608084042414305440A050841050A420841050843084408400A0808"
theorem cover_1531437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 57) (hex := hex_1531437)
  decide +kernel
#print axioms cover_1531437

def state_1531494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 17)))
def hex_1531494 : String := "4042414305444042080508050841054305444042080908054208410508"
theorem cover_1531494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1531494)
  decide +kernel
#print axioms cover_1531494

def state_1531526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 16)))
def hex_1531526 : String := "4143444042074143080505084042094143440806064308070909430805"
theorem cover_1531526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1531526)
  decide +kernel
#print axioms cover_1531526

def state_1531560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 52) else (if j.val < 3 then 102 else (if j.val < 4 then 38 else 32)))
def hex_1531560 : String := "4143444042078708404241080741434408400A084487400609430807084405400709430805"
theorem cover_1531560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1531560)
  decide +kernel
#print axioms cover_1531560

def state_1531600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 64)))
def hex_1531600 : String := "87"
theorem cover_1531600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531600 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1531600)
  decide +kernel
#print axioms cover_1531600

def state_1531604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 208) else (if j.val < 3 then 206 else (if j.val < 4 then 76 else 65)))
def hex_1531604 : String := "434487404241050A0542080544874042064106434407050642410943080741434487050943448705448740064209410607"
theorem cover_1531604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531604 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1531604)
  decide +kernel
#print axioms cover_1531604

def state_1531653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 209) else (if j.val < 3 then 206 else (if j.val < 4 then 76 else 65)))
def hex_1531653 : String := "4344080A4407400742074143080707"
theorem cover_1531653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1531653)
  decide +kernel
#print axioms cover_1531653
end Mub6.Numerical.CircleFullD0.Forest
