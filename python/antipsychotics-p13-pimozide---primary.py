# S Jill Stocks, Evangelos Kontopantelis, Roger T Webb, Anthony J Avery, Alistair Burns, Darren M Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"5821","system":"gprdproduct"},{"code":"8637","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antipsychotics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antipsychotics-p13-pimozide---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antipsychotics-p13-pimozide---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antipsychotics-p13-pimozide---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)