"small script to get the NEURON data into the correct csv format"

import pandas as pd

header = ["soma", "terminal", "target", "apic11"]
data = pd.read_csv("data.csv", delim_whitespace=True, skiprows= [0], names=header)
data.to_csv("cleaned_data.csv", sep=';', encoding='utf-8')
