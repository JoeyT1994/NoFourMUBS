import AdaptiveCircleTree

import FourierPilotProofBatch0001

/- Preserved declarations from candidate module FourierPilotCircleTree003839. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003839
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![40, 55, 31, 60, 17]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)))) (.reject ⟨2, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003839


/- Preserved declarations from candidate module FourierPilotCircleTree003842. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003842
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![40, 55, 62, 61, 34]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))))) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003842


/- Preserved declarations from candidate module FourierPilotCircleTree003845. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003845
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![80, 110, 63, 61, 34]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨2, by decide⟩))) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))))) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩))))) (.reject ⟨2, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)))))) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003845


/- Preserved declarations from candidate module FourierPilotCircleTree003847. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003847
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![80, 111, 63, 122, 34]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨3, by decide⟩))))))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩))) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003847


/- Preserved declarations from candidate module FourierPilotCircleTree003850. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003850
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![80, 111, 126, 123, 68]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩))))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003850


/- Preserved declarations from candidate module FourierPilotCircleTree003852. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003852
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![160, 111, 127, 123, 68]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)))))) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨2, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))))))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨4, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.keep ⟨6, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.keep ⟨6, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.keep ⟨6, by decide⟩)))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.keep ⟨6, by decide⟩)) (.reject ⟨1, by decide⟩))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.keep ⟨6, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.keep ⟨6, by decide⟩)))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.keep ⟨6, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.keep ⟨6, by decide⟩)))) (.reject ⟨5, by decide⟩))) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.keep ⟨6, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩)))))) (.keep ⟨6, by decide⟩))))))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.keep ⟨6, by decide⟩)) (.reject ⟨4, by decide⟩))))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.keep ⟨6, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩))))))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)) (.keep ⟨6, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩))))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨5, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003852


/- Preserved declarations from candidate module FourierPilotCircleTree003853. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003853
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![161, 111, 127, 123, 68]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)))))) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.keep ⟨6, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.keep ⟨6, by decide⟩))) (.reject ⟨2, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.keep ⟨6, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩))) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.keep ⟨6, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.keep ⟨6, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.keep ⟨6, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)))))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨2, by decide⟩)) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩)))))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨3, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.keep ⟨6, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.keep ⟨6, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.keep ⟨6, by decide⟩))) (.reject ⟨5, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.keep ⟨6, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.keep ⟨6, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩)) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.keep ⟨6, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.keep ⟨6, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)))))))) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩)) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.keep ⟨6, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩))) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.keep ⟨6, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.keep ⟨6, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.keep ⟨6, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.keep ⟨6, by decide⟩)))) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.keep ⟨6, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.keep ⟨6, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩)))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003853


/- Preserved declarations from candidate module FourierPilotCircleTree003854. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003854
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![80, 111, 63, 123, 69]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨1, by decide⟩))) (.reject ⟨2, by decide⟩))) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003854


/- Preserved declarations from candidate module FourierPilotCircleTree003855. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003855
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![81, 55, 63, 61, 34]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)))))) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003855


/- Preserved declarations from candidate module FourierPilotCircleTree003856. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003856
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![40, 55, 31, 61, 35]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003856


/- Preserved declarations from candidate module FourierPilotCircleTree003857. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003857
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![41, 27, 31, 30, 17]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003857


/- Preserved declarations from candidate module FourierPilotCircleTree003858. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003858
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![20, 27, 31, 31, 8]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨1, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨4, by decide⟩)))) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩))))))) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨0, by decide⟩)))))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩))) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)))) (.reject ⟨3, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩)))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003858


/- Preserved declarations from candidate module FourierPilotCircleTree003859. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003859
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![21, 13, 15, 15, 8]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003859


/- Preserved declarations from candidate module FourierPilotCircleTree003860. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003860
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![10, 13, 15, 15, 9]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩))))) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨3, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003860


/- Preserved declarations from candidate module FourierPilotCircleTree003861. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003861
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![11, 6, 7, 7, 4]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)))) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩)))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003861


/- Preserved declarations from candidate module FourierPilotCircleTree003862. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003862
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![5, 6, 7, 7, 5]
def tree : Tree 48 := (.reject ⟨2, by decide⟩)
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003862

#print axioms FourierPilotCircleTree003839.covered
#print axioms FourierPilotCircleTree003842.covered
#print axioms FourierPilotCircleTree003845.covered
#print axioms FourierPilotCircleTree003847.covered
#print axioms FourierPilotCircleTree003850.covered
#print axioms FourierPilotCircleTree003852.covered
#print axioms FourierPilotCircleTree003853.covered
#print axioms FourierPilotCircleTree003854.covered
#print axioms FourierPilotCircleTree003855.covered
#print axioms FourierPilotCircleTree003856.covered
#print axioms FourierPilotCircleTree003857.covered
#print axioms FourierPilotCircleTree003858.covered
#print axioms FourierPilotCircleTree003859.covered
#print axioms FourierPilotCircleTree003860.covered
#print axioms FourierPilotCircleTree003861.covered
#print axioms FourierPilotCircleTree003862.covered
