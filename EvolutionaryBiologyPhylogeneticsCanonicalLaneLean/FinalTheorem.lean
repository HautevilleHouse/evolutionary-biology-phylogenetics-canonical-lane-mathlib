import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

def ConstrainedEvolutionaryBiologyPhylogeneticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_evolutionary_biology_phylogenetics_endgame (A : AdmissibleClass) :
    ConstrainedEvolutionaryBiologyPhylogeneticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse