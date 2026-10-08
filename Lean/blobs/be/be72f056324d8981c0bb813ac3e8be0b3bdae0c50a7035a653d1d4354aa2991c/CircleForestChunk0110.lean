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
def state_963921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 211 else (if j.val < 4 then 145 else 220)))
def hex_963921 : String := "404142C7434440074107070744400541054205070542C7430744400706074142C7430A44060542C74309440640414205070606"
theorem cover_963921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_963921)
  decide +kernel
#print axioms cover_963921

def state_963972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 176) else (if j.val < 3 then 211 else (if j.val < 4 then 72 else 221)))
def hex_963972 : String := "43404107070840410542C7074108420808"
theorem cover_963972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_963972)
  decide +kernel
#print axioms cover_963972

def state_963993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 368 else 177) else (if j.val < 3 then 210 else (if j.val < 4 then 144 else 220)))
def hex_963993 : String := "414244434041C74206070606434007084041C74206070644430940410706064307400741080742440643400741060606440907"
theorem cover_963993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963993 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_963993)
  decide +kernel
#print axioms cover_963993

def state_964044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 369 else 177) else (if j.val < 3 then 210 else (if j.val < 4 then 144 else 220)))
def hex_964044 : String := "414206440643080642064406430906"
theorem cover_964044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964044 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_964044)
  decide +kernel
#print axioms cover_964044

def state_964059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 210 else (if j.val < 4 then 145 else 220)))
def hex_964059 : String := "40414206434406400706060606"
theorem cover_964059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964059 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_964059)
  decide +kernel
#print axioms cover_964059

def state_964072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 210 else (if j.val < 4 then 72 else 221)))
def hex_964072 : String := "434041420807424443074007080707410842080840414244050544434005080505424406054443070607414206084206440608"
theorem cover_964072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_964072)
  decide +kernel
#print axioms cover_964072

def state_964124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 177) else (if j.val < 3 then 211 else (if j.val < 4 then 72 else 220)))
def hex_964124 : String := "43404142440707070909404142434440070607440640070643074406074243440607060741420643090606"
theorem cover_964124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_964124 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_964124)
  decide +kernel
#print axioms cover_964124
end Mub6.Numerical.CircleFullD0.Forest
