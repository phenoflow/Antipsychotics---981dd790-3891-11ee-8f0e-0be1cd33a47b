# S Jill Stocks, Evangelos Kontopantelis, Roger T Webb, Anthony J Avery, Alistair Burns, Darren M Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"10565","system":"gprdproduct"},{"code":"10944","system":"gprdproduct"},{"code":"12073","system":"gprdproduct"},{"code":"12224","system":"gprdproduct"},{"code":"12340","system":"gprdproduct"},{"code":"1314","system":"gprdproduct"},{"code":"13311","system":"gprdproduct"},{"code":"14576","system":"gprdproduct"},{"code":"14767","system":"gprdproduct"},{"code":"15161","system":"gprdproduct"},{"code":"16489","system":"gprdproduct"},{"code":"18155","system":"gprdproduct"},{"code":"18197","system":"gprdproduct"},{"code":"2094","system":"gprdproduct"},{"code":"24270","system":"gprdproduct"},{"code":"25336","system":"gprdproduct"},{"code":"25653","system":"gprdproduct"},{"code":"30111","system":"gprdproduct"},{"code":"31171","system":"gprdproduct"},{"code":"31172","system":"gprdproduct"},{"code":"3226","system":"gprdproduct"},{"code":"3228","system":"gprdproduct"},{"code":"3348","system":"gprdproduct"},{"code":"34630","system":"gprdproduct"},{"code":"35235","system":"gprdproduct"},{"code":"35391","system":"gprdproduct"},{"code":"35445","system":"gprdproduct"},{"code":"35487","system":"gprdproduct"},{"code":"35684","system":"gprdproduct"},{"code":"35723","system":"gprdproduct"},{"code":"35787","system":"gprdproduct"},{"code":"35929","system":"gprdproduct"},{"code":"36101","system":"gprdproduct"},{"code":"3772","system":"gprdproduct"},{"code":"38885","system":"gprdproduct"},{"code":"38913","system":"gprdproduct"},{"code":"40586","system":"gprdproduct"},{"code":"41070","system":"gprdproduct"},{"code":"41714","system":"gprdproduct"},{"code":"41732","system":"gprdproduct"},{"code":"41995","system":"gprdproduct"},{"code":"42242","system":"gprdproduct"},{"code":"43654","system":"gprdproduct"},{"code":"45444","system":"gprdproduct"},{"code":"46224","system":"gprdproduct"},{"code":"47162","system":"gprdproduct"},{"code":"4876","system":"gprdproduct"},{"code":"51444","system":"gprdproduct"},{"code":"52940","system":"gprdproduct"},{"code":"57613","system":"gprdproduct"},{"code":"5762","system":"gprdproduct"},{"code":"58425","system":"gprdproduct"},{"code":"58703","system":"gprdproduct"},{"code":"59816","system":"gprdproduct"},{"code":"7514","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antipsychotics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antipsychotics-p13-500mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antipsychotics-p13-500mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antipsychotics-p13-500mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
