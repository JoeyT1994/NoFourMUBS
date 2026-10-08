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
def state_46391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 5)))
def hex_46391 : String := "44400A410842430844400A08080A400A08"
theorem cover_46391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46391 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_46391)
  decide +kernel
#print axioms cover_46391

def state_46410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_46410 : String := "4105430A42444105400743064142060506410507440A05"
theorem cover_46410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_46410)
  decide +kernel
#print axioms cover_46410

def state_46434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
def hex_46434 : String := "430842444005410643074042080507084440050605"
theorem cover_46434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46434 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_46434)
  decide +kernel
#print axioms cover_46434

def state_46456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 10)))
def hex_46456 : String := "424440414308400A41084206080A410843400A08404142060A06410742050A404108060844400A41070A400A08"
theorem cover_46456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_46456)
  decide +kernel
#print axioms cover_46456

def state_46506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 20)))
def hex_46506 : String := "4041054244060505414208054244434006074041420607060708440A05"
theorem cover_46506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_46506)
  decide +kernel
#print axioms cover_46506

def state_46536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_46536 : String := "41054244434142060506414209054206050505"
theorem cover_46536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_46536)
  decide +kernel
#print axioms cover_46536

def state_46556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 36) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_46556 : String := "42444340424407050507404209054209050505"
theorem cover_46556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_46556)
  decide +kernel
#print axioms cover_46556

def state_46577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 40)))
def hex_46577 : String := "434041424406064407054206440606414207074206440743064041420605060740414209054206440905414209440705420944094340090909"
theorem cover_46577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_46577)
  decide +kernel
#print axioms cover_46577

def state_46634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 41)))
def hex_46634 : String := "43404105064108420608400541054244060505"
theorem cover_46634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_46634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_46634)
  decide +kernel
#print axioms cover_46634
end Mub6.Numerical.CircleFullPrototype.Forest
