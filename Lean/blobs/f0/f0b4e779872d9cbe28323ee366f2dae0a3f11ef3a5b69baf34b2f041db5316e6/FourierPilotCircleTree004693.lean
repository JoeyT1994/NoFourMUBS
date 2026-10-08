import FourierPilotCircleTree004694
import FourierPilotCircleTree004695
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004693
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, false, true, true]
def state : State := ![93, 45, 41, 61, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004694.state FourierPilotCircleTree004695.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004694.covered FourierPilotCircleTree004695.covered
#print axioms covered
end FourierPilotCircleTree004693
