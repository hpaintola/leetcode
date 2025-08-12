import pandas as pd

def changeDatatype(students: pd.DataFrame) -> pd.DataFrame:
    result = students.astype({'grade':int})
    return result