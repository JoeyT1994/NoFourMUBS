import FourierPilotCircleTree002442
import FourierPilotCircleTree002469
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002441
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, true, false]
def state : State := ![15, 20, 27, 26, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002442.state FourierPilotCircleTree002469.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002442.covered FourierPilotCircleTree002469.covered
#print axioms covered
end FourierPilotCircleTree002441
