# ffposim simulation
# panmixic population; pairwise epistasis
# genetic diversity as mu vs as Ne


python2.7 pairwise_ffpopsim.py -i 10 -N 2000 -L 150 --mu 5e-5 --alpha 1.0 --rec .01 --sigma 5 --sample 50 --freq 0.0 --mode panmixic --gen 20000,1 --outfmt stats --p 0  > mut_vs_Ne.out
python2.7 pairwise_ffpopsim.py -i 200 -N 2000 -L 150 --mu 1e-5 --alpha 1.0 --rec .01 --sigma 5 --sample 50 --freq 0.0 --mode panmixic --gen 20000,1 --outfmt stats --p 0 | grep -v 'gen' >> mut_vs_Ne.out
python2.7 pairwise_ffpopsim.py -i 500 -N 2000 -L 150 --mu 5e-6 --alpha 1.0 --rec .01 --sigma 5 --sample 50 --freq 0.0 --mode panmixic --gen 20000,1 --outfmt stats --p 0 | grep -v 'gen' >> mut_vs_Ne.out
python2.7 pairwise_ffpopsim.py -i 200 -N 4000 -L 150 --mu 5e-6 --alpha 1.0 --rec .01 --sigma 5 --sample 50 --freq 0.0 --mode panmixic --gen 40000,1 --outfmt stats --p 0 | grep -v 'gen' >> mut_vs_Ne.out
python2.7 pairwise_ffpopsim.py -i 10 -N 20000 -L 150 --mu 5e-6 --alpha 1.0 --rec .01 --sigma 5 --sample 50 --freq 0.0 --mode panmixic --gen 200000,1 --outfmt stats --p 0 | grep -v 'gen' >> mut_vs_Ne.out
