import LinearFirstOrderPdesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure GateStructure where
  gateKey : String
  condition : Prop
  isSatisfied : Bool
  witness : condition

def gateConditionSatisfied (g : GateStructure) : Prop :=
  g.condition

theorem gate_witness_from_structure (g : GateStructure) :
    gateConditionSatisfied g := by
  exact g.witness

end LinearFirstOrderPdesTheoremCanonicalLaneLean
end HautevilleHouse