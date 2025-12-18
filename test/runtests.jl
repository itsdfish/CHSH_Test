using SafeTestsets

@safetestset "compute_CHSH_general" begin
    using CHSH_Test
    using Test

    # Cervantes, V. H., & Dzhafarov, E. N. (2018). Snow queen is evil and beautiful: 
    # Experimental evidence for probabilistic contextuality in human choices. Decision, 5(3), 193.

    θ11 = [0.887, 0, 0, 0.113]
    θ12 = [0.841, 0, 0, 0.159]
    θ21 = [0.837, 0, 0, 0.163]
    θ22 = [0, 0.374, 0.626, 0]

    chsh = compute_CHSH_general(; θ11, θ21, θ12, θ22)
    @test chsh ≈ 0.452
end

@safetestset "compute_CHSH" begin
    using CHSH_Test
    using Test

    # Dzhafarov, E. N., & Kujala, J. V. (2014). On selective influences, marginal selectivity, and Bell/CHSH inequalities. 
    # Topics in Cognitive Science, 6(1), 121-128.

    θ11 = [0.049, 0.259, 0.63, 0.062]
    θ21 = [0.778, 0.086, 0.086, 0.049]
    θ22 = [0.593, 0.025, 0.296, 0.086]
    θ12 = [0.128, 0.099, 0.086, 0.667]

    chsh = compute_CHSH(; θ11, θ21, θ22, θ12)
    @test chsh ≈ 2.401
end
