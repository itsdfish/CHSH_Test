module CHSH_Test

export compare_marginals
export compute_CHSH
export compute_CHSH_general

function compute_CHSH_general(; θ11, θ21, θ12, θ22)
    # original bound 
    z1 = compute_CHSH(; θ11, θ21, θ12, θ22)

    # marginal probabilities for A 
    a11 = θ11[1] + θ11[3]
    a12 = θ12[1] + θ12[3]
    a21 = θ21[1] + θ21[3]
    a22 = θ22[1] + θ22[3]

    # marginal probabilities for B 
    b11 = θ11[1] + θ11[2]
    b12 = θ12[1] + θ12[2]
    b21 = θ21[1] + θ21[2]
    b22 = θ22[1] + θ22[2]

    # absolute value of the difference of expected value of A under both contexts
    z2 = abs(2 * (a11 - a12)) + abs(2 * (a21 - a22))
    # absolute value of the difference of expected value of B under both contexts
    z3 = abs(2 * (b11 - b21)) + abs(2 * (b12 - b22))
    return z1 - z2 - z3 - 2
end

function compute_CHSH(; θ11, θ21, θ12, θ22)
    x11 = θ11[1] + θ11[4] - θ11[2] - θ11[3]
    x21 = θ21[1] + θ21[4] - θ21[2] - θ21[3]
    x12 = θ12[1] + θ12[4] - θ12[2] - θ12[3]
    x22 = θ22[1] + θ22[4] - θ22[2] - θ22[3]
    chsh = maximum([
        abs(x11 + x21 + x22 - x12),
        abs(x11 + x21 - x22 + x12),
        abs(x11 - x21 + x22 + x12),
        abs(-x11 + x21 + x22 + x12)
    ])
    return chsh
end

function compare_marginals(; θ11, θ21, θ22, θ12)
    #AB, ĀB, AB̄ ĀB̄
    x = zeros(4)
    x[1] = θ11[1] + θ11[3] - θ12[1] - θ12[3]
    x[2] = θ11[1] + θ11[2] - θ21[1] - θ21[3]
    x[3] = θ22[1] + θ22[3] - θ21[1] - θ21[2]
    x[4] = θ22[1] + θ22[2] - θ12[1] - θ12[2]
    return x
end
end
