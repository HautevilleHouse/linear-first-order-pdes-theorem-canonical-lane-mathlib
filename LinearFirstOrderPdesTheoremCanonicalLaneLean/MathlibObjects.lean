import LinearFirstOrderPdesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LinearFirstOrderPdesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LinearFirstOrderPdesAdmittedObject where
  space : LinearFirstOrderPdesSpace
  domainIsOpen : Prop
  pdeSystemLinear : Prop
  solutionSpace : Type
  solutionTopology : TopologicalSpace solutionSpace
  solutionExists : Prop
  conclusion : solutionExists

structure LinearFirstOrderPdesEndgameState where
  object : LinearFirstOrderPdesAdmittedObject

def LinearFirstOrderPdesWitnessClosed (O : LinearFirstOrderPdesAdmittedObject) : Prop :=
  O.solutionExists

end LinearFirstOrderPdesTheoremCanonicalLaneLean
end HautevilleHouse