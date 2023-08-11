cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  antipsychotics-p13-quetiapine---primary:
    run: antipsychotics-p13-quetiapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  antipsychotics-p13-075ml---primary:
    run: antipsychotics-p13-075ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-quetiapine---primary/output
  antipsychotics-p13-haloperidol---primary:
    run: antipsychotics-p13-haloperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-075ml---primary/output
  antipsychotics-p13-fluphenazine---primary:
    run: antipsychotics-p13-fluphenazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-haloperidol---primary/output
  antipsychotics-p13-500mg---primary:
    run: antipsychotics-p13-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-fluphenazine---primary/output
  antipsychotics-p13-dolmatil---primary:
    run: antipsychotics-p13-dolmatil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-500mg---primary/output
  risperdal-antipsychotics-p13---primary:
    run: risperdal-antipsychotics-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-dolmatil---primary/output
  antipsychotics-p13-250microgram---primary:
    run: antipsychotics-p13-250microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: risperdal-antipsychotics-p13---primary/output
  antipsychotics-p13-risperidone---primary:
    run: antipsychotics-p13-risperidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-250microgram---primary/output
  antipsychotics-p13-thioridazine---primary:
    run: antipsychotics-p13-thioridazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-risperidone---primary/output
  antipsychotics-p13-concentrate---primary:
    run: antipsychotics-p13-concentrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-thioridazine---primary/output
  antipsychotics-p13-125mg---primary:
    run: antipsychotics-p13-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-concentrate---primary/output
  antipsychotics-p13-sparine---primary:
    run: antipsychotics-p13-sparine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-125mg---primary/output
  antipsychotics-p13-haldol---primary:
    run: antipsychotics-p13-haldol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-sparine---primary/output
  antipsychotics-p13-200mg---primary:
    run: antipsychotics-p13-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-haldol---primary/output
  antipsychotics-p13-remoxipride---primary:
    run: antipsychotics-p13-remoxipride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-200mg---primary/output
  antipsychotics-p13-975mg---primary:
    run: antipsychotics-p13-975mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-remoxipride---primary/output
  antipsychotics-p13-olanzapine---primary:
    run: antipsychotics-p13-olanzapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-975mg---primary/output
  antipsychotics-p13-sertindole---primary:
    run: antipsychotics-p13-sertindole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-olanzapine---primary/output
  antipsychotics-p13-zuclopenthixol---primary:
    run: antipsychotics-p13-zuclopenthixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-sertindole---primary/output
  antipsychotics-p13-stelazine---primary:
    run: antipsychotics-p13-stelazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-zuclopenthixol---primary/output
  antipsychotics-p13-clopixol---primary:
    run: antipsychotics-p13-clopixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-stelazine---primary/output
  antipsychotics-p13-droleptan---primary:
    run: antipsychotics-p13-droleptan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-clopixol---primary/output
  antipsychotics-p13-serenace---primary:
    run: antipsychotics-p13-serenace---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-droleptan---primary/output
  antipsychotics-p13-zyprexa---primary:
    run: antipsychotics-p13-zyprexa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-serenace---primary/output
  antipsychotics-p13-velotab---primary:
    run: antipsychotics-p13-velotab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-zyprexa---primary/output
  antipsychotics-p13-forte---primary:
    run: antipsychotics-p13-forte---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-velotab---primary/output
  antipsychotics-p13-clozaril---primary:
    run: antipsychotics-p13-clozaril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-forte---primary/output
  antipsychotics-p13-depixol---primary:
    run: antipsychotics-p13-depixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-clozaril---primary/output
  antipsychotics-p13-100mg---primary:
    run: antipsychotics-p13-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-depixol---primary/output
  antipsychotics-p13-375mg---primary:
    run: antipsychotics-p13-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-100mg---primary/output
  antipsychotics-p13-150mg---primary:
    run: antipsychotics-p13-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-375mg---primary/output
  antipsychotics-p13-flupentixol---primary:
    run: antipsychotics-p13-flupentixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-150mg---primary/output
  antipsychotics-p13-abilify---primary:
    run: antipsychotics-p13-abilify---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-flupentixol---primary/output
  antipsychotics-p13-tablet---primary:
    run: antipsychotics-p13-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-abilify---primary/output
  antipsychotics-p13-droperidol---primary:
    run: antipsychotics-p13-droperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-tablet---primary/output
  antipsychotics-p13-pericyazine---primary:
    run: antipsychotics-p13-pericyazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-droperidol---primary/output
  antipsychotics-p13-decanoate---primary:
    run: antipsychotics-p13-decanoate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-pericyazine---primary/output
  antipsychotics-p13-quicklet---primary:
    run: antipsychotics-p13-quicklet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-decanoate---primary/output
  antipsychotics-p13-roxiam---primary:
    run: antipsychotics-p13-roxiam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-quicklet---primary/output
  antipsychotics-p13-amitriptyline---primary:
    run: antipsychotics-p13-amitriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-roxiam---primary/output
  antipsychotics-p13-aripiprazole---primary:
    run: antipsychotics-p13-aripiprazole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-amitriptyline---primary/output
  solian-antipsychotics-p13---primary:
    run: solian-antipsychotics-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-aripiprazole---primary/output
  antipsychotics-p13-consta---primary:
    run: antipsychotics-p13-consta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: solian-antipsychotics-p13---primary/output
  antipsychotics-p13-enanthate---primary:
    run: antipsychotics-p13-enanthate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-consta---primary/output
  antipsychotics-p13-chloractil---primary:
    run: antipsychotics-p13-chloractil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-enanthate---primary/output
  antipsychotics-p13-zotepine---primary:
    run: antipsychotics-p13-zotepine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-chloractil---primary/output
  antipsychotics-p13-seroquel---primary:
    run: antipsychotics-p13-seroquel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-zotepine---primary/output
  antipsychotics-p13-trifluoperazine---primary:
    run: antipsychotics-p13-trifluoperazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-seroquel---primary/output
  antipsychotics-p13-suppository---primary:
    run: antipsychotics-p13-suppository---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-trifluoperazine---primary/output
  antipsychotics-p13-triperidol---primary:
    run: antipsychotics-p13-triperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-suppository---primary/output
  antipsychotics-p13-neulactil---primary:
    run: antipsychotics-p13-neulactil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-triperidol---primary/output
  antipsychotics-p13-denzapine---primary:
    run: antipsychotics-p13-denzapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-neulactil---primary/output
  antipsychotics-p13-sulpiride---primary:
    run: antipsychotics-p13-sulpiride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-denzapine---primary/output
  antipsychotics-p13-promazine---primary:
    run: antipsychotics-p13-promazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-sulpiride---primary/output
  antipsychotics-p13-400mg---primary:
    run: antipsychotics-p13-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-promazine---primary/output
  antipsychotics-p13-perphenazine---primary:
    run: antipsychotics-p13-perphenazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-400mg---primary/output
  antipsychotics-p13-300mg---primary:
    run: antipsychotics-p13-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-perphenazine---primary/output
  antipsychotics-p13-anquil---primary:
    run: antipsychotics-p13-anquil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-300mg---primary/output
  antipsychotics-p13-trifluperidol---primary:
    run: antipsychotics-p13-trifluperidol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-anquil---primary/output
  antipsychotics-p13-serdolect---primary:
    run: antipsychotics-p13-serdolect---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-trifluperidol---primary/output
  antipsychotics-p13-powder---primary:
    run: antipsychotics-p13-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-serdolect---primary/output
  antipsychotics-p13-tranylcypromine---primary:
    run: antipsychotics-p13-tranylcypromine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-powder---primary/output
  antipsychotics-p13-moditen---primary:
    run: antipsychotics-p13-moditen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-tranylcypromine---primary/output
  antipsychotics-p13-integrin---primary:
    run: antipsychotics-p13-integrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-moditen---primary/output
  antipsychotics-p13-levinan---primary:
    run: antipsychotics-p13-levinan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-integrin---primary/output
  dozic-antipsychotics-p13---primary:
    run: dozic-antipsychotics-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-levinan---primary/output
  antipsychotics-p13-levomepromazine---primary:
    run: antipsychotics-p13-levomepromazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: dozic-antipsychotics-p13---primary/output
  antipsychotics-p13-zoleptil---primary:
    run: antipsychotics-p13-zoleptil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-levomepromazine---primary/output
  antipsychotics-p13-acetate---primary:
    run: antipsychotics-p13-acetate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-zoleptil---primary/output
  antipsychotics-p13-acuphase---primary:
    run: antipsychotics-p13-acuphase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-acetate---primary/output
  antipsychotics-p13-liquid---primary:
    run: antipsychotics-p13-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-acuphase---primary/output
  antipsychotics-p13-modecate---primary:
    run: antipsychotics-p13-modecate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-liquid---primary/output
  antipsychotics-p13-amisulpride---primary:
    run: antipsychotics-p13-amisulpride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-modecate---primary/output
  antipsychotics-p13-piportil---primary:
    run: antipsychotics-p13-piportil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-amisulpride---primary/output
  antipsychotics-p13-paliperidone---primary:
    run: antipsychotics-p13-paliperidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-piportil---primary/output
  antipsychotics-p13-pipotiazine---primary:
    run: antipsychotics-p13-pipotiazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-paliperidone---primary/output
  antipsychotics-p13-modifiedrelease---primary:
    run: antipsychotics-p13-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-pipotiazine---primary/output
  antipsychotics-p13-clozapine---primary:
    run: antipsychotics-p13-clozapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-modifiedrelease---primary/output
  antipsychotics-p13-nozinan---primary:
    run: antipsychotics-p13-nozinan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-clozapine---primary/output
  antipsychotics-p13-embonate---primary:
    run: antipsychotics-p13-embonate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-nozinan---primary/output
  antipsychotics-p13-xeplion---primary:
    run: antipsychotics-p13-xeplion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-embonate---primary/output
  orodispersible-antipsychotics-p13---primary:
    run: orodispersible-antipsychotics-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-xeplion---primary/output
  sublingual-antipsychotics-p13---primary:
    run: sublingual-antipsychotics-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: orodispersible-antipsychotics-p13---primary/output
  antipsychotics-p13-zaponex---primary:
    run: antipsychotics-p13-zaponex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: sublingual-antipsychotics-p13---primary/output
  antipsychotics-p13-lyophilisate---primary:
    run: antipsychotics-p13-lyophilisate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-zaponex---primary/output
  antipsychotics-p13-sondate---primary:
    run: antipsychotics-p13-sondate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-lyophilisate---primary/output
  solvent-antipsychotics-p13---primary:
    run: solvent-antipsychotics-p13---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-sondate---primary/output
  antipsychotics-p13-psytixol---primary:
    run: antipsychotics-p13-psytixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: solvent-antipsychotics-p13---primary/output
  antipsychotics-p13-pimozide---primary:
    run: antipsychotics-p13-pimozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-psytixol---primary/output
  antipsychotics-p13-largactil---primary:
    run: antipsychotics-p13-largactil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-pimozide---primary/output
  antipsychotics-p13-tenprolide---primary:
    run: antipsychotics-p13-tenprolide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-largactil---primary/output
  antipsychotics-p13-fentazin---primary:
    run: antipsychotics-p13-fentazin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-tenprolide---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: antipsychotics-p13-fentazin---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
