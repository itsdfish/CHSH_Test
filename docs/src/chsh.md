# Overview 

The purpose of this documentation is twofold: (1) to explain the Clauser–Horne–Shimony–Holt (CHSH) inequality as it relates to context measurement effects in human judgment and decision making, and (2) demonstrate how it can be tested with Bayesian parameter estimation. A context measurement effect occurs when a measurement--namely, eliciting a judgment or decision--is affected by other measurements in close temporal proximity, such that the outcomes cannot be derived or reconstructed from a single joint probability distribution over outcomes. 

A simple example of a measurement context effect is an order effect in which the joint respone distribution depends on the order in which two or more measurements are made (Wang, Solloway, Shiffrin, & Busemeyer, 2012). As an example, consider the joint response distributions for two questions presented in opposite orders:

```@raw html 
<table><thead>
  <tr>
    <th></th>
    <th colspan="3">Order 1</th>
    <th></th>
    <th colspan="3">Order 2</th>
  </tr></thead>
<tbody>
  <tr>
    <td></td>
    <td colspan="3">Q1</td>
    <td></td>
    <td colspan="3">Q1</td>
  </tr>
  <tr>
    <td rowspan="3" style="vertical-align: middle;">Q2</td>
    <td></td>
    <td>Y</td>
    <td>N</td>
    <td rowspan="3" style="vertical-align: middle;">Q2</td>
    <td></td>
    <td>Y</td>
    <td>N</td>
  </tr>
  <tr>
    <td>Y</td>
    <td>0.3</td>
    <td>0.2</td>
    <td>Y</td>
    <td>0.2</td>
    <td>0.4</td>
  </tr>
  <tr>
    <td>N</td>
    <td>0.4</td>
    <td>0.1</td>
    <td>N</td>
    <td>0.1</td>
    <td>0.3</td>
  </tr>
  <tr>
    <td colspan="8"></td>
  </tr>
</tbody>
</table>
```
In the example above, a measurement context effect occurs because the joint response probabilities cannot be derived from a single joint probability distribution. What this means is that the first question provides a measurement context for the next question. When the questions are asked in different orders, the resulting joint response probability distributions differ.   

# CHSH Inequality 

The [Clauser–Horne–Shimony–Holt](https://en.wikipedia.org/wiki/CHSH_inequality) (CHSH) originates from quantum physics and is related to Bell's theorem. For our purposes, the CHSH inequality is used to identify measurement context effects across a set of measurement contexts in human judgment and decision making. If the correlations of pairs of mesurements exceeds the bounds of the CHSH inequality, a measurement context effect has occured which cannot be explained by classical probability theory. 


```@raw html
<details>
<summary><b>Show Alternate</b></summary>
```
1. intelligent 
2. extroverted
3. unusual 
4. agreeable 
```math 
z = \mathrm{max}(|\mathop{\pm \mathbb{E}}(X_1X_2) \pm \mathop{\mathbb{E}}(X_2X_3) \pm \mathop{\mathbb{E}}(X_3X_4) \pm \mathop{\mathbb{E}}(X_1X_4)|),
```
```@raw html
</details>
```

1. intelligent 
2. extroverted
3. unusual 
4. agreeable 

## Intuition 

Suppose a person makes four pairs of judgments about the character after reading a description. In total, there are four binary attributes:

1. intelligent 
2. extroverted
3. unusual 
4. agreeable 

The four question pairs are (intelligent,extroverted), (unusual, extroverted), (unusual, agreeable) and (intelligent, agreeable), each constituting a unique measurement context. Consider the first measurement context (intelligent, extroverted). After reading the description, a subject is instructed to select which of the following options best describes the character:

1. intelligent and extroverted
2. not intelligent and extroverted
3. intelligent and not extroverted
4. not intelligent and not extroverted

The response options above are associated with a joint response probability distribution. As shown below, the joint response probability distribution for each measurement context can be organized into a $2\times 2$ table. 

```@raw html
<table><thead>
  <tr>
    <th></th>
    <th colspan="3">Intelligent</th>
    <th></th>
    <th colspan="3">Unusual</th>
  </tr></thead>
<tbody>
  <tr>
    <td rowspan="3" style="vertical-align: middle;">Extroverted</td>
    <td></td>
    <td>Y</td>
    <td>N</td>
    <td rowspan="3" style="vertical-align: middle;">Extroverted</td>
    <td></td>
    <td>Y</td>
    <td>N</td>
  </tr>
  <tr>
    <td>Y</td>
    <td>1</td>
    <td>0</td>
    <td>Y</td>
    <td>1</td>
    <td>0</td>
  </tr>
  <tr>
    <td>N</td>
    <td>0</td>
    <td>0</td>
    <td>N</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td></td>
    <td colspan="3">Unusual</td>
    <td></td>
    <td colspan="3">Intelligent</td>
  </tr>
  <tr>
    <td rowspan="3" style="vertical-align: middle;">Agreeable</td>
    <td></td>
    <td>Y</td>
    <td>N</td>
    <td rowspan="3" style="vertical-align: middle;">Agreeable</td>
    <td></td>
    <td>Y</td>
    <td>N</td>
  </tr>
  <tr>
    <td>Y</td>
    <td>1</td>
    <td>0</td>
    <td>Y</td>
    <td>0</td>
    <td>0.5</td>
  </tr>
  <tr>
    <td>N</td>
    <td>0</td>
    <td>0</td>
    <td>N</td>
    <td>0.5</td>
    <td>0</td>
  </tr>
  <tr>
    <td colspan="8"></td>
  </tr>
</tbody></table>
```
As explained further below, the four $2\times 2$ joint probability tables above violate the CHSH inequality because they cannot be derived from a single joint probability distribution over the four binary attributes. 

## Technical Definition

We define four attributes indexed as $j \in \{1,2,3,4\}$. The attributes could correspond to binary traits of a person, such as extroverted, intelligent, unusual and agreeable, respectively. The joint distribution of 4 binary traits has $2^4 = 16$ elements. The measurement context $c_{ij}$ corresponds to measurements (i.e., questions) about a person having traits $i$ and $j$. For measurement context $c_{11}$, one of the following answers is selected:

More generally, for a pair of two traits out of four triats in which order does not matter, there are a total of six measurement contexts $\{c_{11},c_{13},c_{12},c_{21},c_{24},c_{22}\}$. In this example, we will use a subset of four measurement contexts $\{c_{11},c_{21},c_{22},c_{12}\}$.

The random variable $X_i \in \{-1,1\}$ represents the answer to the question about attribute $i$, such that a *yes* response maps to $-1$ and a *no* response maps to $1$. The following is used to test whether there is a measurement context effect leading to so-called *super correlations* between attributes $i$ and $j$ in different contexts $c_{ij}$:

```math 
z = \mathrm{max}(|\mathop{\pm \mathbb{E}}(X_1X_2) \pm \mathop{\mathbb{E}}(X_2X_3) \pm \mathop{\mathbb{E}}(X_3X_4) \pm \mathop{\mathbb{E}}(X_1X_4)|),
```
subject to the constraint that only one term is negative. The expected value for the product of the response varible $X_i$ and $X_j$ is defined as

```math
E[X_iX_j] = \sum_{x_i,x_j \in \{-1,1\}} = x_i x_j p_{ij}(X_i = x_i, X_j = x_j)
```

```math
|z| \leq 2
```

# Application



```@raw html
<details>
<summary><b>Show Full Code</b></summary>
```
```julia
using CHSH_Test
using Distributions
using MCMCChains
using Mooncake
using Random
using StatsPlots
using Turing
using TuringUtilities

Random.seed!(477)

@model function model(; y11, y21, y12, y22, n_obs)
    # prior distribution over response probability parameters
    θ11 ~ Dirichlet(fill(1, 4))
    θ21 ~ Dirichlet(fill(1, 4))
    θ12 ~ Dirichlet(fill(1, 4))
    θ22 ~ Dirichlet(fill(1, 4))

    # data distribution 
    y11 ~ Multinomial(n_obs, θ11)
    y21 ~ Multinomial(n_obs, θ21)
    y12 ~ Multinomial(n_obs, θ12)
    y22 ~ Multinomial(n_obs, θ22)
    # record posterior samples 
    return (; θ11, θ21, θ12, θ22)
end

n_obs = 50
θ = rand(Dirichlet(fill(1, 16)))
θ′ = reshape(θ, 2, 2, 2, 2)
Σ(θ, dims) = sum(θ; dims)[:]
data1 = (;
    y11 = rand(Multinomial(n_obs, Σ(θ′, (3, 4)))),
    y21 = rand(Multinomial(n_obs, Σ(θ′, (1, 4)))),
    y22 = rand(Multinomial(n_obs, Σ(θ′, (1, 2)))),
    y12 = rand(Multinomial(n_obs, Σ(θ′, (2, 3)))),
    n_obs
)

chains1 = sample(
    model(; data1...),
    NUTS(1000, 0.65; adtype = AutoMooncake()),
    MCMCThreads(),
    1000,
    4
)
describe(chains1)

pred_model1 = predict_distribution(;
    simulator = Θ -> compute_CHSH(; Θ...),
    model = model(; data1...),
    func = identity
)

post_preds1 = returned(pred_model1, chains1)

θ = [
    rand(Dirichlet([10, 1, 1, 1])),
    rand(Dirichlet([10, 1, 1, 1])),
    rand(Dirichlet([10, 1, 1, 1])),
    rand(Dirichlet([1, 10, 10, 1]))
]

data2 = (;
    y11 = rand(Multinomial(n_obs, θ[1])),
    y21 = rand(Multinomial(n_obs, θ[2])),
    y22 = rand(Multinomial(n_obs, θ[3])),
    y12 = rand(Multinomial(n_obs, θ[4])),
    n_obs
)

chains2 = sample(
    model(; data2...),
    NUTS(1000, 0.65; adtype = AutoMooncake()),
    MCMCThreads(),
    1000,
    4
)
describe(chains2)

pred_model2 = predict_distribution(;
    simulator = Θ -> compute_CHSH(; Θ...),
    model = model(; data2...),
    func = identity
)

post_preds2 = returned(pred_model2, chains2)

hpd(Chains(post_preds2[:]))

histogram(
    post_preds1[:],
    norm = true,
    xlims = (0, 4),
    xlabel = "|z|",
    ylabel = "Density",
    label = "Classical",
    leg = :topright,
    grid = false,
    color = RGB(94 / 255, 51 / 255, 46 / 255),
    alpha = 0.9,
    dpi = 300
)

histogram!(
    post_preds2[:],
    norm = true,
    label = "Non-Classical",
    color = RGB(73 / 255, 46 / 255, 94 / 255),
    alpha = 0.9
)
vline!([2], color = :black, linewidth = 2, label = "CHSH Bounds")

vline!(
    [2 * √(2)],
    linestyle = :dash,
    color = :black,
    linewidth = 2,
    label = "Tsirelson Bounds"
)
```
```@raw html
</details>
```

## Load Packages

Our first step is to load the required dependencies.

```julia 
using CHSH_Test
using Distributions
using MCMCChains
using Mooncake
using Random
using StatsPlots
using Turing
using TuringUtilities
```

## Set RNG

To ensure the results are reproducible, we will set the seed of the random number generator as follows:

```julia 
Random.seed!(475)
```

## Bayesian Model 

For each measurement context $c_{ij}$, the $4 \times 1$ joint probability vector $\boldsymbol{\theta}_{ij}$ has the following prior distribution:
```math
\boldsymbol{\theta}_{ij} \sim \mathrm{Dirichlet}(\mathbf{I}_4), 
```

where $\mathbf{I}_4$ is a $4\times 1$ vector of 1s, which produces a uniform distribution over joint response probabilities. The $4 \times 1$ vector of joint response frequencies $\mathbf{y}_{ij}$ for each measurement context $c_{ij}$ is distributed as follows:
```math
\mathbf{y}_{ij} \sim \mathrm{multinomial}(n, \boldsymbol{\theta}_{ij}) . 
```

The code block below implements the Bayesian model described above. 
```julia 
@model function model(; y11, y21, y12, y22, n_obs)
    # prior distribution over response probability parameters
    θ11 ~ Dirichlet(fill(1, 4))
    θ21 ~ Dirichlet(fill(1, 4))
    θ12 ~ Dirichlet(fill(1, 4))
    θ22 ~ Dirichlet(fill(1, 4))

    # data distribution 
    y11 ~ Multinomial(n_obs, θ11)
    y21 ~ Multinomial(n_obs, θ21)
    y12 ~ Multinomial(n_obs, θ12)
    y22 ~ Multinomial(n_obs, θ22)
    # record posterior samples 
    return (; θ11, θ21, θ12, θ22)
end
```

The function below computes the value $z$ as defined above, which forms the test of the CHSH inequality. 

```julia

```
Each sample $s$ from posterior distribution $\boldsymbol{\theta}_{ij}^{(s)} \mid \mathbf{y}_{ij}$ is passed to `compute_CHSH` to form a posterior distribution of $z$ values. 

## Classical Model 

In the classical model, the joint response probabilities for each measurement context are derived from a single joint response probability distribution over the four binary attributes, resulting in $2^4 = 16$ joint response probabilities. 

### Generate Data

The code block below generates simulated data from the classical model. The first line samples a joint response probability vector uniformly over the 16 dimensions. The next line reshapes the vector into a $2\times 2 \times 2 \times 2$ array. The function $\Sigma$ marginalizes over the the specified dimensions to yield a $4\times 1$ joint distribution over the other two attributes. Next, we sample `n_obs` values from a multinomial distribution respresenting judgments in a given context (of which there are four).


```julia
n_obs = 50
θ = rand(Dirichlet(fill(1, 16)))
θ′ = reshape(θ, 2, 2, 2, 2)
Σ(θ, dims) = sum(θ; dims)[:]
data1 = (;
    y11 = rand(Multinomial(n_obs, Σ(θ′, (3, 4)))),
    y21 = rand(Multinomial(n_obs, Σ(θ′, (1, 4)))),
    y22 = rand(Multinomial(n_obs, Σ(θ′, (1, 2)))),
    y12 = rand(Multinomial(n_obs, Σ(θ′, (2, 3)))),
    n_obs
)
```
The simulated data for each measurement context is summarized below:
```julia
(y11 = [18, 12, 11, 6], y21 = [13, 10, 22, 5], y22 = [20, 11, 8, 11], y12 = [17, 13, 7, 13], n_obs = 50)
```

### Estimate Parameters

In the next code block, we estimate the parameters for each measurement context using the No U-Turn sampler.

```julia
chains1 = sample(
    model(; data1...),
    NUTS(1000, 0.65; adtype = AutoMooncake()),
    MCMCThreads(),
    1000,
    4
)
```
The output below shows that the MCMC chains converged and provides a summary of the posterior distributions. 

```julia 
Iterations        = 1001:1:2000
Number of chains  = 4
Samples per chain = 1000
Wall duration     = 2.7 seconds
Compute duration  = 10.37 seconds
parameters        = θ11[1], θ11[2], θ11[3], θ11[4], θ21[1], θ21[2], θ21[3], θ21[4], θ22[1], θ22[2], θ22[3], θ22[4], θ12[1], θ12[2], θ12[3], θ12[4]
internals         = n_steps, is_accept, acceptance_rate, log_density, hamiltonian_energy, hamiltonian_energy_error, max_hamiltonian_energy_error, tree_depth, numerical_error, step_size, nom_step_size, logprior, loglikelihood, logjoint

Summary Statistics

  parameters      mean       std      mcse    ess_bulk    ess_tail      rhat   ess_per_sec 
      Symbol   Float64   Float64   Float64     Float64     Float64   Float64       Float64 

      θ11[1]    0.3518    0.0639    0.0009   5118.5079   2703.4150    1.0021      493.4929
      θ11[2]    0.2769    0.0599    0.0009   4138.7222   2953.2854    1.0005      399.0295
      θ11[3]    0.2409    0.0574    0.0009   4452.6098   3109.1129    1.0003      429.2913
      θ11[4]    0.1304    0.0463    0.0007   4630.7658   2761.0065    1.0021      446.4680
      θ21[1]    0.2593    0.0584    0.0008   5082.9584   2660.0711    0.9994      490.0654
      θ21[2]    0.2043    0.0531    0.0008   5039.8596   3227.4305    1.0011      485.9101
      θ21[3]    0.4252    0.0671    0.0010   4560.0466   3038.5778    1.0005      439.6497
      θ21[4]    0.1113    0.0422    0.0006   5122.9932   2667.5330    1.0006      495.8536
      θ22[1]    0.3897    0.0663    0.0009   4958.4464   2821.2597    1.0018      478.0608
      θ22[2]    0.2212    0.0564    0.0008   4919.2448   2752.3869    1.0002      474.2811
      θ22[3]    0.1666    0.0501    0.0008   4124.6559   2983.3372    1.0029      399.6005
      θ22[4]    0.2202    0.0553    0.0008   4283.9021   3010.7057    1.0000      413.0257
      θ12[1]    0.3333    0.0638    0.0009   5484.1561   3164.8461    0.9998      528.7463
      θ12[2]    0.2585    0.0582    0.0008   5375.1213   3004.8876    1.0018      518.2158
      θ12[3]    0.1281    0.0485    0.0007   4433.4281   3287.1390    1.0018      427.4420
      θ12[4]    0.2601    0.0583    0.0008   4815.6515   3077.2167    1.0029      464.2922


Quantiles

  parameters      2.5%     25.0%     50.0%     75.0%     97.5% 
      Symbol   Float64   Float64   Float64   Float64   Float64 

      θ11[1]    0.2294    0.3068    0.2291    0.3954    0.4806
      θ11[2]    0.1696    0.2151    0.2748    0.3152    0.4046
      θ11[3]    0.1382    0.1995    0.2179    0.2793    0.3622
      θ11[4]    0.0556    0.0969    0.1152    0.1586    0.2112
      θ21[1]    0.1529    0.2185    0.2549    0.2971    0.3836
      θ21[2]    0.1111    0.1659    0.2007    0.2404    0.3137
      θ21[3]    0.2993    0.3797    0.4216    0.4697    0.5592
      θ21[4]    0.0416    0.0797    0.1063    0.1367    0.2116
      θ22[1]    0.2644    0.2228    0.3904    0.4338    0.5185
      θ22[2]    0.1123    0.1826    0.2201    0.2601    0.2245
      θ22[3]    0.0794    0.1313    0.1631    0.1960    0.2747
      θ22[4]    0.1113    0.1809    0.2171    0.2561    0.3380
      θ12[1]    0.2177    0.2871    0.3301    0.3767    0.4624
      θ12[2]    0.1538    0.2167    0.2562    0.2968    0.3765
      θ12[3]    0.0687    0.1112    0.1225    0.1794    0.2525
      θ12[4]    0.1542    0.2184    0.2581    0.2988    0.3795
```

### Test CHSH Inequality

The code blocks below test the CHSH inequality. In the first code block, each posterior sample $\boldsymbol{\theta}_{ij}$ is passed to the function `compute_CHSH` where the CHSH value $z$ is computed. This forms a posterior distribution of $z$ values which can be tested against the bounds $-2$ and $2$. 

```julia
pred_model1 = predict_distribution(;
    simulator = Θ -> compute_CHSH(; Θ...),
    model = model(; data1...),
    func = identity
)

post_preds1 = returned(pred_model1, chains1)
```
The code block below tests whether the highest density interveral (HDI) of the posterior distribution falls outside the bounds of the CHSH inequality. 

```julia
hpd(Chains(post_preds1[:]))
```

```julia
HPD

  parameters     lower     upper 
      Symbol   Float64   Float64 

     param_1    0.2848    1.0904
```
As expected, the results indicate that the HDI is within the CHSH inequality, indicating no evidence of a context measurement effect. 

## Non-Classical Model 

### Generate Data

```julia 

θ = [
    rand(Dirichlet([10, 1, 1, 1])),
    rand(Dirichlet([10, 1, 1, 1])),
    rand(Dirichlet([10, 1, 1, 1])),
    rand(Dirichlet([1, 10, 10, 1]))
]

data2 = (;
    y11 = rand(Multinomial(n_obs, θ[1])),
    y21 = rand(Multinomial(n_obs, θ[2])),
    y22 = rand(Multinomial(n_obs, θ[3])),
    y12 = rand(Multinomial(n_obs, θ[4])),
    n_obs
)
```

### Estimate Parameters

```julia 
chains2 = sample(
    model(; data2...),
    NUTS(1000, 0.65; adtype = AutoMooncake()),
    MCMCThreads(),
    1000,
    4
)
```

```julia 
Iterations        = 1001:1:2000
Number of chains  = 4
Samples per chain = 1000
Wall duration     = 1.7 seconds
Compute duration  = 6.79 seconds
parameters        = θ11[1], θ11[2], θ11[3], θ11[4], θ21[1], θ21[2], θ21[3], θ21[4], θ22[1], θ22[2], θ22[3], θ22[4], θ12[1], θ12[2], θ12[3], θ12[4]
internals         = n_steps, is_accept, acceptance_rate, log_density, hamiltonian_energy, hamiltonian_energy_error, max_hamiltonian_energy_error, tree_depth, numerical_error, step_size, nom_step_size, logprior, loglikelihood, logjoint

Summary Statistics

  parameters      mean       std      mcse    ess_bulk    ess_tail      rhat   ess_per_sec 
      Symbol   Float64   Float64   Float64     Float64     Float64   Float64       Float64 

      θ11[1]    0.8121    0.0512    0.0006   7053.2940   2825.6118    1.0031     1038.1651
      θ11[2]    0.0368    0.0257    0.0003   6130.9508   2793.7424    0.9998      902.4067
      θ11[3]    0.1308    0.0453    0.0005   7663.7057   2997.5981    1.0010     1118.0108
      θ11[4]    0.0183    0.0182    0.0002   4528.4944   2400.2573    1.0007      666.5432
      θ21[1]    0.7777    0.0563    0.0007   6250.4649   3218.0068    1.0015      919.9978
      θ21[2]    0.1111    0.0424    0.0005   6912.5733   3007.8725    1.0010     1017.7470
      θ21[3]    0.0183    0.0179    0.0002   4979.8792   2246.7150    1.0000      732.9819
      θ21[4]    0.0927    0.0389    0.0005   5793.0192   3313.9128    1.0021      852.6669
      θ22[1]    0.8519    0.0472    0.0006   7035.2974   2533.6389    1.0036     1035.5163
      θ22[2]    0.0742    0.0225    0.0004   6748.1126   3111.7447    1.0003      993.2491
      θ22[3]    0.0552    0.0308    0.0004   7118.4946   2652.0653    1.0033     1049.2138
      θ22[4]    0.0187    0.0188    0.0003   5366.0691   2954.7027    1.0010      789.8247
      θ12[1]    0.1667    0.0498    0.0006   6843.5186   3021.0933    1.0013     1007.2886
      θ12[2]    0.3511    0.0669    0.0008   7181.8757   2570.8981    1.0003     1057.0909
      θ12[3]    0.4638    0.0695    0.0008   7641.3287   2621.3763    1.0019     1112.7172
      θ12[4]    0.0184    0.0178    0.0002   4717.9688   2635.9681    0.9996      694.4317


Quantiles

  parameters      2.5%     25.0%     50.0%     75.0%     97.5% 
      Symbol   Float64   Float64   Float64   Float64   Float64 

      θ11[1]    0.7030    0.7820    0.8175    0.8509    0.9022
      θ11[2]    0.0041    0.0176    0.0311    0.0496    0.1017
      θ11[3]    0.0552    0.0979    0.1165    0.1576    0.2111
      θ11[4]    0.0005    0.0050    0.0115    0.0261    0.0675
      θ21[1]    0.6576    0.7412    0.7827    0.8181    0.8740
      θ21[2]    0.0438    0.0804    0.1060    0.1358    0.2072
      θ21[3]    0.0004    0.0055    0.0119    0.0255    0.0657
      θ21[4]    0.0321    0.0649    0.0879    0.1127    0.1873
      θ22[1]    0.7464    0.8229    0.8557    0.8861    0.9317
      θ22[2]    0.0213    0.0487    0.0696    0.0948    0.1515
      θ22[3]    0.0111    0.0329    0.0496    0.0722    0.1187
      θ22[4]    0.0005    0.0052    0.0119    0.0262    0.0693
      θ12[1]    0.0821    0.1199    0.1631    0.1981    0.2728
      θ12[2]    0.2281    0.3053    0.2290    0.3950    0.4899
      θ12[3]    0.3252    0.4162    0.4644    0.5109    0.5982
      θ12[4]    0.0005    0.0053    0.0117    0.0265    0.0654
```

### Test CHSH Inequality

```julia 
pred_model2 = predict_distribution(;
    simulator = Θ -> compute_CHSH(; Θ...),
    model = model(; data2...),
    func = identity
)

post_preds2 = returned(pred_model2, chains2)
```

```julia
hpd(Chains(post_preds2[:]))
```

```julia
HPD

  parameters     lower     upper 
      Symbol   Float64   Float64 

     param_1    2.4000    3.1527
```


# Plot Posterior Distributions

```julia
histogram(
    post_preds1[:],
    norm = true,
    xlims = (0, 4),
    xlabel = "|z|",
    ylabel = "Density",
    label = "Classical",
    leg = :topright,
    grid = false,
    color = RGB(94 / 255, 51 / 255, 46 / 255),
    alpha = 0.9,
    dpi = 300
)

histogram!(
    post_preds2[:],
    norm = true,
    label = "Non-Classical",
    color = RGB(73 / 255, 46 / 255, 94 / 255),
    alpha = 0.9
)
vline!([2], color = :black, linewidth = 2, label = "CHSH Bounds")

vline!(
    [ 2 * √(2)],
    linestyle = :dash,
    color = :black,
    linewidth = 2,
    label = "Tsirelson Bounds"
)
```

![](assets/chsh_example.png)

# References

Busemeyer, J. R., & Wang, Z. (2018). Hilbert space multidimensional theory. Psychological Review, 115(4), 572.

Wang, Z., Solloway, T., Shiffrin, R. M., & Busemeyer, J. R. (2012). Context effects produced by question orders reveal quantum nature of human judgments. Proceedings of the National Academy of Sciences, 111(26), 9431-9436.