
import pandas as pd
import numpy as np

# average nominal and real wage in reais by year

df = pd.read_csv('data/minwage.tsv', sep='\t')

mu = df.groupby('year')[['reais_nominal', 'reais_real_inpc']].agg(
    reais_nominal=('reais_nominal', 'mean'),
    min_reais_nominal=('reais_nominal', 'min'),
    max_reais_nominal=('reais_nominal', 'max'),
    reais_real_inpc=('reais_real_inpc', 'mean'),
    min_reais_real_inpc=('reais_real_inpc', 'min'),
    max_reais_real_inpc=('reais_real_inpc', 'max')
)

# round values

mu['reais_nominal'] = mu['reais_nominal'].round(3)
mu['reais_real_inpc'] = mu['reais_real_inpc'].round(2)

# ignore nominal data before 1992 because these values require
# storing too many decimal places

mu.loc[
    1984:1991,
    ['reais_nominal', 'min_reais_nominal', 'max_reais_nominal']
] = np.nan

# save

mu.to_csv('data/avgwage.tsv', sep='\t')
