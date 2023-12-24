import pandas as pd

data_frame = pd.read_csv('raw_data.csv', encoding='utf-8')

counts_by_institution = {}

def is_in_town(row: pd.Series) -> bool:
    institution_name = row['Учреждение 3']
    return institution_name.endswith('ГО') or institution_name.endswith('МР')

def main():
    for _, row in data_frame.iterrows():
        if is_in_town(row):
            institution_name = row['Учреждение 3']
            institution_name = institution_name.replace(
                {'ГО': 'городской округ', 'МР': 'район'}
            )

            cancer_cases_raw = row['05. Число впервые в жизни выявленных злокачественных новообразований - Всего']
            cancer_cases = float(cancer_cases_raw.replace(',', ''))
            counts_by_institution.setdefault(institution_name, 0)
            counts_by_institution[institution_name] += cancer_cases

    result_data_frame = pd.DataFrame(
        counts_by_institution.items(),
        columns=['name', 'count']
    )

    result_data_frame.to_csv('data.csv', index=False, encoding='utf-8')

if __name__ == '__main__':
    main()
