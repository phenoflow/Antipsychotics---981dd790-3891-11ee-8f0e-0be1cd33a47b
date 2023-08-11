# S Jill Stocks, Evangelos Kontopantelis, Roger T Webb, Anthony J Avery, Alistair Burns, Darren M Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"10405","system":"gprdproduct"},{"code":"10434","system":"gprdproduct"},{"code":"10780","system":"gprdproduct"},{"code":"11213","system":"gprdproduct"},{"code":"11531","system":"gprdproduct"},{"code":"11938","system":"gprdproduct"},{"code":"12195","system":"gprdproduct"},{"code":"13145","system":"gprdproduct"},{"code":"14610","system":"gprdproduct"},{"code":"14987","system":"gprdproduct"},{"code":"15395","system":"gprdproduct"},{"code":"15418","system":"gprdproduct"},{"code":"15598","system":"gprdproduct"},{"code":"17379","system":"gprdproduct"},{"code":"17399","system":"gprdproduct"},{"code":"17634","system":"gprdproduct"},{"code":"18181","system":"gprdproduct"},{"code":"25909","system":"gprdproduct"},{"code":"2801","system":"gprdproduct"},{"code":"3227","system":"gprdproduct"},{"code":"3605","system":"gprdproduct"},{"code":"36771","system":"gprdproduct"},{"code":"37705","system":"gprdproduct"},{"code":"37871","system":"gprdproduct"},{"code":"38089","system":"gprdproduct"},{"code":"3952","system":"gprdproduct"},{"code":"40390","system":"gprdproduct"},{"code":"40779","system":"gprdproduct"},{"code":"40932","system":"gprdproduct"},{"code":"42816","system":"gprdproduct"},{"code":"44186","system":"gprdproduct"},{"code":"4434","system":"gprdproduct"},{"code":"45281","system":"gprdproduct"},{"code":"45810","system":"gprdproduct"},{"code":"45839","system":"gprdproduct"},{"code":"45880","system":"gprdproduct"},{"code":"46436","system":"gprdproduct"},{"code":"46556","system":"gprdproduct"},{"code":"46764","system":"gprdproduct"},{"code":"46871","system":"gprdproduct"},{"code":"46889","system":"gprdproduct"},{"code":"47013","system":"gprdproduct"},{"code":"47149","system":"gprdproduct"},{"code":"47361","system":"gprdproduct"},{"code":"47808","system":"gprdproduct"},{"code":"49207","system":"gprdproduct"},{"code":"49696","system":"gprdproduct"},{"code":"51178","system":"gprdproduct"},{"code":"51240","system":"gprdproduct"},{"code":"51558","system":"gprdproduct"},{"code":"5192","system":"gprdproduct"},{"code":"52050","system":"gprdproduct"},{"code":"52076","system":"gprdproduct"},{"code":"53649","system":"gprdproduct"},{"code":"53951","system":"gprdproduct"},{"code":"55625","system":"gprdproduct"},{"code":"55890","system":"gprdproduct"},{"code":"56215","system":"gprdproduct"},{"code":"56862","system":"gprdproduct"},{"code":"57270","system":"gprdproduct"},{"code":"57550","system":"gprdproduct"},{"code":"58067","system":"gprdproduct"},{"code":"60250","system":"gprdproduct"},{"code":"6134","system":"gprdproduct"},{"code":"6443","system":"gprdproduct"},{"code":"8519","system":"gprdproduct"},{"code":"8903","system":"gprdproduct"},{"code":"8985","system":"gprdproduct"},{"code":"9190","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antipsychotics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antipsychotics-p13-075ml---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antipsychotics-p13-075ml---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antipsychotics-p13-075ml---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
