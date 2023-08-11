# S Jill Stocks, Evangelos Kontopantelis, Roger T Webb, Anthony J Avery, Alistair Burns, Darren M Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"1218","system":"gprdproduct"},{"code":"13600","system":"gprdproduct"},{"code":"14859","system":"gprdproduct"},{"code":"16434","system":"gprdproduct"},{"code":"18453","system":"gprdproduct"},{"code":"21339","system":"gprdproduct"},{"code":"22606","system":"gprdproduct"},{"code":"2656","system":"gprdproduct"},{"code":"2814","system":"gprdproduct"},{"code":"31175","system":"gprdproduct"},{"code":"31184","system":"gprdproduct"},{"code":"34668","system":"gprdproduct"},{"code":"34693","system":"gprdproduct"},{"code":"34905","system":"gprdproduct"},{"code":"35065","system":"gprdproduct"},{"code":"35530","system":"gprdproduct"},{"code":"41645","system":"gprdproduct"},{"code":"41970","system":"gprdproduct"},{"code":"41971","system":"gprdproduct"},{"code":"52001","system":"gprdproduct"},{"code":"5283","system":"gprdproduct"},{"code":"53552","system":"gprdproduct"},{"code":"55011","system":"gprdproduct"},{"code":"588","system":"gprdproduct"},{"code":"58821","system":"gprdproduct"},{"code":"59143","system":"gprdproduct"},{"code":"8311","system":"gprdproduct"},{"code":"9022","system":"gprdproduct"},{"code":"9347","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antipsychotics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antipsychotics-p13-125mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antipsychotics-p13-125mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antipsychotics-p13-125mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
