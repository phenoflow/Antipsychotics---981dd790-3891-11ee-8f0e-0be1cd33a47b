# S Jill Stocks, Evangelos Kontopantelis, Roger T Webb, Anthony J Avery, Alistair Burns, Darren M Ashcroft, 2023.

import sys, csv, re

codes = [{"code":"1245","system":"gprdproduct"},{"code":"1316","system":"gprdproduct"},{"code":"13338","system":"gprdproduct"},{"code":"14344","system":"gprdproduct"},{"code":"14717","system":"gprdproduct"},{"code":"17087","system":"gprdproduct"},{"code":"18024","system":"gprdproduct"},{"code":"18132","system":"gprdproduct"},{"code":"21125","system":"gprdproduct"},{"code":"21964","system":"gprdproduct"},{"code":"22609","system":"gprdproduct"},{"code":"22660","system":"gprdproduct"},{"code":"228","system":"gprdproduct"},{"code":"23034","system":"gprdproduct"},{"code":"2621","system":"gprdproduct"},{"code":"32051","system":"gprdproduct"},{"code":"3281","system":"gprdproduct"},{"code":"34272","system":"gprdproduct"},{"code":"34903","system":"gprdproduct"},{"code":"38262","system":"gprdproduct"},{"code":"38375","system":"gprdproduct"},{"code":"38540","system":"gprdproduct"},{"code":"41663","system":"gprdproduct"},{"code":"4234","system":"gprdproduct"},{"code":"42895","system":"gprdproduct"},{"code":"46705","system":"gprdproduct"},{"code":"47055","system":"gprdproduct"},{"code":"47098","system":"gprdproduct"},{"code":"47256","system":"gprdproduct"},{"code":"48077","system":"gprdproduct"},{"code":"49699","system":"gprdproduct"},{"code":"50214","system":"gprdproduct"},{"code":"53848","system":"gprdproduct"},{"code":"55848","system":"gprdproduct"},{"code":"5653","system":"gprdproduct"},{"code":"57114","system":"gprdproduct"},{"code":"57160","system":"gprdproduct"},{"code":"6412","system":"gprdproduct"},{"code":"6523","system":"gprdproduct"},{"code":"7436","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('antipsychotics-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["antipsychotics-p13-975mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["antipsychotics-p13-975mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["antipsychotics-p13-975mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
