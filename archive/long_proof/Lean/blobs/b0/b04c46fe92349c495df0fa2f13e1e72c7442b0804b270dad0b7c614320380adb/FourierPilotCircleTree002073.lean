import FourierPilotCircleTree002074
import FourierPilotCircleTree002075
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002073
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![80, 55, 32, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002074.state FourierPilotCircleTree002075.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002074.covered FourierPilotCircleTree002075.covered
#print axioms covered
end FourierPilotCircleTree002073
