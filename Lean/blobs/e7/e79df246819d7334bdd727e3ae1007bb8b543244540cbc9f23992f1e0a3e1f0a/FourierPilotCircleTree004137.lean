import FourierPilotCircleTree004138
import FourierPilotCircleTree004157
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004137
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, true]
def state : State := ![27, 9, 20, 8, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004138.state FourierPilotCircleTree004157.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004138.covered FourierPilotCircleTree004157.covered
#print axioms covered
end FourierPilotCircleTree004137
