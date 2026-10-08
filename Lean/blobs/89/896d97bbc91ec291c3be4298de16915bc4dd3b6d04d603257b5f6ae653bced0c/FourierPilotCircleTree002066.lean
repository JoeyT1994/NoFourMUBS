import FourierPilotCircleTree002067
import FourierPilotCircleTree002068
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002066
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![40, 27, 16, 30, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree002067.state FourierPilotCircleTree002068.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002067.covered FourierPilotCircleTree002068.covered
#print axioms covered
end FourierPilotCircleTree002066
